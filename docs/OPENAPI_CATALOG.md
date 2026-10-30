# OpenAPI Operation Catalog

This document describes ASCAPIKit's generated OpenAPI operation catalog:
what it is, how to discover and invoke operations, and where its
capability boundary sits.

## 1. Overview

The catalog is a generated, offline registry of the App Store Connect API
operations described by Apple's official OpenAPI 4.5.1 specification. The
specification is pinned by SHA-256, and the generated Swift catalog is
checked into the package, so the operations a build sees are exactly the
operations the pinned specification defines — 1,303 of them.

The catalog exists to solve one problem: hosts frequently need App Store
Connect endpoints for which ASCAPIKit has no typed convenience method.
Instead of hand-building URLs and request documents, a host can find the
operation in the catalog and invoke it through a validated, authenticated
raw-request dispatcher that reuses the package's JWT, transport injection,
and error classification.

Design goals:

- every pinned official operation is reachable by name and by
  method/path lookup
- requests are validated (path shape, query names, media types) before
  any network I/O
- responses are returned as raw `Data`; the host owns decoding
- no hidden behavior: no retries, no polling, no automatic pagination,
  no token refresh

Capability boundary: the catalog is a raw-transport operation registry.
It is not a fully typed SDK, not a schema-validating client, and not a
substitute for reading Apple's endpoint documentation. See
[Coverage and limitations](#10-coverage-and-limitations).

## 2. Operation discovery

Operations are represented by the public struct `ASCOpenAPIOperation`:

```swift
public struct ASCOpenAPIOperation: Sendable {
    public let id: String                          // Apple operationId
    public let method: String                      // "GET", "POST", "PATCH", "DELETE"
    public let pathTemplate: String                // "/v1/apps/{id}"
    public let pathParameterNames: [String]
    public let queryParameterNames: [String]
    public let requiredQueryParameterNames: [String]
    public let requestContentTypes: [String]
    public let requestBodyRequired: Bool
    public let responseContentTypes: [String]
    public let deprecated: Bool
    public let transportBlocker: String?
}
```

The catalog namespace `ASCOpenAPICatalog` exposes:

- `ASCOpenAPICatalog.all` — the complete `[ASCOpenAPIOperation]` array
- `ASCOpenAPICatalog.group0` … `group32` — the same operations split into
  stable chunks for tooling and review
- one static `op_...` variable per operation

Lookup by method and path template:

```swift
let operation = ASCOpenAPICatalog.all.first {
    $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
}
```

Operations can also be invoked directly through their generated named
entry points on `ASCClient`. Each entry point is named
`ascGenerated_` plus a deterministic operation identifier with a short
route hash, and delegates to the generic dispatcher:

```swift
public func ascGenerated_apps_getinstance_88c8c93973(
    pathParameters: [String: String] = [:],
    queryItems: [URLQueryItem] = [],
    body: ASCOpenAPIBody? = nil,
    accept: String? = nil
) async throws -> Data
```

Entry-point names are generated and stable for a pinned specification;
prefer discovery by `method`/`pathTemplate` in host code that should
survive catalog regeneration.

## 3. Authentication

All catalog API requests reuse the hosting `ASCClient`:

- the ES256 JWT created during `ASCClient` initialization is attached as
  `Authorization: Bearer <token>`
- all I/O goes through the client's injected `ASCTransport`
- non-2xx responses are classified by the shared `ASCAPIError` mapping

There is no separate authentication path for the catalog and no way to
supply a different token to a catalog call.

Third-party presigned upload URLs are a different boundary. The catalog
dispatcher builds its request URLs only from the client's configured
`baseURL` plus a validated operation path, so a presigned upload URL can
never be passed through the catalog, and catalog requests can never
attach the App Store Connect JWT to an external origin. Asset upload
operations use the package's dedicated upload workflow, which keeps the
JWT off presigned URLs by design.

## 4. GET

The following example is the complete round trip for reading a single
app. It compiles against the public API and runs offline against any
injected transport fixture; against the real service it requires valid
credentials and an existing app ID.

```swift
import ASCAPIKit

struct AppDocument: Decodable, Sendable {
    struct Resource: Decodable, Sendable {
        let type: String
        let id: String
    }
    let data: Resource
}

func readApp(
    client: ASCClient,
    appID: String
) async throws -> AppDocument {
    guard let operation = ASCOpenAPICatalog.all.first(where: {
        $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
    }) else {
        fatalError("Pinned catalog must contain GET /v1/apps/{id}")
    }

    let data = try await client.ascOpenAPI(
        operation,
        pathParameters: ["id": appID],
        queryItems: [
            URLQueryItem(name: "fields[apps]", value: "name,bundleId")
        ]
    )

    return try JSONDecoder().decode(AppDocument.self, from: data)
}
```

`pathParameters` keys must exactly match the operation's
`pathParameterNames`. Unknown keys throw
`ASCOpenAPICatalogError.unexpectedPathParameter`; missing, empty, or
unsafe values throw `ASCOpenAPICatalogError.invalidPathParameter`.

## 5. POST / PATCH / DELETE

Catalog request bodies use `ASCOpenAPIBody`:

```swift
public enum ASCOpenAPIBody: Sendable {
    case json(ASCJSONValue)
    case bytes(Data, contentType: String)
}
```

### POST

JSON:API creation documents are constructed as `ASCJSONValue`. The
top-level document must be a JSON object. This example creates an app
info localization; it is a demonstration of the request shape only and is
not executed during testing.

```swift
let body: ASCJSONValue = .object([
    "data": .object([
        "type": .string("appInfoLocalizations"),
        "attributes": .object([
            "locale": .string("en-US"),
            "name": .string("Name")
        ]),
        "relationships": .object([
            "appInfo": .object([
                "data": .object([
                    "type": .string("appInfos"),
                    "id": .string(appInfoID)
                ])
            ])
        ])
    ])
])

let data = try await client.ascOpenAPI(
    createOperation,
    body: .json(body)
)
```

The dispatcher encodes the JSON value and sends it with the
operation's declared request content type (`application/json`).

### PATCH

PATCH documents follow the same JSON:API shape with the resource `id`
inside the `data` object and in the path:

```swift
// Demonstration only: not executed during testing.
let body: ASCJSONValue = .object([
    "data": .object([
        "type": .string("appInfoLocalizations"),
        "id": .string(localizationID),
        "attributes": .object([
            "name": .string("Updated Name")
        ])
    ])
])

let data = try await client.ascOpenAPI(
    updateOperation,
    pathParameters: ["id": localizationID],
    body: .json(body)
)
```

### DELETE

A successful DELETE commonly returns HTTP 204 with an empty body. The
dispatcher returns the response body as `Data`, so an empty `Data` value
is a normal successful result:

```swift
// Demonstration only: not executed during testing.
let data = try await client.ascOpenAPI(
    deleteOperation,
    pathParameters: ["id": localizationID]
)

if data.isEmpty {
    // 204 No Content, or an empty 2xx body.
}
```

## 6. Query parameters

Query parameters are plain `URLQueryItem` values. The dispatcher checks
every item name against the operation's `queryParameterNames` and rejects
unknown names; required parameters are checked against
`requiredQueryParameterNames`.

```swift
let data = try await client.ascOpenAPI(
    listOperation,                                  // GET /v1/apps
    queryItems: [
        URLQueryItem(name: "filter[bundleId]", value: bundleID),
        URLQueryItem(name: "fields[apps]", value: "name,sku"),
        URLQueryItem(name: "include", value: "appStoreVersions"),
        URLQueryItem(name: "limit", value: "50")
    ]
)
```

Conventions used across the pinned specification:

- `fields[<resourceType>]` — sparse fieldsets; multiple fields are
  conventionally comma-joined into one value
- `include` — related resources to include, comma-joined
- `filter[...]` — server-side filtering; names and value semantics are
  operation-specific (for example `filter[apps]`, `filter[bundleId]`,
  `filter[appStoreVersions.platform]`)
- `limit` and `limit[<relationship>]` — page size and per-relationship
  limits
- `sort` — operation-specific sort keys

Array serialization is the caller's responsibility. The pinned
specification declares per-parameter `style` and `explode` settings, and
they are **not uniform across operations**: some array parameters are
comma-joined into a single value (`explode: false`), others are repeated
key=value pairs (`explode: true`). The catalog dispatcher sends
`URLQueryItem` values exactly as given and does not force one encoding
for all arrays. Build items according to the parameter's declared style,
or use the generated typed query structs where available (for the three
generated GET operations, whose array parameters are comma-joined).

## 7. Binary requests

`ASCOpenAPIBody.bytes(Data, contentType:)` transmits caller-owned bytes
without re-encoding:

```swift
let data = try await client.ascOpenAPI(
    operation,
    body: .bytes(payload, contentType: "application/json")
)
```

Restrictions enforced before sending:

- the Content-Type must not contain CR/LF and must not be empty
- the base type (the part before `;` parameters) must appear in the
  operation's `requestContentTypes`; otherwise
  `ASCOpenAPICatalogError.unsupportedContentType` is thrown
- in the pinned 4.5.1 catalog, operation request bodies accept only
  `application/json`, so `.bytes` is currently valid only with that type

If a future pinned specification introduces `multipart/form-data`
operations, multipart framing (boundaries, part headers) remains entirely
the caller's responsibility. The catalog transmits the exact bytes
supplied and adds nothing.

Note the boundary difference: presigned asset upload URLs are not catalog
requests. They are performed by the package's asset-upload workflow with
the operation-supplied method, byte range, and headers, and never carry
the App Store Connect JWT.

## 8. Responses and errors

Catalog calls return raw `Data`:

- JSON responses are decoded by the caller with `JSONDecoder` into
  caller-owned `Decodable` types. The catalog does not decode for you.
- 204 No Content and other empty 2xx bodies arrive as empty `Data`.
  Handle the empty case explicitly, especially for DELETE.
- Response media types vary by operation (`application/json`,
  `text/csv`, `application/a-gzip`). The dispatcher selects a default
  `Accept` value from the operation's declared response types; pass
  `accept:` explicitly when the caller wants a specific one. Invalid
  values throw `ASCOpenAPICatalogError.unsupportedAccept`.

Input validation errors, thrown before any network I/O, use
`ASCOpenAPICatalogError`:

```swift
public enum ASCOpenAPICatalogError: Error, Sendable, Equatable {
    case unsupportedOperation(String)             // blocked operation or unsafe path
    case invalidPathParameter(String)
    case unexpectedPathParameter(String)
    case invalidQueryParameter(String)
    case missingRequiredQueryParameter(String)
    case missingRequiredBody
    case unexpectedBody
    case unsupportedContentType(String)
    case unsupportedAccept(String)
}
```

HTTP failures use the package-wide `ASCAPIError` classification:

```text
401            -> ASCAPIError.unauthorized
403            -> ASCAPIError.forbidden(detail)
429            -> ASCAPIError.rateLimited
other non-2xx  -> ASCAPIError.serviceError(status, detail)
```

Apple-provided `detail` strings are carried as structured data and are
never replaced with presentation text.

## 9. Security

- **HTTPS only.** Catalog request URLs are built from the client's
  `baseURL` and a validated `/vN/...` operation path. The client requires
  HTTPS, a non-empty host, no URL user information, and no URL password
  for catalog requests, and throws `ASCAPIError.invalidResponse` before
  any network I/O otherwise. Plaintext HTTP cannot carry the Bearer
  token through the catalog.
- **Path parameter validation.** Substituted path values are restricted
  to unreserved URL characters, bounded in length, and `.`/`..` are
  rejected, so a parameter value cannot change the addressed resource or
  escape the operation's path template.
- **JWT hygiene.** The token is created once per client and is never
  logged, never embedded in errors, and never written to diagnostics by
  the package.
- **External upload URLs.** Presigned upload URLs used by the asset
  upload workflow are not authenticated with the App Store Connect JWT
  and cannot be reached through the catalog.
- **No automatic behavior.** The catalog never retries, never follows
  `links.next`, never refreshes tokens, and never schedules requests.
  When the token expires, construct a new `ASCClient`.

The default `URLSessionASCTransport` additionally refuses, before any
network I/O, to send any Authorization header over plaintext HTTP or to a
URL with user information, and refuses to follow a redirect of an
authenticated request to a different origin.

## 10. Coverage and limitations

The authoritative coverage report is generated from the pinned
specification and checked into the repository:

- `Tools/ASCOpenAPI/catalog-coverage-4.5.1.json`
- `Tools/ASCOpenAPI/catalog-coverage-4.5.1.md`

Current values:

| Metric | Count |
| --- | ---: |
| `officialOperations` | 1303 |
| `generatedNamedOperations` | 1303 |
| `genericTransportCallable` | 1303 |
| `transportBlocked` | 0 |
| `schemaFullyTyped` | 0 |
| `liveAppleVerified` | 0 |

These metrics measure different things:

- **Named operation entry points (1303)** — every official operation has a
  generated `ascGenerated_...` Swift entry point and a catalog record.
- **Generic transport callable (1303)** — every operation can be invoked
  through `ascOpenAPI` with raw `Data` responses.
- **Fully schema-typed (0)** — no catalog operation has a complete
  generated Codable model for its full schema. Five operations have
  partial typed wrappers; their JSON-backed relationships, links, and
  included records are not schema-complete.
- **Live Apple verified (0)** — no catalog operation has been verified
  against the real App Store Connect service by this generation.

Additional limitations:

- Query name validation is not value-level schema validation.
- The dispatcher does not follow `links.next`; use the generic
  `list`/`listAll` primitives or paginate manually.
- Optional custom headers declared by some operations are not exposed;
  callers needing them must use the generic primitives where possible.
- Permissions, business rules, and rate limits are Apple's; the catalog
  adds no local policy.

## 11. Versioning

The catalog is pinned to Apple OpenAPI **4.5.1** by SHA-256
(`7b826ae9ca3e45b0e7df2643cbb811c9930632640944db11a8af4586fab9db46` for
the official source file and
`7518d3a94a8bd701ac25c1c601b95b8f53aad92091affb15a2a9d331713dac1a` for
the embedded JSON).

The catalog does **not** automatically track Apple's latest published
specification. When Apple publishes a new specification version:

1. obtain the official specification archive for that version
2. regenerate the catalog with the offline tooling under
   `Tools/ASCOpenAPI/` (see its README)
3. review the operation diff with `asc_openapi.py diff`
4. run the Swift and Python test suites
5. update the pinned hashes, coverage report, and documentation through
   an explicit, reviewed package decision

Operation names embed a short route hash, so renaming or regenerating
against a different specification can change entry-point names; treat
catalog regeneration as a reviewed migration, not a drop-in update.
