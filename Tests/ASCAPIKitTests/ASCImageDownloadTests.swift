import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCImageDownloadTests: XCTestCase {
    func testResolvedURLUsesNativeDimensionsAndFormat() throws {
        let asset = ASCImageAsset(
            templateURL:
                "https://is1-ssl.mzstatic.com/image/thumb/example/{w}x{h}bb.{f}",
            width: 1320,
            height: 2868
        )

        let url = try asset.resolvedURL(
            format: .png
        )

        XCTAssertEqual(
            url.absoluteString,
            "https://is1-ssl.mzstatic.com/image/thumb/example/1320x2868bb.png"
        )
    }

    func testResolvedURLAllowsFutureAlphanumericFormat() throws {
        let asset = makeAsset()

        let format = ASCImageFormat(
            rawValue: "webp"
        )

        let url = try asset.resolvedURL(
            format: format
        )

        XCTAssertTrue(
            url.absoluteString.hasSuffix(".webp")
        )
    }

    func testImageFormatCodableUsesSingleStringValue() throws {
        let encoded = try JSONEncoder().encode(
            ASCImageFormat.png
        )

        XCTAssertEqual(
            String(
                decoding: encoded,
                as: UTF8.self
            ),
            "\"png\""
        )

        let decoded = try JSONDecoder().decode(
            ASCImageFormat.self,
            from: Data(
                "\"webp\"".utf8
            )
        )

        XCTAssertEqual(
            decoded.rawValue,
            "webp"
        )
    }

    func testResolvedURLRejectsUnsafeFormat() throws {
        let asset = makeAsset()

        let format = ASCImageFormat(
            rawValue: "png?token=x"
        )

        do {
            _ = try asset.resolvedURL(
                format: format
            )

            XCTFail("Expected invalidImageFormat")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .invalidImageFormat)
        }
    }

    func testResolvedURLRejectsHTTP() throws {
        let asset = ASCImageAsset(
            templateURL: "http://example.com/{w}x{h}.{f}",
            width: 100,
            height: 200
        )

        do {
            _ = try asset.resolvedURL()

            XCTFail("Expected unsafeImageURL")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .unsafeImageURL)
        }
    }

    func testResolvedURLRejectsCredentials() throws {
        let asset = ASCImageAsset(
            templateURL:
                "https://user:password@example.com/{w}x{h}.{f}",
            width: 100,
            height: 200
        )

        do {
            _ = try asset.resolvedURL()

            XCTFail("Expected unsafeImageURL")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .unsafeImageURL)
        }
    }

    func testResolvedURLRejectsInvalidAsset() throws {
        let zeroWidth = ASCImageAsset(
            templateURL: "https://example.com/{w}x{h}.{f}",
            width: 0,
            height: 200
        )

        let zeroHeight = ASCImageAsset(
            templateURL: "https://example.com/{w}x{h}.{f}",
            width: 100,
            height: 0
        )

        let emptyTemplate = ASCImageAsset(
            templateURL: "",
            width: 100,
            height: 200
        )

        for asset in [zeroWidth, zeroHeight, emptyTemplate] {
            do {
                _ = try asset.resolvedURL()

                XCTFail("Expected invalidImageAsset")
            } catch let error as ASCImageDownloadError {
                XCTAssertEqual(error, .invalidImageAsset)
            }
        }
    }

    func testResolvedURLAllowsConcreteHTTPSURL() throws {
        let asset = ASCImageAsset(
            templateURL: "https://cdn.example.com/image.png",
            width: 1320,
            height: 2868
        )

        let url = try asset.resolvedURL()

        XCTAssertEqual(
            url.absoluteString,
            "https://cdn.example.com/image.png"
        )
    }

    func testDownloadImageAssetReturnsDataWithoutBearerToken() async throws {
        let asset = makeAsset()

        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let transport = StubTransport(
            responses: [
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let data = try await client.downloadImageAsset(
            asset,
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        XCTAssertEqual(
            request.url,
            try asset.resolvedURL(format: .png)
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testDownloadImageAssetMapsNon2xx() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 404
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.downloadImageAsset(
                makeAsset(),
                format: .png
            )

            XCTFail("Expected downloadFailed(404)")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .downloadFailed(404))
        }
    }

    func testDownloadImageAssetRejectsEmptyResponse() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.downloadImageAsset(
                makeAsset(),
                format: .png
            )

            XCTFail("Expected emptyResponse")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .emptyResponse)
        }
    }

    func testDownloadScreenshotResourceUsesExistingImageAsset() async throws {
        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let transport = StubTransport(
            responses: [
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = makeScreenshot(
            imageAsset: makeAsset()
        )

        let data = try await client.downloadScreenshot(
            screenshot,
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        XCTAssertFalse(
            request.url?.path.hasPrefix("/v1/appScreenshots") ?? true
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testDownloadScreenshotResourceFailsWhenImageUnavailable() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = makeScreenshot(
            imageAsset: nil
        )

        do {
            _ = try await client.downloadScreenshot(
                screenshot
            )

            XCTFail("Expected imageUnavailable")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .imageUnavailable)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testDownloadScreenshotIDFetchesMetadataThenDownloadsWithoutBearer() async throws {
        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let metadata = try TestSupport.single([
            "type": "appScreenshots",
            "id": "SHOT_ID",
            "attributes": [
                "fileName": "01.png",
                "fileSize": 123456,
                "imageAsset": [
                    "templateUrl":
                        "https://cdn.example.com/{w}x{h}bb.{f}",
                    "width": 1320,
                    "height": 2868
                ],
                "assetDeliveryState": [
                    "state": "COMPLETE"
                ]
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: metadata),
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let data = try await client.downloadScreenshot(
            id: "SHOT_ID",
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 2)

        let metadataRequest = requests[0]

        XCTAssertEqual(
            metadataRequest.url?.path,
            "/v1/appScreenshots/SHOT_ID"
        )
        XCTAssertEqual(
            metadataRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            metadataRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let imageRequest = requests[1]

        XCTAssertEqual(
            imageRequest.url?.absoluteString,
            "https://cdn.example.com/1320x2868bb.png"
        )
        XCTAssertEqual(
            imageRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            imageRequest.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    private func makeAsset() -> ASCImageAsset {
        ASCImageAsset(
            templateURL:
                "https://cdn.example.com/image/thumb/example/{w}x{h}bb.{f}",
            width: 1320,
            height: 2868
        )
    }

    private func makeScreenshot(
        imageAsset: ASCImageAsset?
    ) -> ASCAppScreenshot {
        ASCAppScreenshot(
            id: "SHOT_ID",
            attributes: .init(
                fileSize: 123456,
                fileName: "01.png",
                sourceFileChecksum: nil,
                imageAsset: imageAsset,
                assetToken: nil,
                assetType: nil,
                uploadOperations: nil,
                assetDeliveryState: nil
            )
        )
    }
}
