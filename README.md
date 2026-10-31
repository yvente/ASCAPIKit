# ASCAPIKit

ASCAPIKit is a Swift package for the App Store Connect API with no
third-party runtime dependencies.

It provides both commonly used typed convenience methods and a complete,
generated operation catalog based on Apple's official pinned OpenAPI 4.5.1
specification, on top of shared generic request primitives.

The package is intentionally independent from any particular host
application or product workflow.

The package provides:

- ES256 App Store Connect JWT generation
- JSON:API resource decoding
- paginated collection reads with caller filters
- JSON:API PATCH and POST mutations
- a public generic transport layer with structured error classification
- a generated OpenAPI operation catalog covering all 1,303 operations of
  pinned Apple OpenAPI 4.5.1, callable as raw authenticated requests
- type-safe query overloads for three generated GET operations
  (79 typed query parameters)
- App Store Connect asset upload (reservation, binary upload, commit)
- image asset download
- transport injection for deterministic testing
- typed convenience layers for screenshots, app previews, review
  attachments, review details, modern review submissions,
  Analytics Reports, Sales and Trends reports, and Finance reports
- public generic primitives for endpoints not covered by the typed
  conveniences

## Requirements

- Swift 5.9+
- macOS 14+
- Foundation
- CryptoKit
- no third-party dependencies

## Installation

### Release notes

Version `0.5.0` is the tagged release containing the complete OpenAPI 4.5.1
operation catalog, the generated named entry points, and the typed query
overloads. Earlier tagged releases (`0.3.0`, `0.4.0`) do not include the
catalog.

For production use, prefer a tagged release. The `main` branch is the
ongoing development branch and may change between tags.

### Xcode

In Xcode, choose:

```text
File → Add Package Dependencies...
```

and enter the repository URL:

```text
https://github.com/yvente/ASCAPIKit
```

Select version `0.5.0` or later.

### Package.swift

Add ASCAPIKit as a package dependency using semantic versioning:

```swift
dependencies: [
    .package(
        url: "https://github.com/yvente/ASCAPIKit.git",
        from: "0.5.0"
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

## OpenAPI operation catalog

ASCAPIKit includes a generated catalog built from Apple's official,
SHA-256-pinned OpenAPI 4.5.1 specification. Every operation in the
specification is exposed twice:

1. a named generated entry point on `ASCClient`
   (`ascGenerated_...`) that returns raw `Data`
2. the public generic dispatcher
   `ASCClient.ascOpenAPI(_:pathParameters:queryItems:body:accept:)`

Both route through the same injected `ASCTransport`, the same JWT, and the
same structured `ASCAPIError` classification as the typed convenience
layers.

### Catalog coverage

The numbers below are taken from the repository's own coverage report,
`Tools/ASCOpenAPI/catalog-coverage-4.5.1.json`:

| Metric | Count |
| --- | ---: |
| Apple OpenAPI 4.5.1 official operations | 1303 |
| Generated named entry points | 1303 |
| Callable through the generic transport dispatcher | 1303 |
| Explicit transport blockers | 0 |
| Fully schema-typed by this generation | 0 |
| Live-Apple-verified by this generation | 0 |

What 1,303/1,303 means: every official operation has a named, publicly
callable Swift entry point and can be invoked through the generic raw
request dispatcher.

What 1,303/1,303 does **not** mean:

- it does not mean every API has a complete Codable Swift model
- it does not mean every request parameter is automatically schema-validated
- it does not mean the operations have been verified against the real
  Apple App Store Connect service

The catalog is a raw-transport operation registry, not a fully typed SDK.

### Discovering operations

Operations are `ASCOpenAPIOperation` values exposed through
`ASCOpenAPICatalog`. The complete set is available as
`ASCOpenAPICatalog.all`:

```swift
let operation = ASCOpenAPICatalog.all.first {
    $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
}
```

Each operation exposes `id`, `method`, `pathTemplate`,
`pathParameterNames`, `queryParameterNames`,
`requiredQueryParameterNames`, `requestContentTypes`,
`requestBodyRequired`, `responseContentTypes`, `deprecated`, and
`transportBlocker`. Hosts can use these fields to build their own
request UI, validation, or coverage reporting.

See [docs/OPENAPI_CATALOG.md](docs/OPENAPI_CATALOG.md) for the complete
catalog usage documentation.

### Reading an app through the catalog

```swift
// Discovery by method and path template.
guard let operation = ASCOpenAPICatalog.all.first(where: {
    $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
}) else {
    return
}

