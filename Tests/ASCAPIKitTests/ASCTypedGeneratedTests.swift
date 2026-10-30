import Foundation
import XCTest

@testable import ASCAPIKit

/// Offline integration tests for the five pinned 4.5.1 generated-preview calls.
/// These are transport-contract tests, not live Apple compatibility verification.
final class ASCTypedGeneratedTests: XCTestCase {
    private func reply(_ type: String, id: String) throws -> Data {
        try TestSupport.jsonData([
            "data": ["id": id, "type": type, "attributes": [:]],
            "links": ["self": "https://example.test/fixture"]
        ])
    }

    func testGetAppRequestAndDecode() async throws {
        let transport = StubTransport(responses: [
            .init(data: try reply("apps", id: "APP-1"))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let result = try await client.ascTypedGetApp(id: "APP-1")
        XCTAssertEqual(result.data.id, "APP-1")
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/v1/apps/APP-1")
        XCTAssertNil(request.httpBody)
        XCTAssertEqual(request.value(forHTTPHeaderField: "Accept"), "application/json")
        XCTAssertNil(request.value(forHTTPHeaderField: "Content-Type"))
        XCTAssertTrue(request.value(forHTTPHeaderField: "Authorization")?.hasPrefix("Bearer ") == true)
    }

    func testGetBuild() async throws {
        let transport = StubTransport(responses: [
            .init(data: try reply("builds", id: "BUILD-1"))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let response = try await client.ascTypedGetBuild(id: "BUILD-1")
        XCTAssertEqual(response.data.id, "BUILD-1")
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.first?.url?.path, "/v1/builds/BUILD-1")
    }

    func testGetAppStoreVersionPassesQueryItems() async throws {
        let transport = StubTransport(responses: [
            .init(data: try reply("appStoreVersions", id: "V-1"))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let response = try await client.ascTypedGetAppStoreVersion(
            id: "V-1",
            queryItems: [URLQueryItem(name: "fields[appStoreVersions]", value: "versionString")]
        )
        XCTAssertEqual(response.data.id, "V-1")
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.url?.path, "/v1/appStoreVersions/V-1")
        XCTAssertEqual(try TestSupport.queryItems(for: request)["fields[appStoreVersions]"], "versionString")
    }

    func testCreateAppStoreVersionSendsJSONAPIDocument() async throws {
        let transport = StubTransport(responses: [
            .init(data: try reply("appStoreVersions", id: "V-new"), statusCode: 201)
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let attrs = ASCTypedCreateAppStoreVersionRequestAttributes(
            platform: "IOS", versionString: "2.3.4")
        let requestBody = ASCTypedCreateAppStoreVersionRequest(
            data: ASCTypedCreateAppStoreVersionRequestData(
                type: "appStoreVersions",
                attributes: attrs,
                relationships: .object([
                    "app": .object([
                        "data": .object(["type": .string("apps"), "id": .string("APP-1")])
                    ])
                ])
            )
        )
        let response = try await client.ascTypedCreateAppStoreVersion(body: requestBody)
        XCTAssertEqual(response.data.id, "V-new")
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/v1/appStoreVersions")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        let raw = try XCTUnwrap(request.httpBody)
        let body = try XCTUnwrap(JSONSerialization.jsonObject(with: raw) as? [String: Any])
        let data = try XCTUnwrap(body["data"] as? [String: Any])
        XCTAssertEqual(data["type"] as? String, "appStoreVersions")
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])
        XCTAssertEqual(attributes["platform"] as? String, "IOS")
        XCTAssertEqual(attributes["versionString"] as? String, "2.3.4")
        let relationship = try XCTUnwrap(data["relationships"] as? [String: Any])
        XCTAssertNotNil(relationship["app"])
    }

    func testUpdateAppStoreVersionPatch() async throws {
        let transport = StubTransport(responses: [
            .init(data: try reply("appStoreVersions", id: "V-1"))
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let attrs = ASCTypedUpdateAppStoreVersionRequestAttributes(copyright: "2026 Example")
        let body = ASCTypedUpdateAppStoreVersionRequest(
            data: ASCTypedUpdateAppStoreVersionRequestData(
                type: "appStoreVersions", id: "V-1", attributes: attrs)
        )
        let response = try await client.ascTypedUpdateAppStoreVersion(id: "V-1", body: body)
        XCTAssertEqual(response.data.id, "V-1")
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "PATCH")
        XCTAssertEqual(request.url?.path, "/v1/appStoreVersions/V-1")
        let raw = try XCTUnwrap(request.httpBody)
        let obj = try XCTUnwrap(JSONSerialization.jsonObject(with: raw) as? [String: Any])
        let data = try XCTUnwrap(obj["data"] as? [String: Any])
        XCTAssertEqual(data["id"] as? String, "V-1")
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])
        XCTAssertEqual(attributes["copyright"] as? String, "2026 Example")
    }

    func testUnsafePathIsRejectedWithoutNetwork() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        for bad in ["", ".", "..", "a/b", "a%2Fb", "a?b", "a#b", "a b"] {
            do {
                _ = try await client.ascTypedGetApp(id: bad)
                XCTFail("Expected unsafe path to fail")
            } catch ASCAPIError.invalidResponse {
                // Expected.
            }
        }
        let recorded = await transport.recordedRequests()
        XCTAssertTrue(recorded.isEmpty)
    }

    func testGetPreserves401Classification() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.errorResponse(details: ["expired"]), statusCode: 401)
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            _ = try await client.ascTypedGetApp(id: "A1")
            XCTFail("Expected unauthorized")
        } catch ASCAPIError.unauthorized {
            // Expected.
        }
    }

    func testGetPreserves403Details() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.errorResponse(details: ["not permitted"]), statusCode: 403)
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            _ = try await client.ascTypedGetBuild(id: "B1")
            XCTFail("Expected forbidden")
        } catch ASCAPIError.forbidden(let detail) {
            XCTAssertEqual(detail, "not permitted")
        }
    }

    func testGetPreserves429ClassificationWithoutRetries() async throws {
        let transport = StubTransport(responses: [
            .init(data: Data(), statusCode: 429)
        ])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            _ = try await client.ascTypedGetAppStoreVersion(id: "V1")
            XCTFail("Expected rateLimited")
        } catch ASCAPIError.rateLimited {
            // Expected.
        }
        let recorded = await transport.recordedRequests()
        XCTAssertEqual(recorded.count, 1)
    }

    func testMalformedJSONProducesInvalidResponse() async throws {
        let transport = StubTransport(responses: [.init(data: Data("not json".utf8))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            _ = try await client.ascTypedGetApp(id: "A1")
            XCTFail("Expected invalidResponse")
        } catch ASCAPIError.invalidResponse {
            // Expected.
        }
    }
}
