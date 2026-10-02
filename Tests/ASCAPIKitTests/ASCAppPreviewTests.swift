import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCAppPreviewTests: XCTestCase {
    func testPreviewTypeRawValuesDoNotUseScreenshotPrefix() {
        XCTAssertEqual(
            ASCPreviewType.iPhone67.rawValue,
            "IPHONE_67"
        )

        XCTAssertEqual(
            ASCPreviewType.desktop.rawValue,
            "DESKTOP"
        )

        XCTAssertNotEqual(
            ASCPreviewType.iPhone67.rawValue,
            "APP_IPHONE_67"
        )
    }

    func testPreviewTypeUnknownValueRoundTripsAsSingleString() throws {
        let value = ASCPreviewType(
            rawValue: "FUTURE_PREVIEW_TYPE"
        )

        let encoded = try JSONEncoder().encode(value)

        XCTAssertEqual(
            String(
                decoding: encoded,
                as: UTF8.self
            ),
            "\"FUTURE_PREVIEW_TYPE\""
        )

        let decoded = try JSONDecoder().decode(
            ASCPreviewType.self,
            from: encoded
        )

        XCTAssertEqual(
            decoded.rawValue,
            "FUTURE_PREVIEW_TYPE"
        )
    }

    func testVideoDeliveryStateDecodesProcessing() throws {
        let json = """
        {
          "errors": null,
          "warnings": null,
          "state": "PROCESSING"
        }
        """

        let state = try JSONDecoder().decode(
            ASCVideoDeliveryState.self,
            from: Data(json.utf8)
        )

        XCTAssertEqual(state.state, "PROCESSING")
        XCTAssertNil(state.errors)
        XCTAssertNil(state.warnings)
    }

    func testListPreviewSetsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "appPreviewSets",
                        "id": "SET_ID",
                        "attributes": [
                            "previewType": "IPHONE_67"
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let sets = try await client.listPreviewSets(
            versionLocalizationID: "LOC_ID"
        )

        XCTAssertEqual(sets.count, 1)
        XCTAssertEqual(sets.first?.id, "SET_ID")
        XCTAssertEqual(
            sets.first?.attributes.previewType,
            .iPhone67
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreVersionLocalizations/LOC_ID/appPreviewSets"
        )
        XCTAssertEqual(
            query["fields[appPreviewSets]"],
            "previewType"
        )
    }

    func testGetPreviewSetBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviewSets",
                    "id": "SET_ID",
                    "attributes": [
                        "previewType": "IPHONE_67"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let set = try await client.getPreviewSet(id: "SET_ID")

        XCTAssertEqual(set.id, "SET_ID")
        XCTAssertEqual(
            set.attributes.previewType,
            .iPhone67
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets/SET_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testCreatePreviewSetJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviewSets",
                    "id": "SET_ID",
                    "attributes": [
                        "previewType": "IPHONE_67"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let set = try await client.createPreviewSet(
            versionLocalizationID: "LOC_ID",
            previewType: .iPhone67
        )

        XCTAssertEqual(set.id, "SET_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets"
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
            "appPreviewSets"
        )

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            attributes["previewType"] as? String,
            "IPHONE_67"
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

    func testDeletePreviewSetAccepts204() async throws {
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

        try await client.deletePreviewSet(id: "SET_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets/SET_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testListPreviewsBuildsModernFieldRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "appPreviews",
                        "id": "PREVIEW_ID",
                        "attributes": [:]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let previews = try await client.listPreviews(
            previewSetID: "SET_ID"
        )

        XCTAssertEqual(previews.count, 1)
        XCTAssertEqual(previews.first?.id, "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets/SET_ID/appPreviews"
        )

        let fields = try XCTUnwrap(
            query["fields[appPreviews]"]?
                .split(separator: ",")
                .map(String.init)
        )

        for field in [
            "fileSize",
            "fileName",
            "sourceFileChecksum",
            "previewFrameTimeCode",
            "mimeType",
            "videoUrl",
            "previewFrameImage",
            "uploadOperations",
            "videoDeliveryState"
        ] {
            XCTAssertTrue(
                fields.contains(field),
                "modern field \(field) must be requested"
            )
        }

        XCTAssertFalse(
            fields.contains("assetDeliveryState"),
            "deprecated assetDeliveryState must not be requested"
        )

        XCTAssertFalse(
            fields.contains("previewImage"),
            "deprecated previewImage must not be requested"
        )
    }

    func testGetPreviewDecodesModernVideoFields() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviews",
                    "id": "PREVIEW_ID",
                    "attributes": [
                        "fileSize": 1000,
                        "fileName": "preview.mp4",
                        "sourceFileChecksum": "abc",
                        "previewFrameTimeCode":
                            "00:00:05:00",
                        "mimeType": "video/mp4",
                        "videoUrl":
                            "https://cdn.example.com/video.mp4",
                        "videoDeliveryState": [
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

        let preview = try await client.getPreview(id: "PREVIEW_ID")

        XCTAssertEqual(preview.id, "PREVIEW_ID")
        XCTAssertEqual(preview.attributes.fileSize, 1000)
        XCTAssertEqual(preview.attributes.fileName, "preview.mp4")
        XCTAssertEqual(preview.attributes.sourceFileChecksum, "abc")
        XCTAssertEqual(
            preview.attributes.previewFrameTimeCode,
            "00:00:05:00"
        )
        XCTAssertEqual(preview.attributes.mimeType, "video/mp4")
        XCTAssertEqual(
            preview.attributes.videoURL,
            "https://cdn.example.com/video.mp4"
        )
        XCTAssertEqual(
            preview.attributes.videoDeliveryState?.state,
            "COMPLETE"
        )
    }

    func testCreatePreviewReservationJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviews",
                    "id": "PREVIEW_ID",
                    "attributes": [
                        "fileName": "preview.mp4",
                        "fileSize": 123456
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = try await client.createPreviewReservation(
            previewSetID: "SET_ID",
            fileName: "preview.mp4",
            fileSize: 123456
        )

        XCTAssertEqual(preview.id, "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviews"
        )
        XCTAssertEqual(
            request.httpMethod,
            "POST"
        )

        let body = try XCTUnwrap(request.httpBody)

        let document = try JSONDecoder().decode(
            PreviewReservationShape.self,
            from: body
        )

        XCTAssertEqual(document.data.type, "appPreviews")
        XCTAssertEqual(document.data.attributes.fileName, "preview.mp4")
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

        let previewSet = try XCTUnwrap(
            relationships["appPreviewSet"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            previewSet["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appPreviewSets"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "SET_ID"
        )
    }

    func testCommitPreviewJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviews",
                    "id": "PREVIEW_ID",
                    "attributes": [
                        "fileName": "preview.mp4",
                        "sourceFileChecksum": "abc123"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = try await client.commitPreview(
            id: "PREVIEW_ID",
            sourceFileChecksum: "abc123"
        )

        XCTAssertEqual(preview.id, "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let body = try XCTUnwrap(request.httpBody)

        let document = try JSONDecoder().decode(
            PreviewCommitShape.self,
            from: body
        )

        XCTAssertEqual(document.data.type, "appPreviews")
        XCTAssertEqual(document.data.id, "PREVIEW_ID")
        XCTAssertTrue(document.data.attributes.uploaded)
        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            "abc123"
        )

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(with: body) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])

        XCTAssertEqual(
            Set(attributes.keys),
            ["uploaded", "sourceFileChecksum"],
            "commit body must not contain null keys or unrelated fields"
        )
    }

    func testUpdatePreviewFrameTimeCodeJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviews",
                    "id": "PREVIEW_ID",
                    "attributes": [
                        "previewFrameTimeCode": "00:00:05:00"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = try await client.updatePreviewFrameTimeCode(
            id: "PREVIEW_ID",
            timeCode: "00:00:05:00"
        )

        XCTAssertEqual(preview.id, "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
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

        let data = try XCTUnwrap(object["data"] as? [String: Any])

        XCTAssertEqual(data["type"] as? String, "appPreviews")
        XCTAssertEqual(data["id"] as? String, "PREVIEW_ID")

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            attributes["previewFrameTimeCode"] as? String,
            "00:00:05:00"
        )

        XCTAssertEqual(
            Set(attributes.keys),
            ["previewFrameTimeCode"],
            "poster update must not contain uploaded, sourceFileChecksum, or null keys"
        )
    }

    func testDeletePreviewAccepts204() async throws {
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

        try await client.deletePreview(id: "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testListPreviewOrderPreservesRelationshipOrder() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.jsonData([
                    "data": [
                        [
                            "type": "appPreviews",
                            "id": "C"
                        ],
                        [
                            "type": "appPreviews",
                            "id": "A"
                        ],
                        [
                            "type": "appPreviews",
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

        let order = try await client.listPreviewOrder(
            previewSetID: "SET_ID"
        )

        XCTAssertEqual(order, ["C", "A", "B"])

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets/SET_ID/relationships/appPreviews"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testReorderPreviewsPreservesOrder() async throws {
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

        try await client.reorderPreviews(
            previewSetID: "SET_ID",
            orderedPreviewIDs: ["A", "B", "C"]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appPreviewSets/SET_ID/relationships/appPreviews"
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
            linkage.allSatisfy { ($0["type"] as? String) == "appPreviews" }
        )
    }

    func testUploadPreviewRunsReservationUploadCommit() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let expectedChecksum = md5Hex(Data("abcdef".utf8))

        let reservationData = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
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
                                "value": "video/mp4"
                            ]
                        ]
                    ]
                ]
            ]
        ])

        let commitData = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
                "fileSize": 6,
                "sourceFileChecksum": expectedChecksum,
                "videoDeliveryState": [
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

        let preview = try await client.uploadPreview(
            fileURL: fileURL,
            previewSetID: "SET_ID"
        )

        XCTAssertEqual(preview.id, "PREVIEW_ID")
        XCTAssertEqual(
            preview.attributes.videoDeliveryState?.state,
            "UPLOAD_COMPLETE"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 3)

        let reservationRequest = requests[0]

        XCTAssertEqual(
            reservationRequest.url?.path,
            "/v1/appPreviews"
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
        XCTAssertTrue(
            uploadRequest.value(forHTTPHeaderField: "Authorization") == nil
        )
        XCTAssertEqual(
            uploadRequest.httpBody,
            Data("abcdef".utf8)
        )

        let commitRequest = requests[2]

        XCTAssertEqual(
            commitRequest.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            commitRequest.httpMethod,
            "PATCH"
        )
        XCTAssertTrue(
            commitRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let document = try JSONDecoder().decode(
            PreviewCommitShape.self,
            from: try XCTUnwrap(commitRequest.httpBody)
        )

        XCTAssertTrue(document.data.attributes.uploaded)
        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            expectedChecksum
        )
    }

    func testUploadPreviewSupportsMultipleUploadOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let expectedChecksum = md5Hex(Data("abcdefghij".utf8))

        let reservationData = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
                "fileSize": 10,
                "uploadOperations": [
                    [
                        "method": "PUT",
                        "url": "https://upload.example.com/presigned?part=1",
                        "length": 4,
                        "offset": 0,
                        "requestHeaders": []
                    ],
                    [
                        "method": "PUT",
                        "url": "https://upload.example.com/presigned?part=2",
                        "length": 3,
                        "offset": 4,
                        "requestHeaders": []
                    ],
                    [
                        "method": "PUT",
                        "url": "https://upload.example.com/presigned?part=3",
                        "length": 3,
                        "offset": 7,
                        "requestHeaders": []
                    ]
                ]
            ]
        ])

        let commitData = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
                "fileSize": 10,
                "sourceFileChecksum": expectedChecksum,
                "videoDeliveryState": [
                    "state": "UPLOAD_COMPLETE"
                ]
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: reservationData),
                .init(data: Data()),
                .init(data: Data()),
                .init(data: Data()),
                .init(data: commitData)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = try await client.uploadPreview(
            fileURL: fileURL,
            previewSetID: "SET_ID"
        )

        XCTAssertEqual(preview.id, "PREVIEW_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 5)

        XCTAssertEqual(
            requests[1].httpBody,
            Data("abcd".utf8)
        )
        XCTAssertEqual(
            requests[2].httpBody,
            Data("efg".utf8)
        )
        XCTAssertEqual(
            requests[3].httpBody,
            Data("hij".utf8)
        )

        for uploadRequest in requests[1...3] {
            XCTAssertTrue(
                uploadRequest.value(forHTTPHeaderField: "Authorization") == nil
            )
        }

        XCTAssertEqual(
            requests[4].url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            requests[4].httpMethod,
            "PATCH"
        )

        let document = try JSONDecoder().decode(
            PreviewCommitShape.self,
            from: try XCTUnwrap(requests[4].httpBody)
        )

        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            expectedChecksum
        )
    }

    func testUploadPreviewFailsWhenReservationHasNoOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let reservationData = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
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
            _ = try await client.uploadPreview(
                fileURL: fileURL,
                previewSetID: "SET_ID"
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    func testCreatePreviewReservationRejectsInvalidFileInput() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        for (fileName, fileSize) in [("", Int64(100)), ("preview.mp4", Int64(0))] {
            do {
                _ = try await client.createPreviewReservation(
                    previewSetID: "SET_ID",
                    fileName: fileName,
                    fileSize: fileSize
                )

                XCTFail("Expected invalidAssetFile")
            } catch let error as ASCAssetUploadError {
                XCTAssertEqual(error, .invalidAssetFile)
            }
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testUpdatePreviewFrameTimeCodeRejectsEmptyValue() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.updatePreviewFrameTimeCode(
                id: "PREVIEW_ID",
                timeCode: ""
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
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

private struct PreviewReservationShape: Decodable {
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

private struct PreviewCommitShape: Decodable {
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
