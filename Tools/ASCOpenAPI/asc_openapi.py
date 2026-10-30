#!/usr/bin/env python3
"""Offline App Store Connect OpenAPI catalog, diff and Swift descriptor generator.

No third-party dependencies. No network, credentials, Git changes or subprocesses.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
import zipfile
from collections import Counter
from pathlib import Path

METHODS = ("get", "post", "patch", "put", "delete", "head", "options", "trace")
SWIFT_METHODS = {"get", "post", "patch", "delete"}
MAX_JSON_BYTES = 64 * 1024 * 1024
PATH_RE = re.compile(r"^/v[1-9][0-9]*/(?:[A-Za-z0-9._~-]+|\{[A-Za-z][A-Za-z0-9_]*\})(?:/(?:[A-Za-z0-9._~-]+|\{[A-Za-z][A-Za-z0-9_]*\}))*$")
PARAM_RE = re.compile(r"\{([A-Za-z][A-Za-z0-9_]*)\}")
IDENT_RE = re.compile(r"[^A-Za-z0-9]+")


def canonical_json(obj: object) -> bytes:
    return (json.dumps(obj, sort_keys=True, ensure_ascii=False, indent=2) + "\n").encode("utf-8")


def write_json(path: Path, obj: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(canonical_json(obj))


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def read_spec(path: Path, expected_sha256: str | None = None) -> tuple[dict, dict]:
    """Read JSON or Apple ZIP without extraction; reject ambiguous/massive archives."""
    raw = path.read_bytes()
    source_sha256 = sha256(raw)
    if expected_sha256 is not None and source_sha256.lower() != expected_sha256.lower():
        raise ValueError("Source SHA-256 mismatch")
    if zipfile.is_zipfile(path):
        with zipfile.ZipFile(path) as zf:
            candidates = [i for i in zf.infolist()
                          if not i.is_dir() and i.filename.lower().endswith(".json")
                          and not i.filename.startswith("__MACOSX/")]
            # Apple usually publishes one openapi.oas.json. Never guess between files.
            if len(candidates) != 1:
                raise ValueError(f"Expected one OpenAPI JSON entry, found {len(candidates)}")
            info = candidates[0]
            if info.file_size > MAX_JSON_BYTES:
                raise ValueError("OpenAPI JSON exceeds size limit")
            with zf.open(info) as fd:
                payload = fd.read(MAX_JSON_BYTES + 1)
            if len(payload) > MAX_JSON_BYTES:
                raise ValueError("OpenAPI JSON exceeds size limit")
    else:
        if len(raw) > MAX_JSON_BYTES:
            raise ValueError("OpenAPI JSON exceeds size limit")
        payload = raw
    data = json.loads(payload)
    if not isinstance(data, dict) or not isinstance(data.get("paths"), dict):
        raise ValueError("Missing OpenAPI paths object")
    version = data.get("openapi", "")
    if not isinstance(version, str) or not version.startswith("3."):
        raise ValueError("Expected an OpenAPI 3.x document")
    metadata = {"sourceFileSHA256": source_sha256, "jsonSHA256": sha256(payload),
                "openapi": version, "infoVersion": str(data.get("info", {}).get("version", "unknown"))}
    return data, metadata


def clean_operation(method: str, path: str, op: dict, path_parameters: object = None) -> dict:
    tags = op.get("tags") or []
    if not isinstance(tags, list):
        tags = []
    # Fingerprint request/response contract references AND inline schemas, not prose.
    contract = {"pathParameters": path_parameters or [], "operationParameters": op.get("parameters", []), "requestBody": op.get("requestBody"),
                "responses": op.get("responses", {}), "security": op.get("security"),
                "deprecated": bool(op.get("deprecated", False))}
    return {"method": method.upper(), "path": path,
            "operationId": str(op.get("operationId") or ""),
            "tags": sorted(str(tag) for tag in tags),
            "deprecated": bool(op.get("deprecated", False)),
            "contractSHA256": sha256(canonical_json(contract))}


def build_catalog(spec: dict, meta: dict) -> dict:
    results = []
    skipped = []
    for path, item in sorted(spec["paths"].items()):
        if not isinstance(path, str) or not isinstance(item, dict):
            raise ValueError("Invalid path item")
        for method, value in sorted(item.items()):
            if method.lower() not in METHODS:
                continue
            if not isinstance(value, dict):
                raise ValueError(f"Invalid operation: {method} {path}")
            op = clean_operation(method, path, value, item.get("parameters", []))
            if (not PATH_RE.fullmatch(path) or method.lower() not in SWIFT_METHODS
                    or any(segment in (".", "..") for segment in path.split("/"))):
                skipped.append({"method": method.upper(), "path": path,
                                "reason": "unsupportedPathOrMethod"})
            results.append(op)
    if not results:
        raise ValueError("No OpenAPI operations found")
    return {"formatVersion": 1, "source": meta, "operationCount": len(results),
            "operations": sorted(results, key=lambda x: (x["path"], x["method"])),
            "descriptorGenerationSkipped": skipped}


def key(item: dict) -> tuple[str, str]:
    return item["method"], item["path"]


def diff_catalog(old: dict, new: dict) -> dict:
    a = {key(x): x for x in old["operations"]}
    b = {key(x): x for x in new["operations"]}
    added = sorted(set(b) - set(a))
    removed = sorted(set(a) - set(b))
    modified = sorted(x for x in set(a) & set(b)
                      if a[x]["contractSHA256"] != b[x]["contractSHA256"])
    return {"added": [{"method": m, "path": p} for m, p in added],
            "removed": [{"method": m, "path": p} for m, p in removed],
            "changedContracts": [{"method": m, "path": p} for m, p in modified],
            "note": "Contract hash follows operation request/response/parameter/security fields; component-level $ref target changes require separate analysis."}


def load_verified(path: Path | None, catalog: dict) -> dict:
    if path is None:
        return {"verifiedTypedOperations": []}
    data = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(data, dict) or not isinstance(data.get("verifiedTypedOperations"), list):
        raise ValueError("Invalid verification manifest")
    valid = {key(x) for x in catalog["operations"]}
    seen = set()
    for entry in data["verifiedTypedOperations"]:
        if not isinstance(entry, dict) or not isinstance(entry.get("method"), str) or not isinstance(entry.get("path"), str):
            raise ValueError("Invalid verified operation")
        k = (entry["method"].upper(), entry["path"])
        if k not in valid:
            raise ValueError(f"Verified endpoint does not exist in spec: {k}")
        if k in seen:
            raise ValueError(f"Duplicate verification entry: {k}")
        if not isinstance(entry.get("swiftSymbol"), str) or not entry["swiftSymbol"].strip():
            raise ValueError("Verified entries must name an audited Swift symbol")
        seen.add(k)
    return data


def render_report(catalog: dict, verified: dict) -> str:
    ops = catalog["operations"]
    audited = {(e["method"].upper(), e["path"]) for e in verified["verifiedTypedOperations"]}
    unverified = [o for o in ops if key(o) not in audited]
    by_tag = Counter(tag for op in ops for tag in (op["tags"] or ["(untagged)"]))
    lines = ["# App Store Connect OpenAPI audit", "",
             f"- Specification info.version: `{catalog['source']['infoVersion']}`",
             f"- Source SHA-256: `{catalog['source']['sourceFileSHA256']}`",
             f"- JSON SHA-256: `{catalog['source']['jsonSHA256']}`",
             f"- Operations in specification: **{len(ops)}**",
             f"- Verified typed Swift endpoints: **{len(audited)}**",
             f"- Unverified endpoints (NOT proven missing): **{len(unverified)}**",
             f"- Operations unsuitable for descriptor generation: **{len(catalog['descriptorGenerationSkipped'])}**",
             "", "## Major tags (multiple tags can count one endpoint more than once)", "",
             "| Tag | Operations |", "|---|---:|"]
    lines.extend(f"| {tag.replace('|', '/')} | {count} |" for tag, count in sorted(by_tag.items(), key=lambda x: (-x[1], x[0])))
    lines.extend(["", "## Unverified operations", "",
                  "Unverified means no manually audited Swift symbol is recorded; it does not mean unsupported.", "",
                  "| Method | Path | Operation ID |", "|---|---|---|"])
    lines.extend(f"| {op['method']} | `{op['path']}` | `{op['operationId']}` |" for op in unverified)
    lines.append("")
    return "\n".join(lines)


def swift_identifier(operation_id: str, method: str, path: str) -> str:
    source = operation_id or method.lower() + " " + path
    tokens = [t for t in IDENT_RE.split(source) if t]
    if not tokens:
        tokens = ["endpoint"]
    name = "op" + "".join(t[0].upper() + t[1:] for t in tokens)
    if len(name) > 110:
        name = name[:95] + sha256((method + path).encode())[:12]
    return name


SWIFT_RUNTIME = '''// Generated support code — no external dependencies. Manual edits will be overwritten.
import Foundation

/// An OpenAPI operation descriptor. It does not provide typed schemas or model validation.
public struct ASCOpenAPIOperation: Sendable {
    public let method: ASCRequestMethod
    public let pathTemplate: String

    public init(method: ASCRequestMethod, pathTemplate: String) {
        self.method = method
        self.pathTemplate = pathTemplate
    }

    /// Substitutes *whole* path components. Existing ASCClient rejects percent escapes,
    /// therefore unsupported characters are rejected rather than encoded unsafely.
    public func path(parameters: [String: String] = [:]) throws -> String {
        let parts = pathTemplate.split(separator: "/", omittingEmptySubsequences: false)
        let expected = Set(parts.compactMap { part -> String? in
            guard part.first == "{", part.last == "}" else { return nil }
            return String(part.dropFirst().dropLast())
        })
        guard expected == Set(parameters.keys) else { throw ASCAPIError.invalidResponse }
        var resolved = [String]()
        resolved.reserveCapacity(parts.count)
        for part in parts {
            if part.first == "{", part.last == "}" {
                let name = String(part.dropFirst().dropLast())
                guard let value = parameters[name], !value.isEmpty,
                      value != ".", value != "..", value.utf8.count <= 512,
                      value.utf8.allSatisfy({ byte in
                          (byte >= 65 && byte <= 90) || (byte >= 97 && byte <= 122) ||
                          (byte >= 48 && byte <= 57) || byte == 45 || byte == 46 ||
                          byte == 95 || byte == 126
                      }) else { throw ASCAPIError.invalidResponse }
                resolved.append(value)
            } else {
                resolved.append(String(part))
            }
        }
        return resolved.joined(separator: "/")
    }
}

extension ASCClient {
    /// Call a generated descriptor with generic JSON:API body and raw response.
    /// This is NOT yet a generated type-safe request/response model.
    public func perform(
        _ operation: ASCOpenAPIOperation,
        pathParameters: [String: String] = [:],
        queryItems: [URLQueryItem] = [],
        body: ASCJSONValue? = nil
    ) async throws -> Data {
        let path = try operation.path(parameters: pathParameters)
        return try await requestRaw(method: operation.method,
                                    path: path, queryItems: queryItems, body: body)
    }
}
'''


def make_swift(catalog: dict, out_dir: Path, per_file: int = 100) -> dict:
    """Generate to a caller-chosen output folder only; do NOT modify package Sources."""
    operations = []
    skipped = []
    used = set()
    for item in catalog["operations"]:
        if any(x["method"] == item["method"] and x["path"] == item["path"]
               for x in catalog["descriptorGenerationSkipped"]):
            skipped.append(key(item))
            continue
        name = swift_identifier(item["operationId"], item["method"], item["path"])
        if name in used:
            name += "_" + sha256((item["method"] + item["path"]).encode())[:10]
        if name in used:
            raise ValueError("Unresolvable generated Swift symbol collision")
        used.add(name)
        operations.append((name, item))
    if per_file <= 0 or per_file > 1000:
        raise ValueError("Invalid per-file value")
    out_dir.mkdir(parents=True, exist_ok=True)
    # Prevent accidental overwrite of user or manually edited files.
    if any(out_dir.iterdir()):
        raise ValueError("Generation directory must be empty")
    (out_dir / "ASCOpenAPIOperation.swift").write_text(SWIFT_RUNTIME, encoding="utf-8")
    for index in range(0, len(operations), per_file):
        block = operations[index:index + per_file]
        lines = ["// Generated from the pinned OpenAPI catalog — do not hand edit.",
                 "import Foundation", "", "extension ASCGeneratedOperations {"]
        for name, item in block:
            lines.append(f"    /// {item['method']} {item['path']}")
            # Schema paths are constrained to safe ASCII in PATH_RE.
            lines.append(f'    public static let {name} = ASCOpenAPIOperation(method: .{item["method"].lower()}, pathTemplate: {json.dumps(item["path"])})')
        lines.extend(["}", ""])
        (out_dir / f"ASCGeneratedOperations_{index // per_file:03d}.swift").write_text("\n".join(lines), encoding="utf-8")
    (out_dir / "ASCGeneratedOperations.swift").write_text(
        "// Namespace for descriptors generated from the published OpenAPI specification.\n"
        "public enum ASCGeneratedOperations {}\n", encoding="utf-8")
    manifest = {"descriptorCount": len(operations),
                "unrepresentableOperations": [{"method": m, "path": p} for m, p in skipped],
                "generatedSourceFiles": 2 + (len(operations) + per_file - 1) // per_file,
                "warning": "Operation descriptors are NOT typed request/response models and do not establish end-to-end API coverage."}
    write_json(out_dir / "generation.json", manifest)
    return manifest


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest="command", required=True)
    index = sub.add_parser("catalog", help="build an offline operation catalog and evidence report")
    index.add_argument("--spec", type=Path, required=True)
    index.add_argument("--out", type=Path, required=True)
    index.add_argument("--expected-sha256")
    index.add_argument("--verified", type=Path)
    changes = sub.add_parser("diff", help="compare two previously generated catalogs")
    changes.add_argument("--old", type=Path, required=True)
    changes.add_argument("--new", type=Path, required=True)
    changes.add_argument("--out", type=Path, required=True)
    generate = sub.add_parser("generate", help="generate generic Swift operation descriptors")
    generate.add_argument("--catalog", type=Path, required=True)
    generate.add_argument("--out", type=Path, required=True)
    generate.add_argument("--per-file", type=int, default=100)
    args = parser.parse_args(argv)
    try:
        if args.command == "catalog":
            spec, meta = read_spec(args.spec, args.expected_sha256)
            catalog = build_catalog(spec, meta)
            verified = load_verified(args.verified, catalog)
            # Do not silently clobber a previous report/catalog.
            if args.out.exists() and any(args.out.iterdir()):
                raise ValueError("Catalog output directory must be empty")
            args.out.mkdir(parents=True, exist_ok=True)
            write_json(args.out / "catalog.json", catalog)
            (args.out / "coverage.md").write_text(render_report(catalog, verified), encoding="utf-8")
            print(f"Cataloged {catalog['operationCount']} method/path operations")
        elif args.command == "diff":
            if args.out.exists():
                raise ValueError("Diff output already exists")
            old = json.loads(args.old.read_text(encoding="utf-8"))
            new = json.loads(args.new.read_text(encoding="utf-8"))
            write_json(args.out, diff_catalog(old, new))
            print("Generated contract diff")
        elif args.command == "generate":
            catalog = json.loads(args.catalog.read_text(encoding="utf-8"))
            result = make_swift(catalog, args.out, args.per_file)
            print(f"Generated {result['descriptorCount']} Swift operation descriptors")
        return 0
    except (ValueError, OSError, KeyError, TypeError, json.JSONDecodeError, zipfile.BadZipFile) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
