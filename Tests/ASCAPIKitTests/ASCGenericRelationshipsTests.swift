import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCGenericRelationshipsTests: XCTestCase {
    func testAddToManyEncodesArray() async throws {
        let (client, transport) = try makeClient(response: Data(), statusCode: 204)
        try await client.modifyToManyRelationship(
            method: .post,
            path: "/v2/apps/A1/relationships/betaGroups",
            identifiers: [
                .init(type: "betaGroups", id: "G1"),
                .init(type: "betaGroups", id: "G2")
            ]
        )
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/v2/apps/A1/relationships/betaGroups")
        let content = try requestJSONObject(request)
        let data = try XCTUnwrap(content["data"] as? [[String: String]])
        XCTAssertEqual(data.map { $0["id"] }, ["G1", "G2"])
        XCTAssertEqual(data.map { $0["type"] }, ["betaGroups", "betaGroups"])
    }

    func testReplaceToManyAllowsEmptyArray() async throws {
        let (client, transport) = try makeClient(response: Data(), statusCode: 204)
        try await client.modifyToManyRelationship(
            method: .patch,
            path: "/v1/apps/A1/relationships/betaGroups",
            identifiers: []
        )
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.first?.httpMethod, "PATCH")
        let request = try XCTUnwrap(requests.first)
        let content = try requestJSONObject(request)
        XCTAssertEqual((content["data"] as? [Any])?.count, 0)
    }

    func testRemoveToManySendsDELETEBody() async throws {
        let (client, transport) = try makeClient(response: Data(), statusCode: 204)
        try await client.modifyToManyRelationship(
            method: .delete,
            path: "/v3/apps/A1/relationships/betaGroups",
            identifiers: [.init(type: "betaGroups", id: "G1")]
        )
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "DELETE")
        XCTAssertNotNil(request.httpBody)
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
    }

    func testSetToOneEncodesObject() async throws {
        let (client, transport) = try makeClient(response: Data(), statusCode: 204)
        try await client.setToOneRelationship(
            path: "/v2/exampleResources/R1/relationships/app",
            identifier: .init(type: "apps", id: "A1")
        )
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        let content = try requestJSONObject(request)
        let data = try XCTUnwrap(content["data"] as? [String: String])
        XCTAssertEqual(data, ["type": "apps", "id": "A1"])
    }

    func testClearToOneEncodesNull() async throws {
        let (client, transport) = try makeClient(response: Data(), statusCode: 204)
        try await client.setToOneRelationship(
            path: "/v2/exampleResources/R1/relationships/app",
            identifier: nil
        )
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        let content = try requestJSONObject(request)
        XCTAssertTrue(content["data"] is NSNull)
    }

    func testGetToOneDecodesIdentifierAndNull() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.single(["type": "apps", "id": "A1"])),
            .init(data: try TestSupport.jsonData(["data": NSNull()]))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let first = try await client.getToOneRelationship(
            path: "/v2/exampleResources/R1/relationships/app"
        )
        XCTAssertEqual(first, .init(type: "apps", id: "A1"))
        let second = try await client.getToOneRelationship(
            path: "/v2/exampleResources/R2/relationships/app"
        )
        XCTAssertNil(second)
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.map(\.httpMethod), ["GET", "GET"])
    }

    func testMissingDataAndEmptyIdentifierAreRejected() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.jsonData(["meta": [:]])),
            .init(data: try TestSupport.single(["type": "apps", "id": ""]))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        for _ in 0..<2 {
            do {
                _ = try await client.getToOneRelationship(
                    path: "/v2/exampleResources/R1/relationships/app"
                )
                XCTFail("Expected malformed relationship document")
            } catch let error as ASCAPIError {
                XCTAssertEqual(error, .invalidResponse)
            }
        }
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 2)
    }

    func testInvalidRelationshipPathRejectedBeforeNetwork() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        for path in [
            "/v2/apps/A1", "/v2/apps/A1/relationships", "/v2/apps/A1/relationships/",
            "/v2/apps/A1/relationships/foo/bar", "/v2/apps/A1/relations/foo",
            "https://evil.test/v2/apps/A1/relationships/foo"
        ] {
            do {
                try await client.setToOneRelationship(path: path, identifier: nil)
                XCTFail("Expected path rejection")
            } catch let error as ASCAPIError {
                XCTAssertEqual(error, .invalidResponse)
            }
        }
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.isEmpty)
    }

    func testInvalidMethodAndIdentifiersRejectedBeforeNetwork() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            try await client.modifyToManyRelationship(
                method: .get,
                path: "/v2/apps/A1/relationships/betaGroups",
                identifiers: []
            )
            XCTFail("Expected method rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        do {
            try await client.modifyToManyRelationship(
                method: .post,
                path: "/v2/apps/A1/relationships/betaGroups",
                identifiers: [.init(type: "", id: "A1")]
            )
            XCTFail("Expected identifier rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        do {
            try await client.setToOneRelationship(
                path: "/v2/apps/A1/relationships/betaGroups",
                identifier: .init(type: "apps", id: "")
            )
            XCTFail("Expected identifier rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.isEmpty)
    }

    func testServerErrorIsPreserved() async throws {
        let (client, _) = try makeClient(
            response: try TestSupport.errorResponse(details: ["No permission"]),
            statusCode: 403
        )
        do {
            try await client.modifyToManyRelationship(
                method: .delete,
                path: "/v1/apps/A1/relationships/betaGroups",
                identifiers: [.init(type: "betaGroups", id: "G1")]
            )
            XCTFail("Expected server error")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .forbidden("No permission"))
        }
    }

    func testIdentifierCodableRoundtrip() throws {
        let identifier = ASCResourceIdentifier(type: "apps", id: "A1")
        XCTAssertEqual(try JSONDecoder().decode(
            ASCResourceIdentifier.self,
            from: JSONEncoder().encode(identifier)
        ), identifier)
    }

    private func makeClient(
        response: Data,
        statusCode: Int
    ) throws -> (ASCClient, StubTransport) {
        let transport = StubTransport(responses: [
            .init(data: response, statusCode: statusCode)
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        return (client, transport)
    }

    private func requestJSONObject(_ request: URLRequest) throws -> [String: Any] {
        let body = try XCTUnwrap(request.httpBody)
        return try XCTUnwrap(JSONSerialization.jsonObject(with: body) as? [String: Any])
    }
}
