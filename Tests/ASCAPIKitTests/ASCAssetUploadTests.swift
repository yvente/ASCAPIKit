import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCAssetUploadTests: XCTestCase {
    func testDecodeUploadOperation() throws {
        let json = """
        {
          "method": "PUT",
          "url": "https://store.example.apple.com/upload",
          "length": 4,
          "offset": 2,
          "requestHeaders": [
            {
              "name": "Content-Type",
              "value": "image/png"
            }
          ]
        }
        """

        let operation = try JSONDecoder().decode(
            ASCUploadOperation.self,
            from: Data(json.utf8)
        )

        XCTAssertEqual(operation.method, "PUT")
        XCTAssertEqual(operation.length, 4)
        XCTAssertEqual(operation.offset, 2)
        XCTAssertEqual(
            operation.requestHeaders,
            [
                ASCHTTPHeader(
                    name: "Content-Type",
                    value: "image/png"
                )
            ]
        )
    }

    func testDecodeAssetDeliveryState() throws {
        let json = """
        {
          "errors": null,
          "warnings": null,
          "state": "COMPLETE"
        }
        """

        let state = try JSONDecoder().decode(
            ASCAssetDeliveryState.self,
            from: Data(json.utf8)
        )

        XCTAssertEqual(state.state, "COMPLETE")
        XCTAssertNil(state.errors)
        XCTAssertNil(state.warnings)
    }

    func testUnknownScreenshotDisplayTypeRoundTrips() throws {
        let value = ASCScreenshotDisplayType(
            rawValue: "FUTURE_APPLE_DISPLAY"
        )

        let data = try JSONEncoder().encode(value)

        let decoded = try JSONDecoder().decode(
            ASCScreenshotDisplayType.self,
            from: data
        )

        XCTAssertEqual(decoded.rawValue, "FUTURE_APPLE_DISPLAY")
    }

    func testUploadAssetSingleOperation() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operation = ASCUploadOperation(
            method: "PUT",
            url: "https://upload.example.com/presigned",
            length: 6,
            offset: 0,
            requestHeaders: [
                ASCHTTPHeader(
                    name: "Content-Type",
                    value: "image/png"
                )
            ]
        )

        let transport = StubTransport(
            responses: [
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let checksum = try await client.uploadAsset(
            fileURL: fileURL,
            operations: [operation]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpMethod,
            "PUT"
        )

        XCTAssertEqual(
            request.httpBody,
            Data("abcdef".utf8)
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )

        XCTAssertEqual(
            request.value(forHTTPHeaderField: "Content-Type"),
            "image/png"
        )

        XCTAssertEqual(
            checksum,
            md5Hex(Data("abcdef".utf8))
        )
    }

    func testUploadAssetMultipleOperations() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operations = [
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=1",
                length: 4,
                offset: 0,
                requestHeaders: []
            ),
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=2",
                length: 3,
                offset: 4,
                requestHeaders: []
            ),
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=3",
                length: 3,
                offset: 7,
                requestHeaders: []
            )
        ]

        let transport = StubTransport(
            responses: [
                .init(data: Data()),
                .init(data: Data()),
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let checksum = try await client.uploadAsset(
            fileURL: fileURL,
            operations: operations
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 3)

        let bodies = requests.map(\.httpBody)

        XCTAssertEqual(
            bodies,
            [
                Data("abcd".utf8),
                Data("efg".utf8),
                Data("hij".utf8)
            ]
        )

        XCTAssertEqual(
            checksum,
            md5Hex(Data("abcdefghij".utf8))
        )
    }

    func testUploadAssetRejectsGap() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operations = [
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=1",
                length: 4,
                offset: 0,
                requestHeaders: []
            ),
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=2",
                length: 5,
                offset: 5,
                requestHeaders: []
            )
        ]

        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadAsset(
                fileURL: fileURL,
                operations: operations
            )

            XCTFail("Expected invalidUploadOperation")
        } catch let error as ASCAssetUploadError {
            XCTAssertEqual(error, .invalidUploadOperation)
        }
    }

    func testUploadAssetRejectsOverlap() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operations = [
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=1",
                length: 6,
                offset: 0,
                requestHeaders: []
            ),
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=2",
                length: 5,
                offset: 5,
                requestHeaders: []
            )
        ]

        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadAsset(
                fileURL: fileURL,
                operations: operations
            )

            XCTFail("Expected invalidUploadOperation")
        } catch let error as ASCAssetUploadError {
            XCTAssertEqual(error, .invalidUploadOperation)
        }
    }

    func testUploadAssetRejectsIncompleteCoverage() async throws {
        let fileURL = try makeTemporaryFile("abcdefghij")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operations = [
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=1",
                length: 4,
                offset: 0,
                requestHeaders: []
            ),
            ASCUploadOperation(
                method: "PUT",
                url: "https://upload.example.com/presigned?part=2",
                length: 4,
                offset: 4,
                requestHeaders: []
            )
        ]

        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadAsset(
                fileURL: fileURL,
                operations: operations
            )

            XCTFail("Expected invalidUploadOperation")
        } catch let error as ASCAssetUploadError {
            XCTAssertEqual(error, .invalidUploadOperation)
        }
    }

    func testUploadAssetRejectsHTTPURL() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operation = ASCUploadOperation(
            method: "PUT",
            url: "http://example.com/upload",
            length: 6,
            offset: 0,
            requestHeaders: []
        )

        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadAsset(
                fileURL: fileURL,
                operations: [operation]
            )

            XCTFail("Expected unsafeAssetUploadURL")
        } catch let error as ASCAssetUploadError {
            XCTAssertEqual(error, .unsafeAssetUploadURL)
        }
    }

    func testUploadAssetDoesNotAttachBearerToken() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operation = ASCUploadOperation(
            method: "PUT",
            url: "https://upload.example.com/presigned",
            length: 6,
            offset: 0,
            requestHeaders: [
                ASCHTTPHeader(
                    name: "Content-Type",
                    value: "image/png"
                )
            ]
        )

        let transport = StubTransport(
            responses: [
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.uploadAsset(
            fileURL: fileURL,
            operations: [operation]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )

        XCTAssertEqual(
            request.httpMethod,
            "PUT"
        )

        XCTAssertEqual(
            request.value(forHTTPHeaderField: "Content-Type"),
            "image/png"
        )
    }

    func testUploadAssetMapsNon2xx() async throws {
        let fileURL = try makeTemporaryFile("abcdef")

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operation = ASCUploadOperation(
            method: "PUT",
            url: "https://upload.example.com/presigned",
            length: 6,
            offset: 0,
            requestHeaders: []
        )

        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 500
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.uploadAsset(
                fileURL: fileURL,
                operations: [operation]
            )

            XCTFail("Expected assetUploadFailed(500)")
        } catch let error as ASCAssetUploadError {
            XCTAssertEqual(error, .assetUploadFailed(500))
        }
    }

    func testUploadAssetReadsCompleteLargeRangeAcrossMultipleReads() async throws {
        let size = 2_097_275

        let source = Data(
            (0..<size).map {
                UInt8($0 % 251)
            }
        )

        let fileURL = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)

        try source.write(to: fileURL)

        defer {
            try? FileManager.default.removeItem(at: fileURL)
        }

        let operation = ASCUploadOperation(
            method: "PUT",
            url: "https://upload.example.com/presigned",
            length: Int64(size),
            offset: 0,
            requestHeaders: []
        )

        let transport = StubTransport(
            responses: [
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let checksum = try await client.uploadAsset(
            fileURL: fileURL,
            operations: [operation]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpBody,
            source
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )

        XCTAssertEqual(
            checksum,
            md5Hex(source)
        )
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
