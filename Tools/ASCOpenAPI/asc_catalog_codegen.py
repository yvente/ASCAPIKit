#!/usr/bin/env python3
"""Generate a catalog-backed, authenticated Swift call for every pinned Apple operation.

The generated functions are transport-level raw Data entry points, not fully typed
Codable SDK coverage. No network, subprocess, private credentials or dependencies.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from pathlib import Path

import asc_openapi as loader

SOURCE_PIN = "7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46"
JSON_PIN = "7518d3a94a8bd701ac25c1c601b95b8f53aad92091affb15a2a9d331713dac1a"
EXPECTED_VERSION = "4.5.1"
EXPECTED_COUNT = 1303
METHODS = ("get", "post", "patch", "delete", "put", "head", "options", "trace")
PATH_SLOT = re.compile(r"^\{([A-Za-z][A-Za-z0-9_]*)\}$")
SAFE_IDENTIFIER = re.compile(r"[^A-Za-z0-9_]")
REF_PATTERN = re.compile(r"^#/components/(parameters|requestBodies|responses)/([^/]+)$")


def swift_literal(value: str) -> str:
    # API member names and URI templates use ASCII; literal newline and control bytes
    # are never accepted from the spec.
    if any(ord(c) < 32 for c in value):
        raise ValueError("Control character in generated literal")
    return '"' + value.replace("\\", "\\\\").replace('"', '\\"') + '"'


def strings(values: list[str]) -> str:
    return "[" + ", ".join(swift_literal(x) for x in values) + "]"


def deref(spec: dict, obj: object, seen: tuple[str, ...] = ()) -> dict:
    if not isinstance(obj, dict):
        raise ValueError("Invalid OpenAPI reference object")
    if "$ref" not in obj:
        return obj
    ref = obj["$ref"]
    if not isinstance(ref, str) or not REF_PATTERN.fullmatch(ref) or ref in seen:
        raise ValueError("Invalid or recursive OpenAPI reference")
    category, key = REF_PATTERN.fullmatch(ref).groups()
    try:
        target = spec["components"][category][key]
    except (KeyError, TypeError) as err:
        raise ValueError("Dangling OpenAPI reference: " + ref) from err
    return deref(spec, target, seen + (ref,))


def parameters_for(spec: dict, item: dict, op: dict) -> list[dict]:
    found: dict[tuple[str, str], dict] = {}
    for part in (item.get("parameters", []), op.get("parameters", [])):
        if not isinstance(part, list):
            raise ValueError("Parameter list is not an array")
        section: set[tuple[str, str]] = set()
        for raw in part:
            param = deref(spec, raw)
            key = (param.get("in"), param.get("name"))
            if not all(isinstance(s, str) and s for s in key) or key in section:
                raise ValueError("Invalid/duplicate parameter identity")
            section.add(key)
            found[key] = param  # operation-level overrides path-level
    return list(found.values())


def media_types(spec: dict, raw: dict) -> list[str]:
    item = deref(spec, raw)
    content = item.get("content", {})
    if not isinstance(content, dict):
        raise ValueError("Invalid media content")
    return sorted(content.keys())


def inspect(spec: dict, method: str, path: str, item: dict, op: dict) -> dict:
    issues: list[str] = []
    names = [part[1:-1] for part in path.split("/") if PATH_SLOT.fullmatch(part)]
    if not loader.PATH_RE.fullmatch(path) or any(part in (".", "..") for part in path.split("/")):
        issues.append("unsupported literal path template")
    if method not in ("get", "post", "patch", "put", "delete", "head", "options"):
        issues.append("unsupported HTTP method")
    try:
        params = parameters_for(spec, item, op)
    except ValueError as exc:
        params = []
        issues.append(str(exc))
    query = sorted(p["name"] for p in params if p.get("in") == "query")
    query_required = sorted(p["name"] for p in params if p.get("in") == "query" and p.get("required"))
    declared_paths = {p["name"] for p in params if p.get("in") == "path"}
    if set(names) != declared_paths:
        issues.append("path parameter metadata mismatch")
    if any(p.get("required") for p in params if p.get("in") in ("header", "cookie")):
        issues.append("required custom header/cookie parameters")
    unknown_locs = [p.get("in") for p in params if p.get("in") not in ("path", "query", "header", "cookie")]
    if unknown_locs:
        issues.append("unknown parameter location")
    optional_header = sorted(p["name"] for p in params if p.get("in") in ("header", "cookie") and not p.get("required"))
    unusual_query = sorted(p["name"] for p in params if p.get("in") == "query" and
                           (p.get("style", "form") != "form" or p.get("allowReserved", False) or p.get("content")))
    # URLQueryItem deliberately exposes manual serialization; never count typed coverage.
    request_types: list[str] = []
    request_required = False
    if "requestBody" in op:
        try:
            request = deref(spec, op["requestBody"])
            request_types = media_types(spec, request)
            request_required = bool(request.get("required", False))
            if request_required and not request_types:
                issues.append("required request body has no supported content")
        except ValueError as exc:
            issues.append("request body: " + str(exc))
    response_types: set[str] = set()
    responses = op.get("responses", {})
    if not isinstance(responses, dict):
        issues.append("invalid responses metadata")
    else:
        for status, raw in responses.items():
            if str(status).startswith("2"):
                try:
                    response_types.update(media_types(spec, raw))
                except ValueError as exc:
                    issues.append("response: " + str(exc))
    identifier = op.get("operationId") or f"{method}_{path}"
    if not isinstance(identifier, str):
        identifier = f"{method}_{path}"
    compact = SAFE_IDENTIFIER.sub("_", identifier)
    compact = compact[:74].strip("_").lower()
    digest = hashlib.sha256(f"{method.upper()} {path}".encode()).hexdigest()[:10]
    symbol = "op_" + (compact or method) + "_" + digest
    return {
        "symbol": symbol,
        "operationId": identifier,
        "method": method.upper(), "path": path,
        "pathParameters": names, "queryParameters": query,
        "requiredQueryParameters": query_required,
        "requestContentTypes": request_types, "requestBodyRequired": request_required,
        "responseContentTypes": sorted(response_types),
        "deprecated": bool(op.get("deprecated", False)),
        "optionalHeadersNotExposed": optional_header,
        "manualQuerySerialization": unusual_query,
        "transportBlocker": "; ".join(sorted(set(issues))) if issues else None,
        "schemaTyped": False, "liveAppleVerified": False,
    }


def definition(entry: dict) -> str:
    scalar = lambda b: "true" if b else "false"
    blocker = "nil" if entry["transportBlocker"] is None else swift_literal(entry["transportBlocker"])
    return (
        f"    public static var {entry['symbol']}: ASCOpenAPIOperation {{\n"
        f"        ASCOpenAPIOperation(\n"
        f"            id: {swift_literal(entry['operationId'])}, method: {swift_literal(entry['method'])},\n"
        f"            pathTemplate: {swift_literal(entry['path'])},\n"
        f"            pathParameterNames: {strings(entry['pathParameters'])},\n"
        f"            queryParameterNames: {strings(entry['queryParameters'])},\n"
        f"            requiredQueryParameterNames: {strings(entry['requiredQueryParameters'])},\n"
        f"            requestContentTypes: {strings(entry['requestContentTypes'])},\n"
        f"            requestBodyRequired: {scalar(entry['requestBodyRequired'])},\n"
        f"            responseContentTypes: {strings(entry['responseContentTypes'])},\n"
        f"            deprecated: {scalar(entry['deprecated'])},\n"
        f"            transportBlocker: {blocker}\n"
        f"        )\n    }}\n"
    )


def method_wrapper(entry: dict) -> str:
    return (
        f"    /// {entry['method']} {entry['path']} (raw transport response; no Codable guarantee).\n"
        f"    public func ascGenerated_{entry['symbol'][3:]}(\n"
        f"        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],\n"
        f"        body: ASCOpenAPIBody? = nil, accept: String? = nil\n"
        f"    ) async throws -> Data {{\n"
        f"        try await ascOpenAPI(ASCOpenAPICatalog.{entry['symbol']},\n"
        f"            pathParameters: pathParameters, queryItems: queryItems,\n"
        f"            body: body, accept: accept)\n"
        f"    }}\n"
    )


def generate(spec: dict, meta: dict, out: Path) -> dict:
    entries: list[dict] = []
    for path, item in sorted(spec["paths"].items()):
        if not isinstance(item, dict) or not isinstance(path, str):
            raise ValueError("Invalid path item")
        for method, op in sorted(item.items()):
            if method not in METHODS:
                continue
            if not isinstance(op, dict):
                raise ValueError("Invalid operation")
            entries.append(inspect(spec, method, path, item, op))
    if meta["infoVersion"] != EXPECTED_VERSION or meta["jsonSHA256"] != JSON_PIN:
        raise ValueError("Unpinned Apple JSON or version")
    if len(entries) != EXPECTED_COUNT:
        raise ValueError(f"Apple operation count mismatch: {len(entries)} != {EXPECTED_COUNT}")
    if len(set(x["symbol"] for x in entries)) != len(entries):
        raise ValueError("Generated Swift identifier collision")
    if out.exists() and any(out.iterdir()):
        raise ValueError("Refusing existing nonempty output directory")
    out.mkdir(parents=True, exist_ok=True)
    swift_dir = out / "swift"
    swift_dir.mkdir(exist_ok=True)
    (swift_dir / "ASCOpenAPICatalogRuntime.swift").write_text(
        (Path(__file__).parent / "asc_catalog_runtime.swift").read_text(), encoding="utf-8")
    for index in range(0, len(entries), 40):
        group = entries[index:index + 40]
        name = f"ASCOpenAPICatalog_{index // 40:02d}.swift"
        code = "// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.\nimport Foundation\n\n"
        code += "extension ASCOpenAPICatalog {\n" + "\n".join(map(definition, group)) + "}\n\n"
        code += "extension ASCClient {\n" + "\n".join(map(method_wrapper, group)) + "}\n"
        (swift_dir / name).write_text(code, encoding="utf-8")
    all_fragments = [f"ASCOpenAPICatalog_{i:02d}" for i in range((len(entries) + 39) // 40)]
    rollups = []
    for i in range(0, len(entries), 40):
        group = entries[i:i + 40]
        idx = i // 40
        rollups.append(f"    public static var group{idx}: [ASCOpenAPIOperation] {{\n        ["
                       + ", ".join(x["symbol"] for x in group) + "]\n    }")
    all_swift = "// Generated registry for auditing and discovery.\nimport Foundation\n\nextension ASCOpenAPICatalog {\n"
    all_swift += "\n".join(rollups)
    all_swift += "\n    public static var all: [ASCOpenAPIOperation] {\n"
    all_swift += "        var result: [ASCOpenAPIOperation] = []\n"
    all_swift += "        result.reserveCapacity(" + str(len(entries)) + ")\n"
    for i in range(len(all_fragments)):
        all_swift += f"        result.append(contentsOf: group{i})\n"
    all_swift += "        return result\n    }\n}\n"
    (swift_dir / "ASCOpenAPICatalog_All.swift").write_text(all_swift, encoding="utf-8")
    blocked = [x for x in entries if x["transportBlocker"]]
    report = {
        "formatVersion": 1, "officialVersion": EXPECTED_VERSION,
        "sourceFileSHA256": meta["sourceFileSHA256"],
        "jsonSHA256": meta["jsonSHA256"],
        "officialOperations": len(entries),
        "generatedNamedOperations": len(entries),
        "genericTransportCallable": len(entries) - len(blocked),
        "transportBlocked": len(blocked),
        "schemaFullyTyped": 0,
        "liveAppleVerified": 0,
        "note": "Catalog + raw transport, not 1,303 fully typed/real-Apple-verified endpoints.",
        "operations": entries,
    }
    (out / "coverage.json").write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    md = ["# ASCAPIKit OpenAPI 4.5.1 catalog coverage", "",
          f"Official operations: **{len(entries)}**",
          f"Named Swift wrappers generated: **{len(entries)}**",
          f"Callable via catalog transport: **{len(entries) - len(blocked)}**",
          f"Explicit transport blockers: **{len(blocked)}**",
          "Fully typed by this generation: **0**", "Live Apple verified by this generation: **0**", "",
          "The generic wrapper accepts URLQueryItem and ASCOpenAPIBody, returns Data.",
          "Special query styles and optional custom headers require caller-side handling.",
          "App Store Connect permissions, business rules and presigned binary uploads are not validated.", "",
          "## Explicit blockers", ""]
    for x in blocked:
        md.append(f"- `{x['method']} {x['path']}` — {x['transportBlocker']}")
    # No trailing empty Markdown lines when there are no blockers.
    while md and not md[-1]:
        md.pop()
    (out / "coverage.md").write_text("\n".join(md) + "\n", encoding="utf-8")
    return report


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--spec", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    spec, meta = loader.read_spec(args.spec, expected_sha256=SOURCE_PIN)
    report = generate(spec, meta, args.out)
    print("FINAL_CATALOG_GENERATED", report["officialOperations"],
          report["genericTransportCallable"], report["transportBlocked"])
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (ValueError, OSError, KeyError, TypeError) as exc:
        print("FINAL_CATALOG_ERROR:", exc, file=sys.stderr)
        raise SystemExit(2)
