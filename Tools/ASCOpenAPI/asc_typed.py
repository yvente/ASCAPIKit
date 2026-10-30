#!/usr/bin/env python3
"""Experimental, offline Swift Codable generator for five App Store Connect operations.

Reads the pinned Apple OpenAPI 3 JSON/ZIP using Batch 3's verified loader.
Never connects to the network; never writes production Sources.

IMPORTANT: JSON-backed fields and raw query parameters are reported explicitly.
Generated response types are NOT complete OpenAPI conformance or audited coverage.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

import asc_openapi as base

TARGETS = (
    ("GET", "/v1/apps/{id}", "GetApp"),
    ("GET", "/v1/builds/{id}", "GetBuild"),
    ("GET", "/v1/appStoreVersions/{id}", "GetAppStoreVersion"),
    ("POST", "/v1/appStoreVersions", "CreateAppStoreVersion"),
    ("PATCH", "/v1/appStoreVersions/{id}", "UpdateAppStoreVersion"),
)
EXPECTED_SPEC_VERSION = "4.5.1"
EXPECTED_ZIP_SHA256 = "7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46"
EXPECTED_JSON_SHA256 = "7518d3a94a8bd701ac25c1c601b95b8f53aad92091affb15a2a9d331713dac1a"

SWIFT_RESERVED = frozenset("associatedtype class deinit enum extension fileprivate func import init inout internal let open operator private precedencegroup protocol public rethrows static struct subscript typealias var break case catch continue default defer do else fallthrough for guard if in repeat return switch throw throws try where while as Any false is nil self Self super true _".split())
NAME_RE = re.compile(r"[^A-Za-z0-9_]")
COMPONENT_REF = re.compile(r"^#/components/(schemas|parameters|requestBodies|responses)/([^/]+)$")
PATH_PARAMETER = re.compile(r"\{([A-Za-z][A-Za-z0-9_]*)\}")


def swift_property(key: str) -> str:
    name = NAME_RE.sub("_", key)
    if not name or name[0].isdigit():
        name = "field_" + name
    if name in SWIFT_RESERVED:
        return f"`{name}`"
    return name


def swift_string(value: str) -> str:
    return json.dumps(value, ensure_ascii=True)


def swift_name(value: str) -> str:
    name = NAME_RE.sub("_", value)
    if not name or name[0].isdigit():
        name = "T_" + name
    return name


class UnsupportedSchema(ValueError):
    pass


class Inspector:
    def __init__(self, spec: dict):
        self.spec = spec
        self.json_fields: list[dict] = []
        self.warnings: list[str] = []

    def deref(self, raw: object, trail: tuple[str, ...] = ()) -> dict:
        if not isinstance(raw, dict):
            raise UnsupportedSchema("Expected schema or OpenAPI object")
        if "$ref" in raw:
            ref = raw["$ref"]
            if not isinstance(ref, str) or not COMPONENT_REF.fullmatch(ref):
                raise UnsupportedSchema(f"Unsupported $ref: {ref!r}")
            if ref in trail:
                raise UnsupportedSchema(f"Circular reference: {ref}")
            match = COMPONENT_REF.fullmatch(ref)
            assert match is not None
            area, name = match.groups()
            try:
                value = self.spec["components"][area][name]
            except (KeyError, TypeError) as err:
                raise UnsupportedSchema(f"Dangling $ref: {ref}") from err
            result = self.deref(value, trail + (ref,))
            # OpenAPI 3.0: siblings of $ref are not merged into the target.
            return result
        if "allOf" in raw:
            children = raw["allOf"]
            if not isinstance(children, list) or not children:
                raise UnsupportedSchema("Invalid allOf")
            merge = {"type": "object", "properties": {}, "required": []}
            for part in children:
                obj = self.deref(part, trail)
                if obj.get("type") not in (None, "object") or not isinstance(obj.get("properties", {}), dict):
                    raise UnsupportedSchema("allOf contains a non-object schema")
                for key, value in obj.get("properties", {}).items():
                    if key in merge["properties"] and merge["properties"][key] != value:
                        raise UnsupportedSchema(f"Conflicting allOf property: {key}")
                    merge["properties"][key] = value
                for key in obj.get("required", []):
                    if key not in merge["required"]:
                        merge["required"].append(key)
            for key, val in raw.items():
                if key not in ("allOf", "properties", "required", "type"):
                    merge[key] = val
            for key, val in raw.get("properties", {}).items():
                if key in merge["properties"] and merge["properties"][key] != val:
                    raise UnsupportedSchema(f"Conflicting allOf property: {key}")
                merge["properties"][key] = val
            merge["required"] = list(dict.fromkeys(merge["required"] + raw.get("required", [])))
            return merge
        return raw

    def object_schema(self, raw: object, where: str) -> dict:
        schema = self.deref(raw)
        if schema.get("type") not in (None, "object") or not isinstance(schema.get("properties"), dict):
            raise UnsupportedSchema(f"{where}: expected object with properties")
        return schema

    def field_type(self, raw: object, where: str) -> str:
        schema = self.deref(raw)
        if "oneOf" in schema or "anyOf" in schema or "not" in schema:
            return self.json_value(where, "polymorphic/unsupported combinator")
        typ = schema.get("type")
        if typ is None and "enum" in schema:
            typ = "string" if all(isinstance(v, str) for v in schema["enum"]) else None
        if typ == "string":
            return "String"  # Unknown Apple enum values remain decodable.
        if typ == "integer":
            return "Int64"
        if typ == "number":
            return "Decimal"
        if typ == "boolean":
            return "Bool"
        if typ == "array":
            if not isinstance(schema.get("items"), dict):
                return self.json_value(where, "array without known item schema")
            item_type = self.field_type(schema["items"], where + "[]")
            return f"[{item_type}]"
        if typ == "object" or "properties" in schema or "additionalProperties" in schema:
            return self.json_value(where, "structured object")
        return self.json_value(where, f"unrecognized type {typ!r}")

    def json_value(self, where: str, reason: str) -> str:
        self.json_fields.append({"field": where, "reason": reason})
        return "ASCJSONValue"


def select_schema(operation: dict, kind: str, inspector: Inspector) -> dict:
    if kind == "response":
        responses = operation.get("responses") or {}
        for status in ("200", "201", "202"):
            if status in responses:
                response = inspector.deref(responses[status])
                content = response.get("content", {})
                schema = (content.get("application/json") or {}).get("schema")
                if isinstance(schema, dict):
                    return inspector.object_schema(schema, f"{status} response")
        raise UnsupportedSchema("No 200/201/202 JSON response schema")
    body = operation.get("requestBody")
    if body is None:
        raise UnsupportedSchema("No request body")
    body = inspector.deref(body)
    schema = (body.get("content", {}).get("application/json") or {}).get("schema")
    if not isinstance(schema, dict):
        raise UnsupportedSchema("No JSON request body schema")
    return inspector.object_schema(schema, "request body")


def swift_object(name: str, properties: dict, required: list[str], inspector: Inspector,
                 context: str, encoding: bool) -> str:
    if not isinstance(required, list) or any(not isinstance(x, str) for x in required):
        raise UnsupportedSchema(f"{context}: invalid required array")
    if not isinstance(properties, dict) or not properties:
        raise UnsupportedSchema(f"{context}: properties missing")
    if len(properties) > 150:
        raise UnsupportedSchema(f"{context}: too many object properties")
    declaration = f"public struct {name}: {'Encodable' if encoding else 'Decodable'}, Sendable {{"
    lines = [declaration]
    fields = []
    seen = set()
    for json_key, raw in properties.items():
        if not isinstance(json_key, str):
            raise UnsupportedSchema(f"{context}: invalid property key")
        field = swift_property(json_key)
        if field in seen:
            raise UnsupportedSchema(f"{context}: duplicate Swift property name: {field}")
        seen.add(field)
        schema = inspector.deref(raw)
        typ = inspector.field_type(raw, f"{context}.{json_key}")
        mandatory = json_key in required and not schema.get("nullable", False)
        fields.append((json_key, field, typ, mandatory))
        lines.append(f"    public var {field}: {typ}{'' if mandatory else '?'}")
    lines.append("")
    lines.append("    private enum CodingKeys: String, CodingKey {")
    for key, field, _, _ in fields:
        lines.append(f"        case {field} = {swift_string(key)}")
    lines.append("    }")
    if encoding:
        # Body models are constructible from another module. Optional parameters default to nil.
        args = [f"{field}: {typ}{'' if req else '?'}{'' if req else ' = nil'}"
                for _, field, typ, req in fields]
        lines.append("")
        lines.append(f"    public init({', '.join(args)}) {{")
        for _, field, _, _ in fields:
            lines.append(f"        self.{field} = {field}")
        lines.append("    }")
    lines.append("}")
    return "\n".join(lines)


def generate_operation(spec: dict, method: str, path: str, label: str, inspector: Inspector) -> str:
    try:
        op = spec["paths"][path][method.lower()]
    except KeyError as exc:
        raise UnsupportedSchema(f"Missing target operation {method} {path}") from exc
    if not isinstance(op, dict):
        raise UnsupportedSchema(f"Invalid target {method} {path}")
    prefix = "ASCTyped" + label
    response = select_schema(op, "response", inspector)
    root_fields = response.get("properties", {})
    if not isinstance(root_fields.get("data"), dict):
        raise UnsupportedSchema(f"{label}: response has no data property")
    resource = inspector.object_schema(root_fields["data"], label + ".data")
    resource_fields = resource.get("properties", {})
    if not isinstance(resource_fields.get("attributes"), dict):
        raise UnsupportedSchema(f"{label}: resource has no attributes property")
    attrs = inspector.object_schema(resource_fields["attributes"], label + ".data.attributes")
    # Preserve relationship and include values without claiming typed union coverage.
    resp_name, resource_name, attr_name = prefix + "Response", prefix + "Resource", prefix + "Attributes"
    blocks = ["// Generated by Tools/ASCOpenAPI/asc_typed.py from pinned official spec.",
              "// Polymorphic and structured fields are JSON-backed; see generation.json.",
              "import Foundation", "",
              swift_object(attr_name, attrs["properties"], attrs.get("required", []), inspector, label + ".data.attributes", False), ""]
    # Generate resource with typed attributes rather than opaque JSON value.
    resource_required = resource.get("required", [])
    res_lines = [f"public struct {resource_name}: Decodable, Sendable {{"]
    res_properties = {}
    for k, v in resource_fields.items():
        if k == "attributes":
            res_properties[k] = (attr_name, k in resource_required)
        else:
            typ = inspector.field_type(v, label + ".data." + k)
            res_properties[k] = (typ, k in resource_required and not inspector.deref(v).get("nullable", False))
    for key, (typ, req) in res_properties.items():
        res_lines.append(f"    public let {swift_property(key)}: {typ}{'' if req else '?'}")
    res_lines.append("    private enum CodingKeys: String, CodingKey {")
    for key in res_properties:
        res_lines.append(f"        case {swift_property(key)} = {swift_string(key)}")
    res_lines.extend(["    }", "}"])
    blocks.extend(["\n".join(res_lines), ""])
    # Avoid the common failure of trying to type heterogeneous JSON:API included unions.
    root_required = response.get("required", [])
    lines = [f"public struct {resp_name}: Decodable, Sendable {{"]
    for key, prop in root_fields.items():
        if key == "data":
            typ = resource_name
        else:
            typ = inspector.field_type(prop, label + "." + key)
        required = key in root_required and not inspector.deref(prop).get("nullable", False)
        lines.append(f"    public let {swift_property(key)}: {typ}{'' if required else '?'}")
    lines.append("    private enum CodingKeys: String, CodingKey {")
    for key in root_fields:
        lines.append(f"        case {swift_property(key)} = {swift_string(key)}")
    lines.extend(["    }", "}"])
    blocks.extend(["\n".join(lines), ""])

    body_name = None
    if method in ("POST", "PATCH"):
        body = select_schema(op, "request", inspector)
        body_props = body.get("properties", {})
        body_data = body_props.get("data")
        if not isinstance(body_data, dict):
            raise UnsupportedSchema(f"{label}: request has no data field")
        data = inspector.object_schema(body_data, label + ".request.data")
        data_name, body_name = prefix + "RequestData", prefix + "Request"
        data_props = data.get("properties", {})
        data_required = data.get("required", [])
        if isinstance(data_props.get("attributes"), dict):
            request_attrs = inspector.object_schema(data_props["attributes"], label + ".request.data.attributes")
            req_attrs_name = prefix + "RequestAttributes"
            blocks.extend([swift_object(req_attrs_name, request_attrs["properties"], request_attrs.get("required", []),
                                        inspector, label + ".request.data.attributes", True), ""])
            # Encode typed attributes while leaving relationships JSON-backed.
            fields = []
            for key, raw in data_props.items():
                typ = req_attrs_name if key == "attributes" else inspector.field_type(raw, label + ".request.data." + key)
                mandatory = key in data_required and not inspector.deref(raw).get("nullable", False)
                fields.append((key, swift_property(key), typ, mandatory))
            lines = [f"public struct {data_name}: Encodable, Sendable {{"]
            for _, field, typ, req in fields:
                lines.append(f"    public var {field}: {typ}{'' if req else '?'}")
            lines.append("    private enum CodingKeys: String, CodingKey {")
            for key, field, _, _ in fields:
                lines.append(f"        case {field} = {swift_string(key)}")
            lines.append("    }")
            args = [f"{field}: {typ}{'' if req else '?'}{'' if req else ' = nil'}"
                    for _, field, typ, req in fields]
            lines.append(f"    public init({', '.join(args)}) {{")
            for _, field, _, _ in fields:
                lines.append(f"        self.{field} = {field}")
            lines.extend(["    }", "}"])
            blocks.extend(["\n".join(lines), ""])
        else:
            # Data without attributes remains schema-derived, not a guessed empty model.
            blocks.extend([swift_object(data_name, data_props, data_required, inspector,
                                        label + ".request.data", True), ""])
        blocks.extend(["\n".join([
            f"public struct {body_name}: Encodable, Sendable {{",
            f"    public var data: {data_name}",
            f"    public init(data: {data_name}) {{ self.data = data }}",
            "}",
        ]), ""])

    params = PATH_PARAMETER.findall(path)
    if len(params) != len(set(params)) or any(p != "id" for p in params):
        raise UnsupportedSchema(f"{label}: unsupported path parameters {params}")
    function = "ascTyped" + label
    swift_path = swift_string(path)
    method_enum = method.lower()
    lines = ["extension ASCClient {", f"    /// {method} {path}. Generated, not yet integration-tested against Apple."]
    parts = ["id: String"] if params else []
    if method == "GET":
        parts.append("queryItems: [URLQueryItem] = []")
    else:
        assert body_name is not None
        parts.append(f"body: {body_name}")
    lines.append(f"    public func {function}({', '.join(parts)}) async throws -> {resp_name} {{")
    if params:
        lines.append("        let safeID = try ASCTypedPath.safeSegment(id)")
        # Keep path constant parts sourced from OpenAPI only.
        head, tail = path.split("{id}")
        lines.append(f"        let path = {swift_string(head)} + safeID + {swift_string(tail)}")
    else:
        lines.append(f"        let path = {swift_path}")
    if method == "GET":
        lines.append(f"        return try await requestDecoded(method: .{method_enum}, path: path, queryItems: queryItems, as: {resp_name}.self)")
    else:
        lines.extend(["        let encoded = try JSONEncoder().encode(body)",
                      "        let json = try JSONDecoder().decode(ASCJSONValue.self, from: encoded)",
                      f"        return try await requestDecoded(method: .{method_enum}, path: path, body: json, as: {resp_name}.self)"])
    lines.extend(["    }", "}"])
    blocks.append("\n".join(lines))
    return "\n\n".join(blocks) + "\n"


PATH_RUNTIME = '''// Shared generated path validation; only unreserved RFC3986 characters are accepted.
import Foundation

enum ASCTypedPath {
    static func safeSegment(_ value: String) throws -> String {
        guard !value.isEmpty, value.utf8.count <= 512,
              value != ".", value != "..",
              value.utf8.allSatisfy({ byte in
                (byte >= 65 && byte <= 90) || (byte >= 97 && byte <= 122) ||
                (byte >= 48 && byte <= 57) || byte == 45 || byte == 46 ||
                byte == 95 || byte == 126
              }) else { throw ASCAPIError.invalidResponse }
        return value
    }
}
'''


def compile_preview(spec: dict, meta: dict, out: Path, strict_json_sha: bool) -> dict:
    if meta["infoVersion"] != EXPECTED_SPEC_VERSION and strict_json_sha:
        raise UnsupportedSchema("Expected Apple OpenAPI info.version 4.5.1")
    if strict_json_sha and meta["jsonSHA256"] != EXPECTED_JSON_SHA256:
        raise UnsupportedSchema("Unrecognized OpenAPI JSON SHA-256")
    if out.exists():
        raise ValueError("Output directory already exists; do not overwrite")
    inspector = Inspector(spec)
    generated = {}
    status = []
    for method, path, label in TARGETS:
        try:
            generated[f"ASCTyped{label}.swift"] = generate_operation(spec, method, path, label, inspector)
            status.append({"method": method, "path": path, "status": "generated", "symbol": "ASCClient.ascTyped" + label})
        except UnsupportedSchema as exc:
            status.append({"method": method, "path": path, "status": "unsupported", "reason": str(exc)})
    manifest = {
        "formatVersion": 1, "spec": meta,
        "operations": status,
        "generated": sum(x["status"] == "generated" for x in status),
        "unsupported": sum(x["status"] != "generated" for x in status),
        "jsonBackedFields": inspector.json_fields,
        "rawQueryParameters": True,
        "verifiedTypedOperations": 0,
        "fullSchemaCoverage": False,
        "warning": "Preview only. Complex objects, relationship unions and included resources use ASCJSONValue; raw queryItems are not typed. Never count as fully verified coverage."
    }
    # Strict mode prevents partial typed slices from looking like success.
    if manifest["unsupported"]:
        details = "; ".join(f"{x['method']} {x['path']}: {x.get('reason')}" for x in status if x["status"] != "generated")
        raise UnsupportedSchema("Unsupported target operations; no output written: " + details)
    out.mkdir(parents=True, exist_ok=False)
    (out / "ASCTypedPath.swift").write_text(PATH_RUNTIME, encoding="utf-8")
    for name, contents in sorted(generated.items()):
        (out / name).write_text(contents, encoding="utf-8")
    base.write_json(out / "generation.json", manifest)
    return manifest


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--spec", required=True, type=Path)
    ap.add_argument("--expected-sha256", help="Source file pin; required for official spec")
    ap.add_argument("--out", required=True, type=Path)
    ap.add_argument("--fixture-mode", action="store_true", help="ONLY synthetic testing; never for official spec acceptance")
    args = ap.parse_args(argv)
    try:
        if not args.fixture_mode and args.expected_sha256 != EXPECTED_ZIP_SHA256:
            raise ValueError("Must supply pinned official 4.5.1 source SHA-256")
        spec, meta = base.read_spec(args.spec, args.expected_sha256)
        manifest = compile_preview(spec, meta, args.out, strict_json_sha=not args.fixture_mode)
        print(f"Generated {manifest['generated']} preview typed operations; {len(manifest['jsonBackedFields'])} JSON-backed fields")
        return 0
    except (ValueError, KeyError, TypeError, OSError) as err:
        print(f"ERROR: {err}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
