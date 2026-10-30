#!/usr/bin/env python3
"""Strict, offline schema-driven fixtures for Batch 5's five typed operations.

The tool DOES NOT certify complete OpenAPI coverage or live Apple API behavior.
Official mode requires Batch 3's pinned Apple 4.5.1 ZIP, embedded JSON hash,
and info.version. Output is generated only under an explicit new output directory.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

import asc_openapi as base
import asc_typed as typed


class ContractFailure(ValueError):
    pass


FIXTURE_IDS = {"GetApp": "APP-1", "GetBuild": "BUILD-1", "GetAppStoreVersion": "V-1",
               "CreateAppStoreVersion": "V-new", "UpdateAppStoreVersion": "V-1"}
RESPONSE_NAMES = ("GetApp", "GetBuild", "GetAppStoreVersion", "CreateAppStoreVersion", "UpdateAppStoreVersion")


class FixtureBuilder:
    """Generate ONLY schema-valid minimum JSON values; fail on ambiguous required constructs."""

    def __init__(self, spec: dict):
        self.inspector = typed.Inspector(spec)

    def materialize(self, raw: object, path: str = "$", depth: int = 0) -> object:
        if depth > 32:
            raise ContractFailure(f"{path}: nested schema too deep (possible recursion)")
        try:
            s = self.inspector.deref(raw)
        except typed.UnsupportedSchema as exc:
            raise ContractFailure(f"{path}: {exc}") from exc
        if any(x in s for x in ("oneOf", "anyOf", "not")):
            raise ContractFailure(f"{path}: unsupported required union/combinator")
        enum = s.get("enum")
        if isinstance(enum, list) and enum:
            # Prefer nonnull values; preserve exact JSON scalar types.
            values = [x for x in enum if x is not None]
            if values:
                return values[0]
        if "const" in s:
            return s["const"]
        typ = s.get("type")
        if typ is None and ("properties" in s or "additionalProperties" in s):
            typ = "object"
        if typ == "object":
            props = s.get("properties", {})
            required = s.get("required", [])
            if not isinstance(props, dict) or not isinstance(required, list) or any(not isinstance(k, str) for k in required):
                raise ContractFailure(f"{path}: invalid object properties/required")
            if len(set(required)) != len(required):
                raise ContractFailure(f"{path}: duplicated required field")
            missing = set(required) - set(props)
            if missing:
                raise ContractFailure(f"{path}: required fields have no schema: {sorted(missing)}")
            obj = {}
            for key in sorted(required):
                obj[key] = self.materialize(props[key], f"{path}.{key}", depth + 1)
            return obj
        if typ == "array":
            if "items" not in s:
                raise ContractFailure(f"{path}: missing array items schema")
            minimum = s.get("minItems", 0)
            if not isinstance(minimum, int) or not 0 <= minimum <= 10:
                raise ContractFailure(f"{path}: unsupported minItems: {minimum!r}")
            return [self.materialize(s["items"], f"{path}[{i}]", depth + 1) for i in range(minimum)]
        if typ == "string":
            fmt = s.get("format", "")
            if fmt in ("date",):
                return "2026-01-01"
            if fmt in ("date-time",):
                return "2026-01-01T00:00:00Z"
            if fmt in ("uri", "url", "uri-reference"):
                return "https://example.test/fixture"
            if fmt in ("uuid",):
                return "00000000-0000-4000-8000-000000000000"
            minimum = s.get("minLength", 1)
            if not isinstance(minimum, int) or minimum < 0 or minimum > 500:
                raise ContractFailure(f"{path}: unsupported minLength")
            if path.endswith(".type"):
                return "appStoreVersions" if "AppStoreVersion" in path else "builds" if "GetBuild" in path else "apps"
            if path.endswith(".id"):
                return "fixture-id"
            if path.endswith(".self"):
                return "https://example.test/fixture"
            return "fixture" * max(1, (minimum + 6) // 7)
        if typ == "integer":
            return max(0, int(s.get("minimum", 0)))
        if typ == "number":
            return max(0, float(s.get("minimum", 0)))
        if typ == "boolean":
            return False
        raise ContractFailure(f"{path}: no safe fixture generator for type {typ!r}")

    def response(self, spec: dict, method: str, api_path: str, label: str) -> dict:
        op = spec["paths"][api_path][method.lower()]
        schema = typed.select_schema(op, "response", self.inspector)
        out = self.materialize(schema, "$" + label)
        if not isinstance(out, dict):
            raise ContractFailure(f"{label}: response was not an object")
        # Exercise all three levels of structure, including optional attributes.
        resource = self.inspector.object_schema(schema["properties"]["data"], label + ".data")
        if not isinstance(out.get("data"), dict):
            out["data"] = self.materialize(resource, "$" + label + ".data")
        data = out["data"]
        assert isinstance(data, dict)
        if "id" in resource.get("properties", {}):
            data["id"] = FIXTURE_IDS[label]
        if "type" in resource.get("properties", {}):
            raw_type = resource["properties"]["type"]
            type_value = self.materialize(raw_type, "$" + label + ".data.type")
            data["type"] = type_value
        if "attributes" in resource.get("properties", {}) and "attributes" not in data:
            data["attributes"] = self.materialize(resource["properties"]["attributes"], "$" + label + ".data.attributes")
        # Check mandatory fields have not silently disappeared.
        for key in schema.get("required", []):
            if key not in out:
                raise ContractFailure(f"{label}: required root key {key!r} missing")
        return out



def audit_request_initializers(source_dir: Path) -> None:
    """Prevent synthetic-schema declaration order from changing the audited Swift call signature.

    Batch 5's public update initializer requires `type` before `id`. This check
    detects regressions; it does not yet rewrite the generator itself.
    """
    path = source_dir / "ASCTypedUpdateAppStoreVersion.swift"
    text = path.read_text(encoding="utf-8")
    match = re.search(r"public\s+struct\s+ASCTypedUpdateAppStoreVersionRequestData\b(.*?)\n}", text, re.S)
    if match is None:
        raise ContractFailure("Missing generated update request data model")
    initializers = re.findall(r"public\s+init\s*\(([^)]*)\)", match.group(1), re.S)
    if len(initializers) != 1:
        raise ContractFailure("Expected exactly one update request data initializer")
    args = [part.strip().split(":", 1)[0] for part in initializers[0].split(",")]
    if len(args) < 2 or args[:2] != ["type", "id"]:
        raise ContractFailure(f"Update initializer changed audited type/id order: {args}")


def generate(spec: dict, meta: dict, out: Path, *, official: bool) -> dict:
    if official and (meta.get("infoVersion") != typed.EXPECTED_SPEC_VERSION
                     or meta.get("jsonSHA256") != typed.EXPECTED_JSON_SHA256
                     or meta.get("sourceFileSHA256") != typed.EXPECTED_ZIP_SHA256):
        raise ContractFailure("Official 4.5.1 version/hash pin mismatch")
    if out.exists() or out.is_symlink():
        raise ContractFailure("Output path already exists; refusing to overwrite")
    fixtures = {}
    builder = FixtureBuilder(spec)
    for method, path, name in typed.TARGETS:
        fixtures[name + ".json"] = builder.response(spec, method, path, name)
    # Validate the init-order invariant without depending on JSON property ordering.
    # This is a regression gate, not a public API signature rewrite.
    report = {"formatVersion": 1, "spec": meta, "responses": list(fixtures),
              "count": len(fixtures), "schemaDerived": True,
              "liveAppleVerified": False, "fullSchemaCoverage": False}
    out.mkdir(parents=True)
    for name, payload in fixtures.items():
        (out / name).write_text(json.dumps(payload, indent=2, ensure_ascii=False, sort_keys=True) + "\n", encoding="utf-8")
    (out / "quality.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    return report


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--spec", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--expected-sha256", default=None)
    parser.add_argument("--fixture-mode", action="store_true")
    parser.add_argument("--production-dir", type=Path, help="Optional Batch 5 generated sources to audit")
    args = parser.parse_args(argv)
    try:
        if not args.fixture_mode and args.expected_sha256 != typed.EXPECTED_ZIP_SHA256:
            raise ContractFailure("Official mode requires exact pinned 4.5.1 ZIP SHA-256")
        if args.production_dir is not None:
            audit_request_initializers(args.production_dir)
        spec, meta = base.read_spec(args.spec, args.expected_sha256)
        report = generate(spec, meta, args.out, official=not args.fixture_mode)
        print("BATCH6_SCHEMA_FIXTURES_OK", report["count"])
        return 0
    except (OSError, ValueError, KeyError, TypeError, typed.UnsupportedSchema) as exc:
        print("ERROR: " + str(exc), file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
