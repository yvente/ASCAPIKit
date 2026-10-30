# Pinned Apple 4.5.1 Full Operation Catalog

This is a **raw-transport operation catalog**, NOT a fully typed Swift SDK and NOT
real-Apple-API verification. Generates a named, publicly callable Swift wrapper
for each of the 1,303 operations in pinned Apple OpenAPI 4.5.1. Each wrapper
accepts path values and `[URLQueryItem]`, optional `ASCOpenAPIBody` (`.json` /
`.bytes`) and returns raw `Data`, including empty 204 bodies. It uses the
existing `ASCTransport`, JWT and error classification.

All operations have a deterministic Swift member name (operationId plus short
route hash). Example usage after generating:

```swift
let op = ASCOpenAPICatalog.all.first {
    $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
}!
let bytes = try await client.ascOpenAPI(
    op,
    pathParameters: ["id": appID],
    queryItems: [URLQueryItem(name: "include", value: "builds")]
)
```

`catalog-coverage-4.5.1.json` records every operation, whether the transport
supports it, unsupported headers or path formats, and raw parameters requiring
manual serialization. `catalog-coverage-4.5.1.md` lists every explicit
transport blocker. The generator never silently counts an unsupported operation
as callable. It reports `schemaFullyTyped=0` and `liveAppleVerified=0` for its
new wrappers. Existing Batch 1–8 typed APIs remain available unchanged.

The host must use correct JSON:API request bodies and query serialization per
Apple docs; not all business constraints are modeled. For `bytes`, the host
must build multipart framing and use the exact allowed media type. Presigned
upload/download URLs remain handled by existing secure asset helpers and must
never be passed through catalog bearer-authenticated requests.

The generated catalog never refreshes credentials, retries, caches, polls or
submits any request automatically. Unit tests are exclusively StubTransport.
