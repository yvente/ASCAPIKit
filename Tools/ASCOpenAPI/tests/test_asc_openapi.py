import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
import zipfile

TOOL = Path(__file__).resolve().parents[1] / "asc_openapi.py"
FIXTURE = Path(__file__).resolve().parents[1] / "fixtures" / "sample-openapi.json"
loader = importlib.util.spec_from_file_location("asc_openapi", TOOL)
mod = importlib.util.module_from_spec(loader)
loader.loader.exec_module(mod)


class OpenAPITests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.spec, self.meta = mod.read_spec(FIXTURE)
        self.catalog = mod.build_catalog(self.spec, self.meta)

    def test_index_counts_and_methods(self):
        self.assertEqual(self.catalog["operationCount"], 5)
        self.assertEqual(len(self.catalog["descriptorGenerationSkipped"]), 0)
        self.assertEqual(sum(x["deprecated"] for x in self.catalog["operations"]), 1)
        self.assertIn(("PATCH", "/v2/appAvailabilities/{id}"),
                      {mod.key(x) for x in self.catalog["operations"]})

    def test_zip_import_without_extraction(self):
        archive = self.root / "sample.zip"
        with zipfile.ZipFile(archive, "w") as zf:
            zf.write(FIXTURE, "openapi.oas.json")
        document, meta = mod.read_spec(archive, hashlib.sha256(archive.read_bytes()).hexdigest())
        self.assertEqual(document, self.spec)
        self.assertEqual(meta["jsonSHA256"], hashlib.sha256(FIXTURE.read_bytes()).hexdigest())
        self.assertFalse((self.root / "openapi.oas.json").exists())

    def test_zip_ambiguity_is_rejected(self):
        archive = self.root / "bad.zip"
        with zipfile.ZipFile(archive, "w") as zf:
            zf.writestr("a.json", FIXTURE.read_bytes())
            zf.writestr("b.json", FIXTURE.read_bytes())
        with self.assertRaises(ValueError):
            mod.read_spec(archive)

    def test_source_hash_mismatch_stops(self):
        with self.assertRaisesRegex(ValueError, "SHA-256"):
            mod.read_spec(FIXTURE, "0" * 64)

    def test_rejects_bad_schema(self):
        path = self.root / "bad.json"
        path.write_text('{"openapi":"2.0","paths":{}}')
        with self.assertRaises(ValueError):
            mod.read_spec(path)

    def test_catalog_is_deterministic(self):
        self.assertEqual(mod.canonical_json(self.catalog), mod.canonical_json(mod.build_catalog(self.spec, self.meta)))

    def test_diff_added_removed_changed(self):
        new = copy.deepcopy(self.catalog)
        new["operations"] = copy.deepcopy(self.catalog["operations"])
        before = new["operations"].pop(0)
        new["operations"][0]["contractSHA256"] = "0" * 64
        new["operations"].append({"method": "GET", "path": "/v1/new", "contractSHA256": "1" * 64})
        difference = mod.diff_catalog(self.catalog, new)
        self.assertEqual(difference["removed"], [{"method": before["method"], "path": before["path"]}])
        self.assertEqual(difference["added"], [{"method": "GET", "path": "/v1/new"}])
        self.assertEqual(len(difference["changedContracts"]), 1)

    def test_verified_manifest_requires_a_real_swift_symbol(self):
        manifest = self.root / "verified.json"
        manifest.write_text(json.dumps({"verifiedTypedOperations": [
            {"method": "GET", "path": "/v1/apps", "swiftSymbol": "ASCClient.listApps"}
        ]}))
        data = mod.load_verified(manifest, self.catalog)
        report = mod.render_report(self.catalog, data)
        self.assertIn("Verified typed Swift endpoints: **1**", report)
        self.assertIn("NOT proven missing", report)

    def test_manifest_rejects_nonexistent_operations(self):
        manifest = self.root / "verified.json"
        manifest.write_text(json.dumps({"verifiedTypedOperations": [
            {"method": "GET", "path": "/v9/fictional", "swiftSymbol": "ASCClient.fake"}
        ]}))
        with self.assertRaisesRegex(ValueError, "does not exist"):
            mod.load_verified(manifest, self.catalog)

    def test_generator_emits_five_descriptors(self):
        generated = self.root / "Swift"
        result = mod.make_swift(self.catalog, generated, per_file=2)
        self.assertEqual(result["descriptorCount"], 5)
        self.assertEqual(result["generatedSourceFiles"], 5)
        self.assertIn("public static let opAppsGetCollection", (generated / "ASCGeneratedOperations_000.swift").read_text())
        self.assertIn("byte == 126", (generated / "ASCOpenAPIOperation.swift").read_text())
        self.assertIn("NOT typed", json.dumps(result))
        with self.assertRaisesRegex(ValueError, "must be empty"):
            mod.make_swift(self.catalog, generated)

    def test_name_collision_gets_stable_suffix(self):
        c = copy.deepcopy(self.catalog)
        c["operations"][1]["operationId"] = c["operations"][0]["operationId"]
        result = mod.make_swift(c, self.root / "Swift")
        self.assertEqual(result["descriptorCount"], 5)
        generated = "\n".join(p.read_text() for p in (self.root / "Swift").glob("ASCGeneratedOperations_*.swift"))
        self.assertEqual(generated.count("public static let opAppsGetCollection"), 2)
        self.assertRegex(generated, r"opAppsGetCollection_[0-9a-f]{10}")

    def test_generate_skips_unsupported_http_method(self):
        c = copy.deepcopy(self.catalog)
        extra = dict(c["operations"][0])
        extra["method"] = "PUT"
        extra["path"] = "/v1/apps/{id}"
        c["operations"].append(extra)
        c["descriptorGenerationSkipped"].append({"method": "PUT", "path": "/v1/apps/{id}", "reason": "unsupportedPathOrMethod"})
        result = mod.make_swift(c, self.root / "Swift")
        self.assertEqual(result["descriptorCount"], 5)
        self.assertEqual(result["unrepresentableOperations"], [{"method": "PUT", "path": "/v1/apps/{id}"}])

    def test_path_level_parameter_change_is_detected(self):
        altered = copy.deepcopy(self.spec)
        altered["paths"]["/v1/apps"]["parameters"] = [
            {"name": "filter[platform]", "in": "query", "schema": {"type": "string"}}
        ]
        second = mod.build_catalog(altered, self.meta)
        changed = mod.diff_catalog(self.catalog, second)["changedContracts"]
        self.assertEqual(changed, [{"method": "GET", "path": "/v1/apps"},
                                   {"method": "POST", "path": "/v1/apps"}])

    def test_percent_path_cannot_generate_an_unsafe_descriptor(self):
        altered = copy.deepcopy(self.spec)
        altered["paths"]["/v1/unsafe%2Fpath"] = {"get": {"operationId": "bad"}}
        catalog = mod.build_catalog(altered, self.meta)
        self.assertIn({"method": "GET", "path": "/v1/unsafe%2Fpath",
                       "reason": "unsupportedPathOrMethod"},
                      catalog["descriptorGenerationSkipped"])

    def test_overly_large_zip_entry_rejected_before_extraction(self):
        archive = self.root / "huge.zip"
        with zipfile.ZipFile(archive, "w") as zf:
            zf.writestr("openapi.oas.json", b"{}")
        original = mod.MAX_JSON_BYTES
        try:
            mod.MAX_JSON_BYTES = 1
            with self.assertRaisesRegex(ValueError, "size limit"):
                mod.read_spec(archive)
        finally:
            mod.MAX_JSON_BYTES = original

    def test_cli_catalog_and_generate(self):
        self.assertEqual(mod.main(["catalog", "--spec", str(FIXTURE), "--out", str(self.root / "out")]), 0)
        self.assertEqual(mod.main(["generate", "--catalog", str(self.root / "out" / "catalog.json"), "--out", str(self.root / "gen")]), 0)
        self.assertTrue((self.root / "out" / "coverage.md").exists())


if __name__ == "__main__":
    unittest.main()
