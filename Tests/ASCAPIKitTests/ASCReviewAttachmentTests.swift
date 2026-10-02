import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCReviewAttachmentTests: XCTestCase {
    func testReviewAttachmentDecodesAssetFields() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type":
                        "appStoreReviewAttachments",
                    "id": "ATTACHMENT_ID",
                    "attributes": [
                        "fileSize": 123456,
                        "fileName": "review.pdf",
                        "sourceFileChecksum": "abc",
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

        let attachment = try await client.getReviewAttachment(
            id: "ATTACHMENT_ID"
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")
        XCTAssertEqual(attachment.attributes.fileSize, 123456)
        XCTAssertEqual(attachment.attributes.fileName, "review.pdf")
        XCTAssertEqual(attachment.attributes.sourceFileChecksum, "abc")
        XCTAssertEqual(
            attachment.attributes.assetDeliveryState?.state,
            "COMPLETE"
        )
    }

    func testListReviewAttachmentsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type":
                            "appStoreReviewAttachments",
                        "id": "ATTACHMENT_ID",
                        "attributes": [:]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let attachments = try await client.listReviewAttachments(
            reviewDetailID: "DETAIL_ID"
        )

        XCTAssertEqual(attachments.count, 1)
        XCTAssertEqual(attachments.first?.id, "ATTACHMENT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewDetails/DETAIL_ID/appStoreReviewAttachments"
        )

        let fields = try XCTUnwrap(
            query["fields[appStoreReviewAttachments]"]?
                .split(separator: ",")
                .map(String.init)
        )

        XCTAssertEqual(
            Set(fields),
            [
                "fileSize",
                "fileName",
                "sourceFileChecksum",
                "uploadOperations",
                "assetDeliveryState"
            ]
        )
    }

    func testGetReviewAttachmentBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type":
                        "appStoreReviewAttachments",
                    "id": "ATTACHMENT_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let attachment = try await client.getReviewAttachment(
            id: "ATTACHMENT_ID"
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewAttachments/ATTACHMENT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testCreateReviewAttachmentReservationJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type":
                        "appStoreReviewAttachments",
                    "id": "ATTACHMENT_ID",
                    "attributes": [
                        "fileName": "review.pdf",
                        "fileSize": 123456
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let attachment = try await client.createReviewAttachmentReservation(
            reviewDetailID: "DETAIL_ID",
            fileName: "review.pdf",
            fileSize: 123456
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewAttachments"
        )
        XCTAssertEqual(
            request.httpMethod,
            "POST"
        )

        let body = try XCTUnwrap(request.httpBody)

        let document = try JSONDecoder().decode(
            ReviewAttachmentReservationShape.self,
            from: body
        )

        XCTAssertEqual(
            document.data.type,
            "appStoreReviewAttachments"
        )
        XCTAssertEqual(
            document.data.attributes.fileName,
            "review.pdf"
        )
        XCTAssertEqual(
            document.data.attributes.fileSize,
            123456
        )

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

        let reviewDetail = try XCTUnwrap(
            relationships["appStoreReviewDetail"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            reviewDetail["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appStoreReviewDetails"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "DETAIL_ID"
        )
    }

    func testCommitReviewAttachmentJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type":
                        "appStoreReviewAttachments",
                    "id": "ATTACHMENT_ID",
                    "attributes": [
                        "fileName": "review.pdf",
                        "sourceFileChecksum": "abc123"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let attachment = try await client.commitReviewAttachment(
            id: "ATTACHMENT_ID",
            sourceFileChecksum: "abc123"
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewAttachments/ATTACHMENT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let body = try XCTUnwrap(request.httpBody)

        let document = try JSONDecoder().decode(
            ReviewAttachmentCommitShape.self,
            from: body
        )

        XCTAssertEqual(
            document.data.type,
            "appStoreReviewAttachments"
        )
        XCTAssertEqual(document.data.id, "ATTACHMENT_ID")
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
            "commit body must not contain extra or null keys"
        )
    }

    func testDeleteReviewAttachmentAccepts204() async throws {
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

        try await client.deleteReviewAttachment(id: "ATTACHMENT_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewAttachments/ATTACHMENT_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testUploadReviewAttachmentRunsReservationUploadCommit() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let expectedChecksum = md5Hex(Data("abcdef".utf8))

        let reservationData = try TestSupport.single([
            "type":
                "appStoreReviewAttachments",
            "id": "ATTACHMENT_ID",
            "attributes": [
                "fileName": "review.pdf",
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
                                "value": "application/pdf"
                            ]
                        ]
                    ]
                ]
            ]
        ])

        let commitData = try TestSupport.single([
            "type":
                "appStoreReviewAttachments",
            "id": "ATTACHMENT_ID",
            "attributes": [
                "fileName": "review.pdf",
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

        let attachment = try await client.uploadReviewAttachment(
            fileURL: fileURL,
            reviewDetailID: "DETAIL_ID"
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")
        XCTAssertEqual(
            attachment.attributes.assetDeliveryState?.state,
            "UPLOAD_COMPLETE"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 3)

        let reservationRequest = requests[0]

        XCTAssertEqual(
            reservationRequest.url?.path,
            "/v1/appStoreReviewAttachments"
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
            "/v1/appStoreReviewAttachments/ATTACHMENT_ID"
        )
        XCTAssertEqual(
            commitRequest.httpMethod,
            "PATCH"
        )
        XCTAssertTrue(
            commitRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let document = try JSONDecoder().decode(
            ReviewAttachmentCommitShape.self,
            from: try XCTUnwrap(commitRequest.httpBody)
        )

        XCTAssertTrue(document.data.attributes.uploaded)
        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            expectedChecksum
        )
    }

    func testUploadReviewAttachmentSupportsMultipleUploadOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let expectedChecksum = md5Hex(Data("abcdefghij".utf8))

        let reservationData = try TestSupport.single([
            "type":
                "appStoreReviewAttachments",
            "id": "ATTACHMENT_ID",
            "attributes": [
                "fileName": "review.pdf",
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
            "type":
                "appStoreReviewAttachments",
            "id": "ATTACHMENT_ID",
            "attributes": [
                "fileName": "review.pdf",
                "fileSize": 10,
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
                .init(data: Data()),
                .init(data: Data()),
                .init(data: commitData)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let attachment = try await client.uploadReviewAttachment(
            fileURL: fileURL,
            reviewDetailID: "DETAIL_ID"
        )

        XCTAssertEqual(attachment.id, "ATTACHMENT_ID")

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
            "/v1/appStoreReviewAttachments/ATTACHMENT_ID"
        )
        XCTAssertEqual(
            requests[4].httpMethod,
            "PATCH"
        )

        let document = try JSONDecoder().decode(
            ReviewAttachmentCommitShape.self,
            from: try XCTUnwrap(requests[4].httpBody)
        )

        XCTAssertEqual(
            document.data.attributes.sourceFileChecksum,
            expectedChecksum
        )
    }

    func testUploadReviewAttachmentFailsWhenReservationHasNoOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let reservationData = try TestSupport.single([
            "type":
                "appStoreReviewAttachments",
            "id": "ATTACHMENT_ID",
            "attributes": [
                "fileName": "review.pdf",
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
            _ = try await client.uploadReviewAttachment(
                fileURL: fileURL,
                reviewDetailID: "DETAIL_ID"
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)
    }

    func testCreateReviewAttachmentReservationRejectsInvalidInput() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        for (fileName, fileSize) in [
            ("", Int64(100)),
            ("review.pdf", Int64(0)),
            ("review.pdf", Int64(-1))
        ] {
            do {
                _ = try await client.createReviewAttachmentReservation(
                    reviewDetailID: "DETAIL_ID",
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

    func testCommitReviewAttachmentRejectsEmptyChecksum() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.commitReviewAttachment(
                id: "ATTACHMENT_ID",
                sourceFileChecksum: ""
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

private struct ReviewAttachmentReservationShape: Decodable {
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

private struct ReviewAttachmentCommitShape: Decodable {
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
