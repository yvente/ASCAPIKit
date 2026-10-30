"""Batch 7: offline generator contract tests; no network and no secrets."""
import copy
import hashlib
import json
import sys
import tempfile
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import asc_typed_v2 as typed  # noqa: E402
import asc_openapi as base  # noqa: E402

FIXTURE = TOOLS / "fixtures/typed-query-fixture.json"


class QueryGenerationTests(unittest.TestCase):
    def setUp(self):
        self.spec, self.meta = base.read_spec(FIXTURE)
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.out = Path(self.tmp.name) / "output"

    def generate(self):
        return typed.compile_preview(self.spec, self.meta, self.out, strict_json_sha=False)

    def params(self):
        return self.spec["paths"]["/v1/apps/{id}"]["get"]["parameters"]

    def test_generates_typed_query_without_removing_legacy_overload(self):
        result = self.generate()
        swift = (self.out / "ASCTypedGetApp.swift").read_text()
        self.assertIn("public struct ASCTypedGetAppQuery: Sendable", swift)
        self.assertIn("ascTypedGetApp(id: String, queryItems: [URLQueryItem] = [])", swift)
        self.assertIn("ascTypedGetApp(id: String, query: ASCTypedGetAppQuery)", swift)
        self.assertEqual(result["generated"], 5)
        self.assertTrue(result["rawQueryParameters"])  # deprecated overload remains available
        self.assertIn("typedQueryOverloads", result)
        self.assertEqual(len(result["typedQueryOverloads"]), 3)

    def test_query_field_names_and_swift_types(self):
        self.generate()
        text = (self.out / "ASCTypedGetApp.swift").read_text()
        for declaration in ("fields_apps_: [String]?", "filter_name_: String?", "include: [String]?",
                            "limit: Int64?", "price: Decimal?", "show: Bool?"):
            self.assertIn(declaration, text)
        self.assertIn('name: "fields[apps]"', text)
        self.assertIn('name: "filter[name]"', text)
        self.assertIn('joined(separator: ",")', text)
        self.assertIn('result.append(contentsOf: value.map', text)
        self.assertIn('value: (value ? "true" : "false")', text)

    def test_path_query_param_operation_override(self):
        insp = typed.Inspector(self.spec)
        result = typed.query_parameter_entries(self.spec, "GET", "/v1/apps/{id}", insp)
        self.assertEqual(len(result), 6)
        self.assertEqual(sum(x["name"] == "fields[apps]" for x in result), 1)

    def test_stable_type_then_id_when_schema_reorders(self):
        original = self.generate()
        initial = (self.out / "ASCTypedUpdateAppStoreVersion.swift").read_text()
        with tempfile.TemporaryDirectory() as temp:
            spec = copy.deepcopy(self.spec)
            target = spec["components"]["schemas"]["AppStoreVersionUpdateRequest"]["properties"]["data"]
            target["properties"] = dict(reversed(list(target["properties"].items())))
            other = Path(temp) / "other"
            typed.compile_preview(spec, self.meta, other, strict_json_sha=False)
            revised = (other / "ASCTypedUpdateAppStoreVersion.swift").read_text()
        self.assertIn("public init(type: String, id: String", initial)
        import re
        init_pattern = r"public init\(type: String, id: String[^\n]*"
        self.assertEqual(re.search(init_pattern, initial).group(0), re.search(init_pattern, revised).group(0))
        self.assertEqual(original["generated"], 5)

    def test_required_query_has_nonoptional_initializer(self):
        next(x for x in self.params() if x["name"] == "limit")["required"] = True
        self.generate()
        text = (self.out / "ASCTypedGetApp.swift").read_text()
        self.assertIn("public var limit: Int64", text)
        self.assertIn("public init(limit: Int64,", text)

    def test_reject_unsupported_deep_object_without_outputs(self):
        self.params().append({"name":"filter[complex]", "in":"query", "style":"deepObject", "schema":{"type":"object", "properties":{"x":{"type":"string"}}}})
        with self.assertRaisesRegex(typed.UnsupportedSchema, "unsupported parameter style"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_reject_unsupported_heterogeneous_query_without_outputs(self):
        self.params().append({"name":"options", "in":"query", "schema":{"oneOf":[{"type":"string"},{"type":"integer"}]}})
        with self.assertRaisesRegex(typed.UnsupportedSchema, "unsupported query item type"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_reject_name_collision_without_outputs(self):
        self.params().append({"name":"fields-apps-", "in":"query", "schema":{"type":"string"}})
        with self.assertRaisesRegex(typed.UnsupportedSchema, "collision"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_reject_duplicate_query_without_outputs(self):
        self.params().append(copy.deepcopy(self.params()[0]))
        with self.assertRaisesRegex(typed.UnsupportedSchema, "duplicate parameter"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_reject_allow_reserved_without_outputs(self):
        self.params()[2]["allowReserved"] = True
        with self.assertRaisesRegex(typed.UnsupportedSchema, "allowReserved"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_reject_param_content_without_outputs(self):
        self.params().append({"name":"complex", "in":"query", "content":{"application/json":{"schema":{"type":"object"}}}})
        with self.assertRaisesRegex(typed.UnsupportedSchema, "content/schema"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_non_get_query_does_not_get_dropped(self):
        post = self.spec["paths"]["/v1/appStoreVersions"]["post"]
        post["parameters"] = [{"name": "filter", "in": "query", "schema": {"type": "string"}}]
        with self.assertRaisesRegex(typed.UnsupportedSchema, "not yet generated"):
            self.generate()
        self.assertFalse(self.out.exists())

    def test_component_parameter_ref(self):
        self.spec["components"]["parameters"] = {"ASCPage": {"in":"query", "name":"page", "schema":{"type":"integer"}}}
        self.params().append({"$ref":"#/components/parameters/ASCPage"})
        self.generate()
        self.assertIn("public var page: Int64?", (self.out / "ASCTypedGetApp.swift").read_text())

    def test_produces_identical_hashes_on_repeat(self):
        self.generate()
        before = {x.name: hashlib.sha256(x.read_bytes()).hexdigest() for x in self.out.iterdir()}
        other = self.out.parent / "other"
        typed.compile_preview(self.spec, self.meta, other, strict_json_sha=False)
        self.assertEqual(before, {x.name: hashlib.sha256(x.read_bytes()).hexdigest() for x in other.iterdir()})

    def test_query_manifest_matches_wire_names(self):
        manifest = self.generate()
        queries = manifest["typedQueryOverloads"]
        get_app = next(x for x in queries if x["path"] == "/v1/apps/{id}")
        self.assertEqual({x["name"] for x in get_app["parameters"]},
                         {"fields[apps]", "filter[name]", "include", "limit", "price", "show"})
        self.assertFalse(manifest["fullSchemaCoverage"])
        self.assertEqual(manifest["verifiedTypedOperations"], 0)

    def test_response_data_still_decodable(self):
        self.generate()
        text = (self.out / "ASCTypedGetApp.swift").read_text()
        self.assertIn("public let data: ASCTypedGetAppResource", text)
        self.assertIn("Decodable, Sendable", text)


if __name__ == "__main__":
    unittest.main()
