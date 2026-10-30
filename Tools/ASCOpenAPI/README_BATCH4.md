# Batch 4 — Experimental schema-derived Swift typed preview

`asc_typed.py` adds an **offline**, strict, pinned OpenAPI 4.5.1 generator for five
representative App Store Connect operations. It reads `asc_openapi.py` from Batch 3.

Selected operations:

- `GET /v1/apps/{id}`
- `GET /v1/builds/{id}`
- `GET /v1/appStoreVersions/{id}`
- `POST /v1/appStoreVersions`
- `PATCH /v1/appStoreVersions/{id}`

Generated models are `Decodable` response resources with scalar attributes and
`Encodable` POST/PATCH request bodies. Public `ASCClient.ascTyped...` helpers call
Batch 1 `requestDecoded` / `requestRaw` indirectly via JSON values.

**Important limitations (not hidden):** this is a **preview**, not a complete typed
schema implementation. Nested objects, arbitrary JSON:API relationships and
heterogeneous `included` resources are stored as `ASCJSONValue`; query parameters
remain `[URLQueryItem]`. Scalar enums use open strings (unknown future values
are preserved). `generation.json` identifies every JSON-backed field, reports
that the full schema is not covered, and keeps `verifiedTypedOperations` at 0.
We do **not** put these generated sources in production or the verified manifest.
We do not claim five fully supported typed operations.

Generated Swift source files MUST be compiled together with `Sources/ASCAPIKit/*.swift`
for the smoke/typecheck phase only. Requires no third-party dependencies and
makes no network requests. Apple credentials and the App Store Connect API are
never touched. When used on the official Apple ZIP the generator checks **both**
its complete archive SHA-256 and embedded OpenAPI JSON SHA-256 as well as version.

Use the instructions in this batch's root `README.md`. When official schema
generation fails, record the reason without weakening hash or type validations.
