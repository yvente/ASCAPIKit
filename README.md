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

Select the latest tagged version.

### Package.swift

Add ASCAPIKit as a package dependency using semantic versioning:

```swift
dependencies: [
    .package(
        url: "https://github.com/yvente/ASCAPIKit.git",
        from: "0.1.0"
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

## App screenshots

ASCAPIKit provides typed primitives for App Store screenshot management.

Screenshot sets can be listed, read, created, and deleted for an App Store
version localization.

```swift
let sets = try await client.listScreenshotSets(
    versionLocalizationID: localizationID
)

let set = try await client.createScreenshotSet(
    versionLocalizationID: localizationID,
    displayType: .iPhone67
)
```

Screenshots can be listed and read:

```swift
let screenshots = try await client.listScreenshots(
    screenshotSetID: set.id
)

let screenshot = try await client.getScreenshot(
    id: screenshotID
)
```

### Uploading a screenshot

App Store Connect asset uploads use a reservation, binary upload, and commit
workflow.

ASCAPIKit exposes the complete screenshot upload convenience:

```swift
let screenshot = try await client.uploadScreenshot(
    fileURL: fileURL,
    screenshotSetID: set.id
)
```

The convenience performs:

1. screenshot reservation
2. all upload operations returned by App Store Connect
3. whole-file MD5 calculation
4. upload commit

The returned resource may still have the asset delivery state
`UPLOAD_COMPLETE`.

ASCAPIKit does not poll for `COMPLETE`. Hosts can read the resource again:

```swift
let screenshot = try await client.getScreenshot(
    id: screenshotID
)

let state = screenshot.attributes
    .assetDeliveryState?
    .state
```

ASCAPIKit does not retry failed upload operations or apply scheduling/backoff
policy.

### Downloading a screenshot

`AppScreenshot` exposes an `imageAsset` after App Store Connect has
processed the screenshot.

`ASCImageAsset` contains the asset's native width, height, and Apple's
template URL.

Resolve the native-size image URL:

```swift
let url = try imageAsset.resolvedURL(
    format: .png
)
```

Download an already-fetched screenshot resource:

```swift
let data = try await client.downloadScreenshot(
    screenshot,
    format: .png
)
```

Or fetch the screenshot resource by ID and then download its image:

```swift
let data = try await client.downloadScreenshot(
    id: screenshotID,
    format: .png
)
```

The authenticated App Store Connect resource request uses the client's JWT.

The resolved image CDN request does not include the App Store Connect JWT.

`downloadImageAsset` is also available as the lower-level reusable image
download primitive:

```swift
let data = try await client.downloadImageAsset(
    imageAsset,
    format: .png
)
```

The returned `Data` represents the image delivered by Apple's image asset
URL at the asset's native dimensions.

ASCAPIKit does not promise that these bytes are byte-for-byte identical to
the originally uploaded source file.

ASCAPIKit does not cache, persist, decode, resize, or export downloaded
images.

### Screenshot order

```swift
try await client.reorderScreenshots(
    screenshotSetID: set.id,
    orderedScreenshotIDs: ids
)

let currentOrder = try await client.listScreenshotOrder(
    screenshotSetID: set.id
)
```

### Generic asset upload primitive

The low-level binary uploader is reusable by future asset resource layers:

```swift
let checksum = try await client.uploadAsset(
    fileURL: fileURL,
    operations: uploadOperations
)
```

Upload-operation requests use the method, URL, byte range, and request headers
supplied by App Store Connect.

ASCAPIKit does not attach its App Store Connect JWT to presigned asset upload
URLs.

### Asset upload errors

Local file validation and presigned asset-upload failures use
`ASCAssetUploadError`:

- `invalidAssetFile`
- `invalidUploadOperation`
- `unsafeAssetUploadURL`
- `assetUploadFailed(Int)`

Authenticated App Store Connect API failures continue to use
`ASCAPIError`.

### Image download errors

Image-asset URL resolution and image download failures use
`ASCImageDownloadError`:

- `invalidImageAsset`
- `invalidImageFormat`
- `unsafeImageURL`
- `imageUnavailable`
- `downloadFailed(Int)`
- `emptyResponse`

Authenticated App Store Connect API failures continue to use
`ASCAPIError`.

## App previews

ASCAPIKit provides typed support for App Store app preview sets and app
preview video assets.

App preview display types intentionally differ from screenshot display
types. For example:

```swift
ASCPreviewType.iPhone67.rawValue
// "IPHONE_67"

ASCScreenshotDisplayType.iPhone67.rawValue
// "APP_IPHONE_67"
```

List or create a preview set for an App Store version localization:

```swift
let sets = try await client.listPreviewSets(
    versionLocalizationID: localizationID
)

