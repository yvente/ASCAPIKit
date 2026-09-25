# ASCAPIKit

ASCAPIKit is a small Swift package containing reusable primitives for
communicating with the App Store Connect API.

It is intentionally independent from any particular host application or
product workflow.

The package provides:

- ES256 App Store Connect JWT generation
- JSON:API resource decoding
- paginated collection reads
- JSON:API PATCH and POST mutations
- structured HTTP/API error classification
- transport injection for deterministic testing
- typed convenience methods for a small built-in resource set
- public generic primitives for endpoints not covered by the conveniences

## Requirements

- Swift 5.9+
- macOS 14+
- Foundation
- CryptoKit
- no third-party dependencies

## Installation

### Xcode

In Xcode, choose:

```text
File → Add Package Dependencies...
```

and enter the repository URL:

```text
https://github.com/yvente/ASCAPIKit
```

Before the first tagged release, use the main branch when evaluating the
package.

### Package.swift

Add ASCAPIKit as a package dependency pinned to the main branch:

```swift
dependencies: [
    .package(
        url: "https://github.com/yvente/ASCAPIKit.git",
        branch: "main"
    )
]
```

and add the product to your target:

```swift
.product(
    name: "ASCAPIKit",
    package: "ASCAPIKit"
)
```

Then import it:

```swift
import ASCAPIKit
```

Once a tagged release is published, prefer a semantic-version dependency
over the branch pin.

## Credentials

ASCAPIKit supports both App Store Connect team API keys and individual
API keys.

### Team API key

```swift
let configuration = ASCCredentialConfiguration(
    kind: .team,
    keyID: "KEY_ID",
    issuerID: "ISSUER_ID"
)
```

A team token contains:

- `alg = ES256`
- `kid = keyID`
- `typ = JWT`
- `iat`
- `exp = iat + 600`
- `aud = appstoreconnect-v1`
- `iss = issuerID`

### Individual API key

```swift
let configuration = ASCCredentialConfiguration(
    kind: .individual,
    keyID: "KEY_ID",
    issuerID: nil
)
```

An individual token uses:

```text
sub = user
```

instead of `iss`.

## Creating a client

```swift
let client = try ASCClient(
    configuration: configuration,
    privateKeyPEM: privateKeyPEM
)
```

The JWT is created once during `ASCClient` initialization.

ASCAPIKit does not refresh or rotate tokens. Tokens created by this package
expire 10 minutes after their `iat` value. A host that needs to continue
making requests after expiration must construct a new `ASCClient`.

## Typed convenience API

ASCAPIKit exposes convenience methods for the built-in resources.

### Reads

```swift
let apps = try await client.listApps()

let versions = try await client.listVersions(
    appID: appID
)

let appInfos = try await client.listAppInfos(
    appID: appID
)

let versionLocalizations =
    try await client.listVersionLocalizations(
        versionID: versionID
    )

let appInfoLocalizations =
    try await client.listAppInfoLocalizations(
        appInfoID: appInfoID
    )
```

### Updates

```swift
let localization =
    try await client.updateAppInfoLocalization(
        id: localizationID,
        attributes: [
            "name": "Updated Name",
            "subtitle": "Updated Subtitle"
        ]
    )
```

```swift
let localization =
    try await client.updateVersionLocalization(
        id: localizationID,
        attributes: [
            "description": "Updated description"
        ]
    )
```

### Creates

```swift
let localization =
    try await client.createAppInfoLocalization(
        appInfoID: appInfoID,
        locale: "en-US",
        attributes: [
            "name": "Name",
            "subtitle": "Subtitle"
        ]
    )
```

```swift
let localization =
    try await client.createVersionLocalization(
        versionID: versionID,
        locale: "en-US",
        attributes: [
            "description": "Description",
            "keywords": "one,two"
        ]
    )
```

## Generic read primitive

Typed convenience methods are not the boundary of the package.

Hosts can decode any compatible App Store Connect JSON:API collection
through the public generic `list` primitive.

```swift
struct BuildResource: Decodable, Sendable {
    let id: String
    let attributes: Attributes

    struct Attributes: Decodable, Sendable {
        let version: String
    }
}

let builds: [BuildResource] = try await client.list(
    "/v1/builds",
    resourceType: "builds",
    fields: "version",
    limit: 200
)
```

`list` automatically follows `links.next`.

Every page URL is validated before it is requested. Pagination URLs must:

1. use `https`
2. use the same host as the client's `baseURL`
3. use the same port as the client's `baseURL`
4. contain no URL user
5. contain no URL password
6. use a path beginning with `/v1/`

A seen-URL set also prevents pagination cycles.

Unsafe pagination URLs fail with:

```swift
ASCAPIError.unsafePaginationURL
```

Pagination cycles fail with:

```swift
ASCAPIError.invalidResponse
```

## Generic write primitive

Hosts can perform JSON:API mutations without adding a typed convenience
method to ASCAPIKit.

```swift
struct CustomResource: Decodable {
    let id: String
}

let resource: CustomResource = try await client.mutate(
    method: "PATCH",
    path: "/v1/customResources/resource-id",
    resourceType: "customResources",
    id: "resource-id",
    attributes: [
        "value": "updated"
    ]
)
```

Relationships are represented with the optional relationship tuple:

```swift
let resource: CustomResource = try await client.mutate(
    method: "POST",
    path: "/v1/customResources",
    resourceType: "customResources",
    attributes: [
        "locale": "en-US"
    ],
    relationship: (
        name: "parent",
        type: "parents",
        id: "parent-id"
    )
)
```

The generated request body follows the JSON:API resource-document shape.

## Transport injection

All HTTP I/O passes through `ASCTransport`.

`ASCClient` itself does not call `URLSession`.

The default implementation is:

```swift
URLSessionASCTransport
```

A host or test can inject another transport:

```swift
struct FixtureTransport: ASCTransport {
    let data: Data
    let statusCode: Int

    func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse) {
        let response = HTTPURLResponse(
            url: request.url!,
            statusCode: statusCode,
            httpVersion: nil,
            headerFields: nil
        )!

        return (data, response)
    }
}
```

```swift
let client = try ASCClient(
    configuration: configuration,
    privateKeyPEM: privateKeyPEM,
    transport: fixtureTransport
)
```

This allows tests to exercise request construction, pagination, JSON decoding,
and error handling without real network access.

## Errors

ASCAPIKit exposes structured errors only:

```swift
public enum ASCAPIError: Error, Equatable, Sendable {
    case incompleteCredential
    case invalidPrivateKey
    case invalidResponse
    case unsafePaginationURL
    case unauthorized
    case forbidden(String)
    case rateLimited
    case serviceError(Int, String)
}
```

The package does not implement `LocalizedError` and does not provide
user-facing error descriptions.

For `403` and other service errors, Apple-provided `detail` values are passed
through without replacement text.

If no detail is returned, the associated detail string is empty.

## Networking boundary

`URLSessionASCTransport` is the only production implementation in the package
that directly touches `URLSession`.

All `ASCClient` HTTP I/O goes through the injected `ASCTransport`.

## Security

Authorization tokens and Authorization header values must never be written to
logs, errors, or diagnostic output.

Tests should inspect token structure only when necessary and must not print
the token.

## Deliberately not included

ASCAPIKit does not implement:

- retries
- caching
- token refresh
- credential persistence
- UI
- localized/user-facing messages
- application-specific workflows
- additional typed endpoint layers

Hosts should build those policies above ASCAPIKit when needed.