// Path parameters are validated before a request is built.
let data = try await client.ascOpenAPI(
    operation,
    pathParameters: ["id": appID],
    queryItems: [
        URLQueryItem(name: "fields[apps]", value: "name,bundleId"),
        URLQueryItem(name: "include", value: "appStoreVersions")
    ]
)

// The response is raw Data. Decoding is the caller's responsibility.
struct AppResponse: Decodable {
    struct Data: Decodable {
        let id: String
    }
    let data: Data
}

let app = try JSONDecoder().decode(AppResponse.self, from: data)
```

The same call through the generated named entry point:

```swift
let data = try await client.ascGenerated_apps_getinstance_88c8c93973(
    pathParameters: ["id": appID]
)
```

### Writing through the catalog

The following examples are demonstrations only. They are not executed
during testing and are never sent to App Store Connect by this package.

POST with a JSON:API request body. Catalog request bodies must be JSON
objects:

```swift
// Demonstration only: this shape is not sent during testing.
let createOperation = ASCOpenAPICatalog.all.first {
    $0.method == "POST" && $0.pathTemplate == "/v1/appInfoLocalizations"
}

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

PATCH uses the same JSON:API `data` shape with an `id` inside the resource
object and the resource ID in the path.

DELETE returns the response body as `Data`. App Store Connect DELETE
endpoints commonly return HTTP 204 with an empty body, so a successful
`ascOpenAPI` call may legitimately return empty `Data`:

```swift
// Demonstration only: this shape is not sent during testing.
let deleteOperation = ASCOpenAPICatalog.all.first {
    $0.method == "DELETE" && $0.pathTemplate == "/v1/appInfoLocalizations/{id}"
}

let data = try await client.ascOpenAPI(
    deleteOperation,
    pathParameters: ["id": localizationID]
)

if data.isEmpty {
    // Typical for a 204 response.
}
```

### Binary request bodies

`ASCOpenAPIBody.bytes(Data, contentType:)` hands the exact bytes to the
transport. The base Content-Type must be one of the operation's
`requestContentTypes`; the dispatcher rejects unsupported types before
sending. In the pinned 4.5.1 catalog, request bodies are limited to
`application/json`, so `.bytes` is only valid with that type. If a future
pinned specification adds `multipart/form-data` operations, multipart
framing remains entirely the caller's responsibility — the catalog
transmits the bytes as given.

### Catalog limits

- The catalog does not automatically follow `links.next` pagination.
- Returned `Data` is raw; decoding is the caller's responsibility.
- Query name validation (`invalidQueryParameter`,
  `missingRequiredQueryParameter`) checks names against the pinned
  specification. It is not full schema validation of values.
- Complex JSON:API documents, including relationships, remain the
  caller's responsibility to construct.
- Some operations use special media types (`text/csv`,
  `application/a-gzip` responses). Pass an explicit `accept:` value when
  the default `application/json` is not what the operation should receive.
- Presigned upload URLs are a different security boundary and must never
  be passed through the catalog. Asset uploads use the dedicated
  upload workflow described below.

## Type-safe query overloads

For the five generated operations, ASCAPIKit ships generated response
models, and for three GET operations it ships generated query structs
with 79 typed query parameters:

- `GET /v1/apps/{id}` — `ascTypedGetApp(id:query:)`
- `GET /v1/builds/{id}` — `ascTypedGetBuild(id:query:)`
- `GET /v1/appStoreVersions/{id}` — `ascTypedGetAppStoreVersion(id:query:)`
- `POST /v1/appStoreVersions` — `ascTypedCreateAppStoreVersion(body:)`
- `PATCH /v1/appStoreVersions/{id}` — `ascTypedUpdateAppStoreVersion(id:body:)`

Query structs encode Apple's declared serialization. Array fields are
comma-joined exactly as the pinned specification requires for these
operations:

```swift
let query = ASCTypedGetAppQuery(
    fields_apps_: ["name", "bundleId"],
    include: ["appStoreVersions"]
)

let response = try await client.ascTypedGetApp(
    id: appID,
    query: query
)
```

These generated APIs are identified as partially typed. JSON-backed
relationships, links, and included records are not schema-complete, and
they are not verified against the live Apple service. Raw
`queryItems:` overloads remain available alongside the typed `query:`
overloads.

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

App Store version resources include `platform`, `versionString`,
`appVersionState`, `createdDate`, and `earliestReleaseDate`.

