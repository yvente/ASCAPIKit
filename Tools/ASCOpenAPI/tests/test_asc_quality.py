"""No network and no credentials. Schema truth is the source of fixture required keys."""
import copy
import json
import sys
import tempfile
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import asc_quality as q  # noqa: E402


class QualityTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.spec = json.loads((TOOLS / "fixtures/typed-fixture.json").read_text())

    def builder(self, spec=None):
        return q.FixtureBuilder(spec or self.spec)

    def test_all_five_generated(self):
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "new"
            meta = {"infoVersion": "4.5.1-fixture", "jsonSHA256": "fixture", "sourceFileSHA256": "fixture"}
            report = q.generate(self.spec, meta, out, official=False)
            self.assertEqual(report["count"], 5)
            self.assertEqual(len(list(out.glob("*.json"))), 6)

    def test_required_root_links_added_from_schema(self):
        spec = copy.deepcopy(self.spec)
        spec["components"]["schemas"]["AppResponse"]["required"].append("links")
        result = self.builder(spec).response(spec, "GET", "/v1/apps/{id}", "GetApp")
        self.assertIn("links", result)
        self.assertIsInstance(result["links"], dict)

    def test_missing_optional_links_not_added(self):
        result = self.builder().response(self.spec, "GET", "/v1/apps/{id}", "GetApp")
        self.assertNotIn("links", result)

    def test_required_nested_attributes(self):
        spec = copy.deepcopy(self.spec)
        spec["components"]["schemas"]["AppAttributes"]["required"] = ["name", "isOrEverWasMadeForKids"]
        output = self.builder(spec).response(spec, "GET", "/v1/apps/{id}", "GetApp")
        self.assertIn("name", output["data"]["attributes"])
        self.assertIs(output["data"]["attributes"]["isOrEverWasMadeForKids"], False)

    def test_required_field_without_properties_fails(self):
        with self.assertRaisesRegex(q.ContractFailure, "no schema"):
            self.builder().materialize({"type": "object", "required": ["ghost"], "properties": {}})

    def test_required_union_fails_loudly(self):
        with self.assertRaisesRegex(q.ContractFailure, "combinator"):
            self.builder().materialize({"oneOf": [{"type": "object"}, {"type": "string"}]})

    def test_required_array_min_items(self):
        value = self.builder().materialize({"type": "array", "minItems": 2, "items": {"type": "string"}})
        self.assertEqual(len(value), 2)

    def test_required_array_missing_items(self):
        with self.assertRaisesRegex(q.ContractFailure, "missing array items"):
            self.builder().materialize({"type": "array", "minItems": 1})

    def test_enum_value_chosen_exactly(self):
        self.assertEqual(self.builder().materialize({"type": "string", "enum": ["IOS", "MAC_OS"]}), "IOS")

    def test_circular_ref_is_rejected(self):
        s = copy.deepcopy(self.spec)
        s["components"]["schemas"]["Cycle"] = {"type": "object", "required": ["loop"], "properties": {"loop": {"$ref": "#/components/schemas/Cycle"}}}
        with self.assertRaises(q.ContractFailure):
            self.builder(s).materialize({"$ref": "#/components/schemas/Cycle"})

    def test_required_nullability_does_not_skip_key(self):
        result = self.builder().materialize({"type": "object", "required": ["x"], "properties": {"x": {"type": "string", "nullable": True}}})
        self.assertIn("x", result)

    def test_no_overwrite(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaisesRegex(q.ContractFailure, "exists"):
                q.generate(self.spec, {}, Path(d), official=False)

    def test_pin_wrong_sha_fails_before_writes(self):
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "not-created"
            with self.assertRaisesRegex(q.ContractFailure, "hash pin"):
                q.generate(self.spec, {"sourceFileSHA256": "bad"}, out, official=True)
            self.assertFalse(out.exists())

    def test_required_primitive_values(self):
        b = self.builder()
        self.assertEqual(b.materialize({"type": "integer", "minimum": 5}), 5)
        self.assertFalse(b.materialize({"type": "boolean"}))
        self.assertEqual(b.materialize({"type": "string", "format": "date"}), "2026-01-01")

    def test_reject_unexpected_min_items(self):
        with self.assertRaisesRegex(q.ContractFailure, "minItems"):
            self.builder().materialize({"type": "array", "minItems": 100, "items": {"type": "integer"}})

    def test_request_init_order_guard(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            (root / "ASCTypedUpdateAppStoreVersion.swift").write_text(
                "public struct ASCTypedUpdateAppStoreVersionRequestData: Encodable {\n"
                "public init(type: String, id: String, attributes: String? = nil) {}\n}\n")
            q.audit_request_initializers(root)
            (root / "ASCTypedUpdateAppStoreVersion.swift").write_text(
                "public struct ASCTypedUpdateAppStoreVersionRequestData: Encodable {\n"
                "public init(id: String, type: String) {}\n}\n")
            with self.assertRaisesRegex(q.ContractFailure, "type/id order"):
                q.audit_request_initializers(root)

    def test_response_required_data(self):
        s = copy.deepcopy(self.spec)
        s["components"]["schemas"]["AppResponse"]["required"].append("phantom")
        with self.assertRaisesRegex(q.ContractFailure, "required fields"):
            self.builder(s).response(s, "GET", "/v1/apps/{id}", "GetApp")


if __name__ == "__main__":
    unittest.main()
