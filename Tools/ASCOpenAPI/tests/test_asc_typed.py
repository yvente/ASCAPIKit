import copy
import hashlib
import json
import tempfile
import unittest
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import asc_openapi as base
import asc_typed as typed

FIXTURE = Path(__file__).resolve().parents[1] / "fixtures" / "typed-fixture.json"


class TypedPreviewTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.spec, self.meta = base.read_spec(FIXTURE)

    def run_preview(self, name="preview"):
        out = self.root / name
        result = typed.compile_preview(self.spec, self.meta, out, strict_json_sha=False)
        return out, result

    def test_generates_five_methods_and_six_source_files(self):
        out, manifest = self.run_preview()
        self.assertEqual(manifest["generated"], 5)
        self.assertEqual(manifest["unsupported"], 0)
        self.assertEqual(len(list(out.glob("*.swift"))), 6)
        self.assertEqual(manifest["verifiedTypedOperations"], 0)

    def test_source_models_use_typed_scalar_fields(self):
        out, _ = self.run_preview()
        text = (out / "ASCTypedGetApp.swift").read_text()
        self.assertIn("public var name: String?", text)
        self.assertIn("public var isOrEverWasMadeForKids: Bool?", text)
        self.assertIn("public let id: String", text)
        self.assertIn("public let data: ASCTypedGetAppResource", text)

    def test_opaque_relationships_and_included_are_audited(self):
        _, data = self.run_preview()
        paths = [x["field"] for x in data["jsonBackedFields"]]
        self.assertIn("GetApp.data.relationships", paths)
        self.assertIn("GetApp.included[]", paths)
        self.assertFalse(data["fullSchemaCoverage"])
        self.assertTrue(data["rawQueryParameters"])

    def test_request_contains_constructible_typed_attributes(self):
        out, _ = self.run_preview()
        body = (out / "ASCTypedCreateAppStoreVersion.swift").read_text()
        self.assertIn("public init(platform: String, versionString: String, copyright: String? = nil)", body)
        self.assertIn("relationships: ASCJSONValue", body)
        self.assertIn("public func ascTypedCreateAppStoreVersion", body)
        self.assertIn("requestDecoded(method: .post", body)

    def test_update_request_has_id_and_optional_attributes(self):
        out, _ = self.run_preview()
        text = (out / "ASCTypedUpdateAppStoreVersion.swift").read_text()
        self.assertIn("public var id: String", text)
        self.assertIn("public var attributes: ASCTypedUpdateAppStoreVersionRequestAttributes?", text)
        self.assertIn("requestDecoded(method: .patch", text)

    def test_swift_path_has_prohibited_separator_validation(self):
        out, _ = self.run_preview()
        text = (out / "ASCTypedPath.swift").read_text()
        self.assertIn('value != ".."', text)
        self.assertIn('byte == 126', text)
        self.assertIn('value.utf8.count <= 512', text)

    def test_deterministic_output(self):
        a, _ = self.run_preview("a")
        b, _ = self.run_preview("b")
        self.assertEqual({p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in a.iterdir()},
                         {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in b.iterdir()})

    def test_reject_overwrite(self):
        self.run_preview()
        with self.assertRaisesRegex(ValueError, "already exists"):
            self.run_preview()

    def test_missing_endpoint_prevents_all_outputs(self):
        del self.spec["paths"]["/v1/builds/{id}"]
        out = self.root / "preview"
        with self.assertRaisesRegex(typed.UnsupportedSchema, "Missing target operation GET /v1/builds"):
            typed.compile_preview(self.spec, self.meta, out, strict_json_sha=False)
        self.assertFalse(out.exists())

    def test_malformed_resource_prevents_all_outputs(self):
        self.spec["components"]["schemas"]["Build"]["properties"].pop("attributes")
        out = self.root / "preview"
        with self.assertRaisesRegex(typed.UnsupportedSchema, "resource has no attributes"):
            typed.compile_preview(self.spec, self.meta, out, strict_json_sha=False)
        self.assertFalse(out.exists())

    def test_dangling_ref_rejected(self):
        insp = typed.Inspector(self.spec)
        with self.assertRaisesRegex(typed.UnsupportedSchema, "Dangling"):
            insp.deref({"$ref": "#/components/schemas/DoesNotExist"})

    def test_circular_ref_rejected(self):
        spec = copy.deepcopy(self.spec)
        spec["components"]["schemas"]["Cycle"] = {"$ref":"#/components/schemas/Cycle"}
        with self.assertRaisesRegex(typed.UnsupportedSchema, "Circular"):
            typed.Inspector(spec).deref({"$ref": "#/components/schemas/Cycle"})

    def test_allof_merges_required(self):
        insp = typed.Inspector(self.spec)
        x = insp.deref({"allOf": [{"type":"object","properties":{"a":{"type":"string"}},"required":["a"]},
                                  {"type":"object","properties":{"b":{"type":"boolean"}},"required":["b"]}]})
        self.assertEqual(x["required"], ["a", "b"])
        self.assertEqual(sorted(x["properties"]), ["a", "b"])

    def test_allof_conflict_rejected(self):
        insp = typed.Inspector(self.spec)
        with self.assertRaisesRegex(typed.UnsupportedSchema, "Conflicting"):
            insp.deref({"allOf":[{"properties":{"a":{"type":"string"}}},
                                   {"properties":{"a":{"type":"integer"}}}]})

    def test_swift_keyword_escaped(self):
        self.assertEqual(typed.swift_property("default"), "`default`")
        self.assertEqual(typed.swift_property("something-here"), "something_here")

    def test_scalar_array_types(self):
        insp = typed.Inspector(self.spec)
        self.assertEqual(insp.field_type({"type":"array", "items":{"type":"integer"}}, "list"), "[Int64]")
        self.assertEqual(insp.field_type({"type":"number"}, "amount"), "Decimal")
        self.assertEqual(insp.field_type({"type":"string", "enum":["A", "B"]}, "enum"), "String")

    def test_official_version_and_json_hash_are_required(self):
        with self.assertRaisesRegex(typed.UnsupportedSchema, "info.version 4.5.1"):
            typed.compile_preview(self.spec, self.meta, self.root / "preview", strict_json_sha=True)
        self.assertFalse((self.root / "preview").exists())

    def test_cli_requires_hash_for_official_mode(self):
        result = typed.main(["--spec", str(FIXTURE), "--out", str(self.root / "preview")])
        self.assertEqual(result, 2)
        self.assertFalse((self.root / "preview").exists())

    def test_cli_fixture_mode_succeeds(self):
        result = typed.main(["--spec", str(FIXTURE), "--out", str(self.root / "preview"), "--fixture-mode"])
        self.assertEqual(result, 0)
        self.assertTrue((self.root / "preview" / "generation.json").is_file())

    def test_unsupported_oneof_json_backed_visible(self):
        insp = typed.Inspector(self.spec)
        self.assertEqual(insp.field_type({"oneOf": [{"type":"string"}, {"type":"integer"}]}, "x"), "ASCJSONValue")
        self.assertEqual(insp.json_fields[0]["reason"], "polymorphic/unsupported combinator")


if __name__ == "__main__":
    unittest.main()