`createdDate` and `earliestReleaseDate` remain Apple wire-format date-time
strings. ASCAPIKit does not parse them into `Date` or apply time-zone or
calendar conversion. Missing or null attributes decode as `nil`.

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

## Legacy media workflows

Apple's OpenAPI 4.5.1 specification introduces the App Asset Library as a
newer model for managing app media assets. In the pinned 4.5.1 catalog
the legacy screenshot-set and preview-set operations (for example
`appScreenshotSets` and `appPreviews`) are not flagged as deprecated;
Apple's current App Store Connect documentation, however, directs new
media workflows toward the App Asset Library. Consult Apple's
documentation when deciding which model to adopt.

The typed screenshot and preview convenience layers in this package still
use the corresponding legacy App Store Connect endpoints documented below.
They continue to work against the endpoints they were built for.

The App Asset Library resources are reachable through the OpenAPI
operation catalog (for example the `appAssetLibraries`,
`appAssetLibraryImages`, and `appAssetLibraryVideos` operations in
`ASCOpenAPICatalog`). ASCAPIKit does not yet provide an equivalent
high-level upload convenience for the App Asset Library; hosts that adopt
it use the catalog's raw request entry points and own the request
document construction.

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

## App Store review details

ASCAPIKit provides typed support for the App Review information associated
with an App Store version.

Read an existing review detail directly from a version:

```swift
let detail =
    try await client.getReviewDetail(
        appStoreVersionID: versionID
    )
```

You can also read the relationship ID without fetching the full resource:

```swift
let detailID =
    try await client.getReviewDetailID(
        appStoreVersionID: versionID
    )
```

A missing to-one relationship is returned as `nil`.

Create review information for a version:

```swift
let detail =
    try await client.createReviewDetail(
        appStoreVersionID: versionID,
        contactFirstName: firstName,
        contactLastName: lastName,
        contactPhone: phone,
        contactEmail: email,
        demoAccountRequired: false,
        notes: notes
    )
```

The create API models contact first name, contact last name, phone, email,
and `demoAccountRequired` as explicit inputs.

Demo-account name, password, and review notes are optional request values.

ASCAPIKit does not duplicate App Store Connect validation rules for email
addresses, phone numbers, credentials, or review-note content.

### Partial review-detail updates

Update only selected fields:

```swift
let updated =
    try await client.updateReviewDetail(
        id: detail.id,
        changes:
            ASCAppStoreReviewDetailUpdate(
                contactEmail:
                    "new@example.com",
                notes:
                    "Updated review notes"
            )
    )
```

For update values:

- `nil` means omit the attribute from the PATCH request
- an empty string is sent as an explicit empty string
- `false` is sent as an explicit Boolean false

An update with no changed attributes is rejected before a network request.

### Review credentials

`demoAccountPassword` is review credential data.

ASCAPIKit transmits it only as part of the App Store Connect request.
The review-detail convenience layer does not log, cache, or persist review
credentials.

After creating or reading a review detail, its resource ID can be passed
to the review-attachment APIs.

## Review submissions

ASCAPIKit provides typed support for Apple's modern review-submission
workflow.

A review submission is a container associated with an app. Reviewable
resources are added as review-submission items.

Create a submission:

```swift
let submission =
    try await client.createReviewSubmission(
        appID: appID
    )
```

Apple no longer requires the `platform` attribute when creating a review
submission, so this convenience does not send one.

Add an App Store version as an item:

```swift
let item =
    try await client.addAppStoreVersionToReviewSubmission(
        reviewSubmissionID:
            submission.id,
        appStoreVersionID:
            versionID
    )
```

Read the current items:

```swift
let items =
    try await client.listReviewSubmissionItems(
        reviewSubmissionID:
            submission.id
    )
```

List submissions with the official filters:

```swift
let unresolved =
    try await client.listReviewSubmissions(
        appID: appID,
        platform: "IOS",
        states: [
            "UNRESOLVED_ISSUES"
        ]
    )
```

ASCAPIKit's listReviewSubmissions convenience uses the top-level
`reviewSubmissions` collection with `filter[app]`, which also allows
platform and state filters in the same query.

Add any documented reviewable resource as an item:

```swift
let subscriptionItem =
    try await client.addReviewSubmissionItem(
        reviewSubmissionID:
            submission.id,
        target:
            .subscriptionVersion(
                subscriptionVersionID
            )
    )
```

`ASCReviewSubmissionItemTarget` models the documented reviewable resource
relationships, such as App Store versions, custom product pages,
app events, in-app purchase versions, subscription versions, and
Game Center resources.