let set = try await client.createPreviewSet(
    versionLocalizationID: localizationID,
    previewType: .iPhone67
)
```

Upload an app preview:

```swift
let preview = try await client.uploadPreview(
    fileURL: videoFileURL,
    previewSetID: set.id
)
```

The upload convenience performs:

1. an App Preview reservation
2. every upload operation returned by App Store Connect
3. whole-file MD5 calculation
4. upload commit

Binary upload operations reuse ASCAPIKit's generic asset uploader and do
not include the App Store Connect JWT.

App preview processing is asynchronous. Read the preview again to inspect
its modern video-delivery state:

```swift
let current = try await client.getPreview(
    id: preview.id
)

let state = current.attributes
    .videoDeliveryState?
    .state
```

ASCAPIKit does not poll for completion.

The current App Store Connect API deprecates `assetDeliveryState` for app
previews in favor of `videoDeliveryState`. ASCAPIKit's typed App Preview
API uses `videoDeliveryState`.

### Poster frame timecode

Set the App Store preview poster-frame timecode:

```swift
let updated =
    try await client.updatePreviewFrameTimeCode(
        id: preview.id,
        timeCode: "00:00:05:00"
    )
```

ASCAPIKit sends the timecode to App Store Connect but does not duplicate
Apple's media/timecode validation rules locally.

### App preview order

```swift
try await client.reorderPreviews(
    previewSetID: set.id,
    orderedPreviewIDs: ids
)

let currentOrder = try await client.listPreviewOrder(
    previewSetID: set.id
)
```

### Downloading an app preview

An `AppPreview` may expose a `videoUrl` after App Store Connect has
processed the video.

Download an already-fetched preview resource:

```swift
let data = try await client.downloadPreviewVideo(
    preview
)
```

Or fetch the preview resource by ID and then download the video:

```swift
let data = try await client.downloadPreviewVideo(
    id: previewID
)
```

The App Store Connect resource request uses the client's JWT.

The subsequent media URL request does not include the App Store Connect
JWT.

ASCAPIKit validates that the media URL is HTTPS and does not contain URL
credentials.

The returned `Data` represents the video delivered through Apple's
`videoUrl`. ASCAPIKit does not promise byte-for-byte recovery of the
original uploaded source file.

ASCAPIKit does not cache, persist, decode, transcode, stream, or export
preview video data.

### Preview frame image

Modern App Preview resources expose `previewFrameImage`.

The older `previewImage` attribute is deprecated and is not used by
ASCAPIKit's typed App Preview layer.

A preview frame image contains its image asset and processing state.

```swift
let state = preview.attributes
    .previewFrameImage?
    .state?
    .state
```

Download the frame image from an already-fetched preview:

```swift
let data = try await client.downloadPreviewFrameImage(
    preview,
    format: .png
)
```

Or fetch the App Preview resource by ID first:

```swift
let data = try await client.downloadPreviewFrameImage(
    id: previewID,
    format: .png
)
```

Preview-frame image downloading reuses ASCAPIKit's generic
`ASCImageAsset` resolver and image downloader.

Image CDN requests do not include the App Store Connect JWT.

ASCAPIKit does not require a specific preview-frame processing-state
string before attempting a download when an image asset is already
available.

### App preview download errors

Preview-video URL and download failures use
`ASCPreviewDownloadError`:

- `videoUnavailable`
- `unsafeVideoURL`
- `downloadFailed(Int)`
- `emptyResponse`

Preview-frame image downloads reuse `ASCImageDownloadError`.

## App Store review attachments

ASCAPIKit provides typed support for files attached to App Store review
details.

Review attachments can include documentation, demo videos, or other
material that helps App Review evaluate an app.

List existing attachments:

```swift
let attachments =
    try await client.listReviewAttachments(
        reviewDetailID: reviewDetailID
    )
```

Upload an attachment:

```swift
let attachment =
    try await client.uploadReviewAttachment(
        fileURL: fileURL,
        reviewDetailID: reviewDetailID
    )
```

The upload convenience performs:

1. an App Store review attachment reservation
2. every upload operation returned by App Store Connect
3. whole-file MD5 calculation
4. upload commit

Binary upload operations reuse ASCAPIKit's generic asset uploader and do
not include the App Store Connect JWT.

Read processing state:

```swift
let current =
    try await client.getReviewAttachment(
        id: attachment.id
    )

let state =
    current.attributes
        .assetDeliveryState?
        .state
```

Unlike the modern App Preview API, App Store review attachments currently
use `assetDeliveryState` as their documented processing-state attribute.

ASCAPIKit does not poll for completion.

Review attachment resources do not expose a typed downloadable media URL
in this layer, so ASCAPIKit does not invent a download URL or reuse
presigned upload URLs for downloads.

App Store review detail creation and editing are outside this phase.

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
