import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCScreenshotTests: XCTestCase {
    func testListScreenshotSetsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "appScreenshotSets",
                        "id": "SET_ID",
                        "attributes": [
                            "screenshotDisplayType": "APP_IPHONE_67"
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let sets = try await client.listScreenshotSets(
            versionLocalizationID: "LOC_ID"
        )

        XCTAssertEqual(sets.count, 1)
        XCTAssertEqual(sets.first?.id, "SET_ID")
        XCTAssertEqual(
            sets.first?.attributes.screenshotDisplayType,
            .iPhone67
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreVersionLocalizations/LOC_ID/appScreenshotSets"
        )
        XCTAssertEqual(
            query["fields[appScreenshotSets]"],
            "screenshotDisplayType"
        )
    }

    func testGetScreenshotSetBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appScreenshotSets",
                    "id": "SET_ID",
                    "attributes": [
                        "screenshotDisplayType": "APP_IPHONE_67"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let set = try await client.getScreenshotSet(id: "SET_ID")

        XCTAssertEqual(set.id, "SET_ID")
        XCTAssertEqual(
            set.attributes.screenshotDisplayType,
            .iPhone67
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets/SET_ID"
        )
        XCTAssertEqual(
            query["fields[appScreenshotSets]"],
            "screenshotDisplayType"
        )
    }

    func testCreateScreenshotSetJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appScreenshotSets",
                    "id": "SET_ID",
                    "attributes": [
                        "screenshotDisplayType": "APP_IPHONE_67"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let set = try await client.createScreenshotSet(
            versionLocalizationID: "LOC_ID",
            displayType: .iPhone67
        )

        XCTAssertEqual(set.id, "SET_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets"
        )
        XCTAssertEqual(
            request.httpMethod,
            "POST"
        )

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: try XCTUnwrap(request.httpBody)
            ) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])

        XCTAssertEqual(
            data["type"] as? String,
            "appScreenshotSets"
        )

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            attributes["screenshotDisplayType"] as? String,
            "APP_IPHONE_67"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        let localization = try XCTUnwrap(
            relationships["appStoreVersionLocalization"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            localization["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appStoreVersionLocalizations"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "LOC_ID"
        )
    }

    func testDeleteScreenshotSetAccepts204() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 204
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        try await client.deleteScreenshotSet(id: "SET_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets/SET_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testListScreenshotsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "appScreenshots",
                        "id": "SHOT_ID",
                        "attributes": [:]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshots = try await client.listScreenshots(
            screenshotSetID: "SET_ID"
        )

        XCTAssertEqual(screenshots.count, 1)
        XCTAssertEqual(screenshots.first?.id, "SHOT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets/SET_ID/appScreenshots"
        )
        XCTAssertEqual(
            query["fields[appScreenshots]"],
            [
                "fileSize",
                "fileName",
                "sourceFileChecksum",
                "imageAsset",
                "assetToken",
                "assetType",
                "uploadOperations",
                "assetDeliveryState"
            ].joined(separator: ",")
        )
    }

    func testGetScreenshotDecodesImageAsset() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appScreenshots",
                    "id": "SHOT_ID",
                    "attributes": [
                        "fileSize": 6,
                        "fileName": "a.png",
                        "imageAsset": [
                            "templateUrl": "https://example.com/{w}x{h}.{f}",
                            "width": 1320,
                            "height": 2868
                        ],
                        "assetDeliveryState": [
                            "state": "COMPLETE"
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = try await client.getScreenshot(id: "SHOT_ID")

        XCTAssertEqual(screenshot.id, "SHOT_ID")
        XCTAssertEqual(screenshot.attributes.fileSize, 6)
        XCTAssertEqual(screenshot.attributes.fileName, "a.png")

        let imageAsset = try XCTUnwrap(
            screenshot.attributes.imageAsset
        )

        XCTAssertEqual(
            imageAsset.templateURL,
            "https://example.com/{w}x{h}.{f}"
        )
        XCTAssertEqual(imageAsset.width, 1320)
        XCTAssertEqual(imageAsset.height, 2868)

        XCTAssertEqual(
            screenshot.attributes.assetDeliveryState?.state,
            "COMPLETE"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshots/SHOT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testCreateScreenshotReservationJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appScreenshots",
                    "id": "SHOT_ID",
                    "attributes": [
                        "fileName": "01.png",
                        "fileSize": 123456
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = try await client.createScreenshotReservation(
            screenshotSetID: "SET_ID",
            fileName: "01.png",
            fileSize: 123456
        )

        XCTAssertEqual(screenshot.id, "SHOT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshots"
        )
        XCTAssertEqual(
            request.httpMethod,
            "POST"
        )

        let body = try XCTUnwrap(request.httpBody)

        let document = try JSONDecoder().decode(
            ReservationDocumentShape.self,
            from: body
        )

        XCTAssertEqual(document.data.type, "appScreenshots")
        XCTAssertEqual(document.data.attributes.fileName, "01.png")
        XCTAssertEqual(document.data.attributes.fileSize, 123456)

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(with: body) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])

        let rawFileSize = try XCTUnwrap(attributes["fileSize"])

        XCTAssertFalse(
            rawFileSize is String,
            "fileSize must encode as a JSON number, not a string"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        let screenshotSet = try XCTUnwrap(
            relationships["appScreenshotSet"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            screenshotSet["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appScreenshotSets"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "SET_ID"
        )
    }

    func testCommitScreenshotJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appScreenshots",
                    "id": "SHOT_ID",
                    "attributes": [
                        "fileName": "a.png",
                        "sourceFileChecksum": "abc123"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = try await client.commitScreenshot(
            id: "SHOT_ID",
            sourceFileChecksum: "abc123"
        )

        XCTAssertEqual(screenshot.id, "SHOT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshots/SHOT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let document = try JSONDecoder().decode(
            CommitDocumentShape.self,
            from: try XCTUnwrap(request.httpBody)
        )

        XCTAssertEqual(document.data.type, "appScreenshots")
        XCTAssertEqual(document.data.id, "SHOT_ID")
        XCTAssertTrue(document.data.attributes.uploaded)
        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            "abc123"
        )
    }

    func testDeleteScreenshotAccepts204() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 204
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        try await client.deleteScreenshot(id: "SHOT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshots/SHOT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testReorderScreenshotsPreservesOrder() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 204
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        try await client.reorderScreenshots(
            screenshotSetID: "SET_ID",
            orderedScreenshotIDs: ["A", "B", "C"]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets/SET_ID/relationships/appScreenshots"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: try XCTUnwrap(request.httpBody)
            ) as? [String: Any]
        )

        let linkage = try XCTUnwrap(object["data"] as? [[String: Any]])

        XCTAssertEqual(
            linkage.map { $0["id"] as? String },
            ["A", "B", "C"]
        )

        XCTAssertTrue(
            linkage.allSatisfy { ($0["type"] as? String) == "appScreenshots" }
        )
    }

    func testListScreenshotOrderPreservesRelationshipOrder() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.jsonData([
                    "data": [
                        [
                            "type": "appScreenshots",
                            "id": "C"
                        ],
                        [
                            "type": "appScreenshots",
                            "id": "A"
                        ],
                        [
                            "type": "appScreenshots",
                            "id": "B"
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let order = try await client.listScreenshotOrder(
            screenshotSetID: "SET_ID"
        )

        XCTAssertEqual(order, ["C", "A", "B"])

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appScreenshotSets/SET_ID/relationships/appScreenshots"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testUploadScreenshotRunsReservationUploadCommit() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let expectedChecksum = md5Hex(Data("abcdef".utf8))

        let reservationData = try TestSupport.single([
            "type": "appScreenshots",
            "id": "SCREENSHOT_ID",
            "attributes": [
                "fileName": "a.png",
                "fileSize": 6,
                "uploadOperations": [
                    [
                        "method": "PUT",
                        "url": "https://upload.example.com/presigned",
                        "length": 6,
                        "offset": 0,
                        "requestHeaders": [
                            [
                                "name": "Content-Type",
                                "value": "image/png"
                            ]
                        ]
                    ]
                ]
            ]
        ])

        let commitData = try TestSupport.single([
            "type": "appScreenshots",
            "id": "SCREENSHOT_ID",
            "attributes": [
                "fileName": "a.png",
                "fileSize": 6,
                "sourceFileChecksum": expectedChecksum,
                "assetDeliveryState": [
                    "state": "UPLOAD_COMPLETE"
                ]
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: reservationData),
                .init(data: Data()),
                .init(data: commitData)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let screenshot = try await client.uploadScreenshot(
            fileURL: fileURL,
            screenshotSetID: "SET_ID"
        )

        XCTAssertEqual(screenshot.id, "SCREENSHOT_ID")
        XCTAssertEqual(
            screenshot.attributes.assetDeliveryState?.state,
            "UPLOAD_COMPLETE"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 3)

        let reservationRequest = requests[0]

        XCTAssertEqual(
            reservationRequest.url?.path,
            "/v1/appScreenshots"
        )
        XCTAssertEqual(
            reservationRequest.httpMethod,
            "POST"
        )
        XCTAssertTrue(
            reservationRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let uploadRequest = requests[1]

        XCTAssertEqual(
            uploadRequest.httpMethod,
            "PUT"
        )
        XCTAssertEqual(
            uploadRequest.url?.host,
            "upload.example.com"
        )
        XCTAssertTrue(
            uploadRequest.value(forHTTPHeaderField: "Authorization") == nil
        )
        XCTAssertEqual(
            uploadRequest.httpBody,
            Data("abcdef".utf8)
        )
        XCTAssertEqual(
            uploadRequest.value(forHTTPHeaderField: "Content-Type"),
            "image/png"
        )

        let commitRequest = requests[2]

        XCTAssertEqual(
            commitRequest.url?.path,
            "/v1/appScreenshots/SCREENSHOT_ID"
        )
        XCTAssertEqual(
            commitRequest.httpMethod,
            "PATCH"
        )
        XCTAssertTrue(
            commitRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let document = try JSONDecoder().decode(
            CommitDocumentShape.self,
            from: try XCTUnwrap(commitRequest.httpBody)
        )

        XCTAssertEqual(document.data.type, "appScreenshots")
        XCTAssertEqual(document.data.id, "SCREENSHOT_ID")
        XCTAssertTrue(document.data.attributes.uploaded)
        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            expectedChecksum
        )
    }

    func testUploadScreenshotFailsWhenReservationHasNoOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let reservationData = try TestSupport.single([
            "type": "appScreenshots",
            "id": "SCREENSHOT_ID",
            "attributes": [
                "fileName": "a.png",
                "fileSize": 6,
                "uploadOperations": []
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: reservationData)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadScreenshot(
                fileURL: fileURL,
                screenshotSetID: "SET_ID"
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    private func makeTemporaryFile(
        _ content: String
    ) throws -> URL {
        let url = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)

        try Data(content.utf8).write(to: url)

        return url
    }

    private func md5Hex(
        _ data: Data
    ) -> String {
        Insecure.MD5
            .hash(data: data)
            .map {
                String(
                    format: "%02x",
                    $0
                )
            }
            .joined()
    }
}

private struct ReservationDocumentShape: Decodable {
    let data: Resource

    struct Resource: Decodable {
        struct Attributes: Decodable {
            let fileName: String
            let fileSize: Int64
        }

        let type: String
        let attributes: Attributes
    }
}

private struct CommitDocumentShape: Decodable {
    let data: Resource

    struct Resource: Decodable {
        struct Attributes: Decodable {
            let uploaded: Bool
            let sourceFileChecksum: String
        }

        let type: String
        let id: String
        let attributes: Attributes
    }
}