The `addAppStoreVersionToReviewSubmission` convenience delegates to the
same target-based creation.

The typed creation convenience covers only the documented target cases.
The read model tolerates other review-submission item types that
Apple may return.

### Explicit submission actions

Submitting for review is an explicit host action:

```swift
let submitted =
    try await client.submitReviewSubmission(
        id: submission.id
    )
```

Canceling is also explicit:

```swift
let canceled =
    try await client.cancelReviewSubmission(
        id: submission.id
    )
```

Resolve an item after fixing an unresolved issue:

```swift
let resolved =
    try await client.resolveReviewSubmissionItem(
        id: item.id
    )

let resubmitted =
    try await client.submitReviewSubmission(
        id: submission.id
    )
```

Mark an item removed without deleting it:

```swift
let marked =
    try await client.markReviewSubmissionItemRemoved(
        id: item.id
    )
```

Marking an item removed through a PATCH and deleting an item through
`deleteReviewSubmissionItem` are different server operations. ASCAPIKit
exposes both, and the host chooses which to use.

These methods each perform one App Store Connect request.

They do not perform hidden preflight requests, polling, retries, automatic
submission, automatic resolution, automatic removal, or state gating.

ASCAPIKit does not automatically create a submission, add items, resolve
issues, or submit for review as one combined operation.

The host remains responsible for deciding when a submission is ready.

### Review submission states

ASCAPIKit exposes submission and item states as strings rather than closed
enums so future App Store Connect state values remain decodable.

The package does not use the deprecated App Store Version Submission
resource for this workflow.

Resolving and removing review-submission items are explicit one-key
Boolean actions rather than a generic item-update API.

## Analytics Reports

ASCAPIKit exposes the App Store Connect Analytics Reports resource chain as
typed API primitives:

```text
App
→ AnalyticsReportRequest
→ AnalyticsReport
→ AnalyticsReportInstance
→ AnalyticsReportSegment
→ external report download
```

Supported operations include:

- creating, listing, reading, and deleting analytics report requests
- reading analytics report request relationship IDs
- listing and reading generated analytics reports
- reading analytics report relationship IDs
- listing and reading report instances
- reading report instance relationship IDs
- listing and reading report segments
- reading report segment relationship IDs
- downloading a report segment from Apple's temporary external URL
- validating downloaded segment size and MD5 checksum when supplied by Apple

Known Analytics values are represented by forward-compatible
`RawRepresentable` value types rather than closed enums.

```swift
let request = try await client.createAnalyticsReportRequest(
    appID: appID,
    accessType: .ongoing
)

let reports = try await client.listAnalyticsReports(
    reportRequestID: request.id,
    categories: [.appUsage]
)

let instances = try await client.listAnalyticsReportInstances(
    reportID: reports[0].id,
    granularities: [.daily]
)

let segments = try await client.listAnalyticsReportSegments(
    instanceID: instances[0].id
)

let compressedData =
    try await client.downloadAnalyticsReportSegment(
        segments[0]
    )
```

Analytics segment download URLs are external temporary URLs. ASCAPIKit does
not attach the App Store Connect authorization token to those requests.

The package returns the downloaded compressed report bytes unchanged.
Decompression, tab-delimited parsing, metric aggregation, persistence,
polling, scheduling, caching, and retry policy remain host responsibilities.

## Sales and Trends reports

ASCAPIKit exposes a typed download primitive for App Store Connect Sales and
Trends reports.

```swift
let report = ASCSalesReportRequest(
    reportType: .sales,
    reportSubType: .summary,
    frequency: .monthly,
    vendorNumber: vendorNumber,
    reportDate: "2026-09-01",
    version: "1_0"
)

let compressedData = try await client.downloadSalesReport(
    report
)
```

The request is sent to:

```text
GET /v1/salesReports
```

| Query parameter | Required | Notes |
| --- | --- | --- |
| `filter[frequency]` | Yes | `DAILY`, `WEEKLY`, `MONTHLY`, or `YEARLY` |
| `filter[reportSubType]` | Yes | Varies by report type |
| `filter[reportType]` | Yes | Sales and Trends report type |
| `filter[vendorNumber]` | Yes | App Store Connect vendor number supplied by the host |
| `filter[reportDate]` | Conditional | `YYYY-MM-DD`; see the date note below |
| `filter[version]` | No | Report version such as `1_0`; accepted values vary by report type |

