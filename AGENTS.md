# AGENTS.md

This repository contains a reusable App Store Connect API primitive layer.

The following rules are invariants. Changes must preserve them.

## 1. Keep the package host-independent

ASCAPIKit must not contain:

- host application names
- product-specific terminology
- feature-specific workflow assumptions
- UI state
- application navigation concepts

Domain code must remain reusable by any host that needs App Store Connect API
access.

## 2. Keep generic primitives public

The generic APIs are part of the primary package contract:

```swift
ASCClient.list(
    _:resourceType:fields:limit:
)
```

and:

```swift
ASCClient.mutate(
    method:path:resourceType:id:attributes:relationship:
)
```

Do not make these APIs internal or private.

Typed endpoint methods are convenience wrappers, not the package boundary.

## 3. Do not bypass pagination safety validation

Every URL followed through `links.next` must be validated before transport
execution.

The required checks are:

1. scheme is `https`
2. host equals the configured `baseURL` host
3. port equals the configured `baseURL` port
4. URL contains no user
5. URL contains no password
6. path begins with `/v1/`

A seen-URL set must remain in the pagination loop so cycles cannot trigger
unbounded requests.

Do not introduce an alternate pagination path that skips these checks.

## 4. Do not add user-facing text

Source code must not contain user-facing presentation copy in any language.

`ASCAPIError` is a structured error type.

Do not:

- conform it to `LocalizedError`
- add `errorDescription`
- add fallback UI messages
- translate Apple errors
- replace missing Apple detail strings with presentation text

Apple `detail` content may be carried as structured data.

## 5. Keep networking injected

All client HTTP I/O must pass through:

```swift
ASCTransport
```

`ASCClient` must not call `URLSession`, `URLSession.shared`, or another direct
network API.

`URLSessionASCTransport` is the only package production implementation allowed
to directly use `URLSession`.

## 6. Keep the package UI-free

Do not import:

- SwiftUI
- AppKit
- UIKit
- other UI frameworks

The package is a networking/API primitive layer.

## 7. Keep third-party dependencies at zero

ASCAPIKit must use only Apple system frameworks required by the package,
currently Foundation and CryptoKit.

Do not add external Swift packages.

## 8. Preserve JWT semantics

JWT generation must remain:

```text
alg = ES256
typ = JWT
aud = appstoreconnect-v1
exp = iat + 600
```

Team credentials use:

```text
iss = issuerID
```

Individual credentials use:

```text
sub = user
```

Signing uses a P-256 private key loaded from `.p8` PEM content.

JWT JSON encoding must remain deterministic through sorted JSON keys.

Base64url output must omit padding.

## 9. Construct the client token once

`ASCClient` creates its JWT during initialization.

Do not add token refresh or token rotation inside the client.

When the token expires, the host is responsible for constructing another
client.

## 10. Never expose authorization secrets

Do not write any of the following to logs, errors, debug descriptions, test
diagnostics, or user-facing output:

- JWT strings
- private key PEM content
- Authorization header values

Tests may structurally inspect a locally generated token but must not print it.

## 11. Preserve structured error classification

HTTP status handling must retain these mappings:

```text
401 -> ASCAPIError.unauthorized
403 -> ASCAPIError.forbidden(detail)
429 -> ASCAPIError.rateLimited
other non-2xx -> ASCAPIError.serviceError(status, detail)
```

`detail` must preserve Apple-returned detail content.

If no detail exists, use an empty string.

Do not substitute fallback prose.

## 12. Keep JSON:API request shapes stable

Mutation documents must use:

```json
{
  "data": {
    "type": "...",
    "id": "...",
    "attributes": {}
  }
}
```

for updates, and optionally:

```json
{
  "relationships": {
    "...": {
      "data": {
        "type": "...",
        "id": "..."
      }
    }
  }
}
```

for related resource creation.

Do not move resource fields outside the JSON:API `data` object.

## 13. Do not add typed endpoints casually

The package currently exposes typed conveniences only for:

- listing apps
- listing app store versions
- listing app infos
- listing app store version localizations
- listing app info localizations
- updating app info localizations
- updating app store version localizations
- creating app info localizations
- creating app store version localizations

The screenshot convenience layer is also an explicitly approved package-level
domain and may expose typed methods for:

- listing and reading app screenshot sets
- creating and deleting app screenshot sets
- listing and reading app screenshots
- creating screenshot upload reservations
- uploading screenshot asset bytes
- committing screenshot uploads
- deleting screenshots
- reading screenshot relationship order
- reordering screenshots
- resolving screenshot image asset URLs
- downloading screenshot image data

Do not add another typed endpoint without an explicit package-level decision.

Use the generic primitives for endpoints outside this convenience set.

## 14. Keep resource models presentation-free

Resource models must not conform to `Identifiable` merely for UI consumption
and must not expose presentation helpers such as localized titles or labels.

Models should represent API data only.

## 15. Tests must not access the real network

All unit tests must inject an `ASCTransport` stub or fixture.

Tests must cover, at minimum:

- team JWT claims
- individual JWT claims
- signature verification
- base64url behavior
- incomplete credentials
- invalid private keys
- multi-page pagination
- unsafe pagination schemes
- unsafe pagination hosts
- unsafe pagination paths
- pagination cycles
- HTTP error classification
- Apple detail pass-through
- PATCH JSON:API shape
- POST JSON:API shape
- relationship shape
- Authorization Bearer construction

Do not make App Store Connect requests from the test suite.

## 16. Do not add retry or caching policy

Retries, backoff, caching, persistence, and request scheduling belong above this
package.

ASCAPIKit should remain a predictable primitive layer.

## 17. Preserve the minimum platform

The package minimum platform is:

```swift
.macOS(.v14)
```

A platform change requires an explicit package-level decision.

## 18. Preserve asset-upload security boundaries

Asset upload operations are different from authenticated App Store Connect API
requests.

For URLs supplied through `uploadOperations`:

1. require `https`
2. reject URL user information
3. reject URL passwords
4. use the HTTP method supplied by the operation
5. use the exact byte range described by `offset` and `length`
6. apply the request headers supplied by the operation
7. never attach the App Store Connect JWT
8. never log the presigned upload URL
9. never log upload request headers
10. never introduce retry, backoff, or scheduling policy inside ASCAPIKit

The complete source file checksum used to commit an asset is the lowercase MD5
checksum of the original complete file.

Upload operations must collectively cover the complete file without gaps or
overlaps before any upload request is performed.

## 19. Preserve image-download security boundaries

`ImageAsset.templateUrl` represents an Apple image asset URL template.

Image downloads are different from authenticated App Store Connect API
requests.

For resolved image URLs:

1. require `https`
2. require a non-empty host
3. reject URL user information
4. reject URL passwords
5. substitute the asset's native width and height
6. validate the requested format before substitution
7. never attach the App Store Connect JWT
8. never log the template URL
9. never log the resolved image URL
10. do not add retry, cache, persistence, resizing, or image-decoding policy

`downloadScreenshot(id:)` may first perform an authenticated App Store
Connect request to read the screenshot resource.

The subsequent image CDN request must remain unauthenticated.

The image delivered through `ImageAsset.templateUrl` must not be documented
as guaranteed byte-for-byte recovery of the original uploaded source file.
