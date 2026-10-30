import json
import sys
import tempfile
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import asc_catalog_codegen as module


class CatalogGeneratorTests(unittest.TestCase):
    def setUp(self):
        self.old_count = module.EXPECTED_COUNT
        self.old_pin = module.JSON_PIN
        module.EXPECTED_COUNT = 6
        module.JSON_PIN = "fixture-json-hash"

    def tearDown(self):
        module.EXPECTED_COUNT = self.old_count
        module.JSON_PIN = self.old_pin

    def fixture(self):
        return {
            "openapi": "3.0.1", "info": {"version": "4.5.1"},
            "components": {"parameters": {
                "identifier": {"name": "id", "in": "path", "required": True, "schema": {"type": "string"}},
            }, "requestBodies": {}, "responses": {}},
            "paths": {
                "/v1/apps/{id}": {
                    "parameters": [{"$ref": "#/components/parameters/identifier"}],
                    "get": {"operationId": "apps_getInstance", "parameters": [
                        {"name": "include", "in": "query", "schema": {"type": "array", "items": {"type": "string"}}}
                    ], "responses": {"200": {"content": {"application/json": {}}}}},
                    "patch": {"operationId": "apps_updateInstance", "requestBody": {
                        "required": True, "content": {"application/json": {}}},
                        "responses": {"200": {"content": {"application/json": {}}}}},
                    "delete": {"operationId": "apps_deleteInstance", "responses": {"204": {"description": "none"}}},
                },
                "/v1/salesReports": {
                    "get": {"operationId": "sales_getReport", "parameters": [
                        {"name": "filter[vendorNumber]", "in": "query", "required": True}
                    ], "responses": {"200": {"content": {"application/a-gzip": {}}}}}
                },
                "/v1/buildUploads": {
                    "post": {"operationId": "buildUploads_create", "requestBody": {
                        "required": True, "content": {"application/octet-stream": {}}},
                        "responses": {"201": {"content": {"application/json": {}}}}}
                },
                "/v1/strange/{id}": {
                    "parameters": [{"$ref": "#/components/parameters/identifier"}],
                    "get": {"operationId": "strange_get", "parameters": [
                        {"name": "X-Required", "in": "header", "required": True}
                    ], "responses": {"200": {"content": {"application/json": {}}}}}
                }
            }
        }

    def meta(self):
        return {"sourceFileSHA256": "fixture-zip", "jsonSHA256": "fixture-json-hash", "infoVersion": "4.5.1"}

    def test_catalog_generates_all_named_wrappers(self):
        with tempfile.TemporaryDirectory() as td:
            report = module.generate(self.fixture(), self.meta(), Path(td) / "out")
            self.assertEqual(report["officialOperations"], 6)
            self.assertEqual(report["generatedNamedOperations"], 6)
            files = list((Path(td) / "out/swift").glob("*.swift"))
            self.assertGreaterEqual(len(files), 3)
            combined = "\n".join(p.read_text() for p in files)
            self.assertEqual(combined.count("public func ascGenerated_"), 6)
            self.assertIn("application/a-gzip", combined)
            self.assertIn("application/octet-stream", combined)

    def test_markdown_without_blockers_has_no_blank_line_at_eof(self):
        fixture = self.fixture()
        # The official 4.5.1 case has zero transport blockers.
        fixture["paths"]["/v1/strange/{id}"]["get"]["parameters"][0]["required"] = False
        with tempfile.TemporaryDirectory() as td:
            out = Path(td) / "out"
            report = module.generate(fixture, self.meta(), out)
            self.assertEqual(report["transportBlocked"], 0)
            markdown = (out / "coverage.md").read_bytes()
            self.assertTrue(markdown.endswith(b"\n"))
            self.assertFalse(markdown.endswith(b"\n\n"))

    def test_explicit_blocker_on_required_custom_header(self):
        with tempfile.TemporaryDirectory() as td:
            report = module.generate(self.fixture(), self.meta(), Path(td) / "out")
            self.assertEqual(report["transportBlocked"], 1)
            self.assertEqual(report["genericTransportCallable"], 5)
            self.assertIn("required custom header", report["operations"][-1]["transportBlocker"])

    def test_operation_overrides_query(self):
        item = {"parameters": [{"name": "q", "in": "query", "required": False}]}
        op = {"parameters": [{"name": "q", "in": "query", "required": True}]}
        result = module.parameters_for(self.fixture(), item, op)
        self.assertEqual(result[0]["required"], True)

    def test_rejects_unknown_reference(self):
        with self.assertRaises(ValueError):
            module.deref(self.fixture(), {"$ref": "#/components/parameters/absent"})

    def test_refuses_existing_generated_output(self):
        with tempfile.TemporaryDirectory() as td:
            path = Path(td) / "out"
            path.mkdir()
            (path / "something").write_text("no overwrite")
            with self.assertRaises(ValueError):
                module.generate(self.fixture(), self.meta(), path)

    def test_rejects_wrong_version(self):
        with tempfile.TemporaryDirectory() as td:
            meta = self.meta()
            meta["infoVersion"] = "4.5.0"
            with self.assertRaises(ValueError):
                module.generate(self.fixture(), meta, Path(td) / "out")

    def test_method_and_path_uniqueness(self):
        with tempfile.TemporaryDirectory() as td:
            report = module.generate(self.fixture(), self.meta(), Path(td) / "out")
            self.assertEqual(6, len({x["symbol"] for x in report["operations"]}))
            self.assertEqual(6, len({(x["method"], x["path"]) for x in report["operations"]}))

    def test_invalid_path_has_explicit_blocker(self):
        f = self.fixture()
        f["paths"]["/v1/a/../b"] = {"get": {"responses": {}}}
        module.EXPECTED_COUNT = 7
        with tempfile.TemporaryDirectory() as td:
            report = module.generate(f, self.meta(), Path(td) / "out")
            b = [x for x in report["operations"] if x["path"] == "/v1/a/../b"]
            self.assertEqual(len(b), 1)
            self.assertIn("unsupported literal", b[0]["transportBlocker"])


if __name__ == "__main__":
    unittest.main()
