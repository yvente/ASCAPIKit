"""Offline checks for the Batch5 pinned production-integration installer."""
import hashlib
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import asc_integrate as under_test
import asc_openapi as base
import asc_typed as typed

ROOT = Path(__file__).resolve().parents[1]
FIXTURE = ROOT / "fixtures" / "typed-fixture.json"


class Batch5IntegrationTests(unittest.TestCase):
    def test_pinned_commit(self):
        self.assertEqual(under_test.BASE_HEAD, "fce599cc1ebed8e9a84d099255b0cb0d9a3164a4")

    def test_pinned_loader_matches_repository(self):
        self.assertEqual(under_test.read_sha(ROOT / "asc_openapi.py"), under_test.LOADER_SHA)

    def test_pinned_generator_matches_repository(self):
        self.assertEqual(under_test.read_sha(ROOT / "asc_typed.py"), under_test.GENERATOR_SHA)

    def test_only_five_explicitly_approved_operations(self):
        approval = under_test.POLICY_ADDITION
        self.assertEqual(sum(1 for line in approval.splitlines() if line.startswith("- GET ")), 3)
        self.assertEqual(sum(1 for line in approval.splitlines() if line.startswith("- POST ")), 1)
        self.assertEqual(sum(1 for line in approval.splitlines() if line.startswith("- PATCH ")), 1)
        self.assertIn("not fully verified", approval)

    def test_policy_minimal_insertion(self):
        raw = ("# AGENTS.md\n## 13. Do not add typed endpoints casually\n\n" +
               under_test.POLICY_ANCHOR + "\n## 14. Models\n").encode()
        revised = under_test.inspect_policy(raw)
        self.assertIn(under_test.POLICY_ADDITION.encode(), revised)
        self.assertEqual(revised.count(under_test.POLICY_ANCHOR.encode()), 1)
        self.assertTrue(revised.startswith(b"# AGENTS.md\n"))
        self.assertTrue(revised.endswith(b"\n## 14. Models\n"))

    def test_policy_rejects_missing_anchor(self):
        with self.assertRaisesRegex(ValueError, "anchor"):
            under_test.inspect_policy(b"## 13. Do not add typed endpoints casually\n")

    def test_policy_rejects_duplicate_anchor(self):
        raw = ("## 13. Do not add typed endpoints casually\n" +
               under_test.POLICY_ANCHOR * 2).encode()
        with self.assertRaisesRegex(ValueError, "anchor"):
            under_test.inspect_policy(raw)

    def test_policy_rejects_second_install(self):
        raw = ("## 13. Do not add typed endpoints casually\n" +
               under_test.POLICY_ADDITION + under_test.POLICY_ANCHOR).encode()
        with self.assertRaisesRegex(ValueError, "anchor"):
            under_test.inspect_policy(raw)

    def test_package_destinations_fixed_and_unique(self):
        self.assertEqual(len(under_test.PACKAGE_FILES), 4)
        self.assertEqual(len(set(under_test.PACKAGE_FILES)), 4)
        self.assertTrue(all(".." not in Path(s).parts for s in under_test.PACKAGE_FILES))
        self.assertTrue(all(s.startswith(("Tools/ASCOpenAPI/", "Tests/ASCAPIKitTests/"))
                            for s in under_test.PACKAGE_FILES))

    def test_generated_file_set_is_fixed(self):
        self.assertEqual(len(under_test.SWIFT_FILES), 6)
        self.assertEqual(len(set(under_test.SWIFT_FILES)), 6)
        self.assertTrue(all(s.endswith(".swift") and "/" not in s for s in under_test.SWIFT_FILES))

    def test_zip_pin_has_expected_shape(self):
        self.assertEqual(len(under_test.SPEC_ZIP_SHA), 64)
        self.assertEqual(len(under_test.SPEC_JSON_SHA), 64)
        self.assertNotEqual(under_test.SPEC_ZIP_SHA, under_test.SPEC_JSON_SHA)

    def test_mock_fixture_still_generates_five_operations(self):
        spec, meta = base.read_spec(FIXTURE)
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "generated"
            manifest = typed.compile_preview(spec, meta, out, strict_json_sha=False)
            self.assertEqual(manifest["generated"], 5)
            self.assertEqual(manifest["unsupported"], 0)
            self.assertEqual(sorted(p.name for p in out.glob("*.swift")),
                             sorted(under_test.SWIFT_FILES))

    def test_manifest_warns_incomplete_schema(self):
        spec, meta = base.read_spec(FIXTURE)
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "generated"
            manifest = typed.compile_preview(spec, meta, out, strict_json_sha=False)
            self.assertFalse(manifest["fullSchemaCoverage"])
            self.assertTrue(manifest["rawQueryParameters"])
            self.assertEqual(manifest["verifiedTypedOperations"], 0)

    def test_sha256(self):
        self.assertEqual(under_test.sha256(b"hello"),
                         hashlib.sha256(b"hello").hexdigest())

    def test_cli_rejects_missing_git_checkout_without_touching_files(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            file = root / "not_a_repo.txt"
            file.write_text("keep", encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "Git checkout"):
                under_test.check_repo(root, root, root / "missing.zip")
            self.assertEqual(file.read_text(), "keep")


if __name__ == "__main__":
    unittest.main()
