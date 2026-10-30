"""Batch 8 promotion tests; no network, no private keys."""
from __future__ import annotations
import copy
import hashlib
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import asc_openapi as base
import asc_typed as v1
import asc_promote_queries as promote

FIXTURE = Path(__file__).resolve().parents[1] / "fixtures" / "typed-query-fixture.json"

class PromoteQueryTests(unittest.TestCase):
    def setUp(self):
        self.spec = json.loads(FIXTURE.read_text())
        self.meta = {"infoVersion": self.spec["info"]["version"], "jsonSHA256": "fixture", "sourceFileSHA256": "fixture"}

    def test_fixture_additive_overloads_and_query_models(self):
        swift, m = promote.prepare(self.spec, self.meta, None, False)
        self.assertEqual(m["existingEndpointCountEnhanced"], 2)
        self.assertEqual([x["parameterCount"] for x in m["integratedTypedQueryOverloads"]], [6, 1])

    def test_all_queries_are_non_lossy(self):
        swift, m = promote.prepare(self.spec, self.meta, None, False)
        self.assertIn('URLQueryItem(name: "fields[apps]"', swift)
        self.assertIn('URLQueryItem(name: "filter[name]"', swift)
        self.assertIn('URLQueryItem(name: "show"', swift)
        self.assertIn('queryItems: query.urlQueryItems()', swift)
        self.assertNotIn('public func ascTypedCreateAppStoreVersion', swift)
        self.assertTrue(m["rawQueryItemsCompatibility"])

    def test_deterministic(self):
        a, am = promote.prepare(self.spec, self.meta, None, False)
        b, bm = promote.prepare(copy.deepcopy(self.spec), self.meta, None, False)
        self.assertEqual(a, b)
        self.assertEqual(am, bm)

    def test_official_mode_requires_known_pins(self):
        with self.assertRaisesRegex(ValueError, "pin mismatch"):
            promote.prepare(self.spec, self.meta, None, True)

    def test_bad_parameter_shape_rejected(self):
        op = self.spec["paths"]["/v1/apps/{id}"]["get"]
        op.setdefault("parameters", []).append({"name": "invalid", "in": "query", "style": "deepObject", "schema": {"type": "object", "properties": {"x": {"type": "string"}}}})
        with self.assertRaisesRegex(ValueError, "unsupported"):
            promote.prepare(self.spec, self.meta, None, False)

    def test_detect_existing_model_drift(self):
        with tempfile.TemporaryDirectory() as d:
            repo = Path(d)
            dest = repo / "Sources/ASCAPIKit/ASCTypedGenerated"
            dest.mkdir(parents=True)
            for path, label, count in promote.GETS:
                (dest / f"ASCTyped{label}.swift").write_text(v1.generate_operation(self.spec, "GET", path, label, v1.Inspector(self.spec)))
            swift, _ = promote.prepare(self.spec, self.meta, repo, False)
            self.assertIn("ASCTypedGetAppQuery", swift)
            (dest / "ASCTypedGetApp.swift").write_text("// drift")
            with self.assertRaisesRegex(ValueError, "drifted"):
                promote.prepare(self.spec, self.meta, repo, False)

    def test_symlink_production_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            repo = Path(d)
            dest = repo / "Sources/ASCAPIKit/ASCTypedGenerated"
            dest.mkdir(parents=True)
            outside = repo / "not_prod"
            outside.write_text("// spoof")
            (dest / "ASCTypedGetApp.swift").symlink_to(outside)
            with self.assertRaisesRegex(ValueError, "symlinked"):
                promote.prepare(self.spec, self.meta, repo, False)

    def test_cli_refuses_existing_output(self):
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "exists"
            out.mkdir()
            self.assertEqual(promote.main(["--spec", str(FIXTURE), "--fixture-mode", "--out", str(out)]), 2)

    def test_cli_fixture_outputs_two_files(self):
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "new"
            self.assertEqual(promote.main(["--spec", str(FIXTURE), "--fixture-mode", "--out", str(out)]), 0)
            self.assertEqual({x.name for x in out.iterdir()}, {"ASCTypedQueriesV2.swift", "generation.json"})
            self.assertEqual(json.loads((out / "generation.json").read_text())["liveAppleVerified"], False)

if __name__ == "__main__":
    unittest.main()