Known report types include `SALES`, `PRE_ORDER`, `NEWSSTAND`, `SUBSCRIPTION`,
`SUBSCRIPTION_EVENT`, `SUBSCRIBER`, `SUBSCRIPTION_OFFER_CODE_REDEMPTION`,
`INSTALLS`, `FIRST_ANNUAL`, and `WIN_BACK_ELIGIBILITY`.

Known report subtypes include `SUMMARY`, `DETAILED`, `SUMMARY_INSTALL_TYPE`,
`SUMMARY_TERRITORY`, and `SUMMARY_CHANNEL`.

Known frequencies include `DAILY`, `WEEKLY`, `MONTHLY`, and `YEARLY`.

`ASCSalesReportType`, `ASCSalesReportSubType`, and `ASCSalesReportFrequency`
are forward-compatible string value types. The static members above are
conveniences; an unknown raw value is sent to App Store Connect unchanged.

ASCAPIKit does not validate report type, subtype, frequency, or version
combinations locally. Apple defines the valid combinations:

- [Download sales and trends reports](https://developer.apple.com/documentation/appstoreconnectapi/get-v1-salesreports)
- [Download and view reports](https://developer.apple.com/help/app-store-connect/view-sales-and-trends/download-and-view-reports)

### Sales report date

`filter[reportDate]` uses the `YYYY-MM-DD` format.

Apple's endpoint schema marks the parameter optional, while its documentation
requires a date for every frequency except `DAILY`, which does not require a
date.

ASCAPIKit does not supply a default value. A `nil` `reportDate` omits the
query parameter entirely; the caller decides which date to request.

### Sales report response

A successful response uses `Content-Type: application/a-gzip` and contains a
gzip-compressed tab-delimited report.

`downloadSalesReport` returns the original response bytes unchanged.

ASCAPIKit does not decompress gzip data, parse tab-delimited rows, aggregate
metrics, persist report data, cache responses, retry requests, poll, or
schedule downloads.

The vendor number is provided by the caller. ASCAPIKit does not store it.

### Sales report errors

A 2xx response with zero bytes throws:

```swift
ASCReportDownloadError.emptyResponse
```

Non-2xx responses use the same structured classification as the rest of the
package:

```text
401 -> ASCAPIError.unauthorized
403 -> ASCAPIError.forbidden(detail)
429 -> ASCAPIError.rateLimited
other non-2xx -> ASCAPIError.serviceError(status, detail)
```

Apple-provided `detail` content is passed through unchanged.

### Sales report roles

App Store Connect roles govern access. Downloading sales and financial
reports requires the corresponding Sales and Reports / Finance permissions.
Apple's financial-report documentation lists Account Holder, Admin, or
Finance as the required roles for financial reports. Creating Analytics
report requests typically requires Admin.

Apple performs the final authorization check. ASCAPIKit does not enforce
roles locally.

## Finance reports

ASCAPIKit exposes a typed download primitive for App Store Connect financial
reports.

```swift
let compressedData = try await client.downloadFinanceReport(
    regionCode: "US",
    reportDate: "2026-09",
    vendorNumber: vendorNumber
)
```

The request is sent to:

```text
GET /v1/financeReports
```

| Query parameter | Required | Notes |
| --- | --- | --- |
| `filter[regionCode]` | Yes | Territory code supplied by the host |
| `filter[reportDate]` | Yes | Apple fiscal month in `YYYY-MM` format |
| `filter[reportType]` | Yes | Written by ASCAPIKit as `FINANCIAL` |
| `filter[vendorNumber]` | Yes | App Store Connect vendor number supplied by the host |

The `regionCode` is not validated against a built-in country or region list.
See Apple's reference for possible values:

- [Financial report regions and currencies](https://developer.apple.com/help/app-store-connect/reference/financial-report-regions-and-currencies)

`filter[reportDate]` is a fiscal month, not a calendar day. ASCAPIKit passes
the string through unchanged and does not perform calendar or fiscal-calendar
conversion.

`filter[reportType]` is fixed to `FINANCIAL` by the typed convenience.

### Finance report response

A successful response uses `Content-Type: application/a-gzip` and contains a
gzip-compressed tab-delimited report.

`downloadFinanceReport` returns the original response bytes unchanged.
ASCAPIKit does not decompress, parse, aggregate, persist, cache, retry, poll,
or schedule downloads.

The vendor number is provided by the caller. ASCAPIKit does not store it.

### Finance report errors

A 2xx response with zero bytes throws:

```swift
ASCReportDownloadError.emptyResponse
```

Non-2xx responses use the same `ASCAPIError` classification described above
for Sales and Trends reports.

### Finance report roles

Financial report access requires the corresponding Finance permissions in
App Store Connect. Apple's help documentation lists Account Holder, Admin, or
Finance as the required roles:

- [Download financial reports](https://developer.apple.com/help/app-store-connect/getting-paid/download-financial-reports)

Apple performs the final authorization check. ASCAPIKit does not enforce
roles locally.

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

Hosts can also read to-many relationship linkage collections as resource IDs
through the public generic relationship primitive:

```swift
ASCClient.listRelationshipIDs(
    _:resourceType:limit:
)
```

It follows paginated JSON:API relationship linkage collections while
preserving the same pagination URL safety checks as `list`.

For canonical versioned collection paths, the generic
`listAll(_:queryItems:maxPages:as:)` primitive fetches a complete
collection over `links.next` with a page-count ceiling and exact
percent-encoded path validation.

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

For paths and payloads the convenience methods do not cover, the raw
generic request primitives are also public:

```swift
let data = try await client.requestRaw(
    method: .get,
    path: "/v1/apps",
    queryItems: [
        URLQueryItem(name: "limit", value: "10")
    ]
)
```

`requestRaw` returns raw `Data` (possibly empty for a 204 response),
`requestDecoded` decodes a complete response document, and
`requestResource` decodes an ordinary single-resource JSON:API envelope.

## Transport injection

All HTTP I/O passes through `ASCTransport`.

`ASCClient` itself does not call `URLSession`.

The default implementation is:

```swift
URLSessionASCTransport
```

Before the default transport performs any network I/O, it validates
requests that carry an Authorization header: the URL must use HTTPS, have a
non-empty host, and contain no URL user or password information. Requests
that fail this check throw `ASCAPIError.invalidResponse` instead of sending
a Bearer token over an unsafe URL. The default transport also refuses to
follow a redirect of an authenticated request to a different origin, so the
Authorization header is never forwarded to an unexpected target;
unauthenticated requests keep the standard URLSession redirect behavior.

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
and error handling without real network access. When a host injects its own
transport, URL policy for the requests it sends is the host's responsibility.

Catalog API requests additionally require HTTPS at the client layer before
a request is built, regardless of the injected transport.

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

Sales and Trends and finance report downloads also use:

```swift
public enum ASCReportDownloadError: Error, Equatable, Sendable {
    case emptyResponse
}
```

`ASCReportDownloadError.emptyResponse` is thrown when a successful report
response contains zero bytes. HTTP failures continue to use `ASCAPIError`.

For `403` and other service errors, Apple-provided `detail` values are passed
through without replacement text.

If no detail is returned, the associated detail string is empty.

Catalog input validation throws `ASCOpenAPICatalogError` before any request
is sent:

```swift
public enum ASCOpenAPICatalogError: Error, Sendable, Equatable {
    case unsupportedOperation(String)
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

HTTP failures from catalog requests continue to use the `ASCAPIError`
classification above.

## Networking boundary

`URLSessionASCTransport` is the only production implementation in the package
that directly touches `URLSession`.

All `ASCClient` HTTP I/O goes through the injected `ASCTransport`.

## Security

Authorization tokens and Authorization header values must never be written to
logs, errors, or diagnostic output.

Tests should inspect token structure only when necessary and must not print
the token.

The default transport refuses to send an Authorization header over plaintext
HTTP, to a URL without a host, or to a URL containing user information, and
throws `ASCAPIError.invalidResponse` before any network I/O. Authenticated
requests that would redirect to a different origin are not followed.
Presigned upload URLs, image CDN downloads, media downloads, and analytics
segment downloads remain unauthenticated by design and keep their own
existing HTTPS boundaries.

## Deliberately not included

ASCAPIKit does not implement:

- retries
- caching
- token refresh
- credential persistence
- automatic JWT refresh or rotation during a client's lifetime
- automatic pagination following in the OpenAPI catalog dispatcher
- complete Codable models for every catalog operation
- full schema validation of catalog request values
- gzip decompression
- tab-delimited report parsing
- metric aggregation
- UI
- localized/user-facing messages
- application-specific workflows
- typed convenience layers beyond the explicitly approved domains listed
  above

Hosts should build those policies above ASCAPIKit when needed.

## License

ASCAPIKit is available under the MIT License. See `LICENSE` for details.
