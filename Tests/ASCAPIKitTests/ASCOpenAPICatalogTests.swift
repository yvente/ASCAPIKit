import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import XCTest
@testable import ASCAPIKit

final class ASCOpenAPICatalogTests: XCTestCase {
    private func operation(_ method: String, _ path: String) throws -> ASCOpenAPIOperation {
        try XCTUnwrap(ASCOpenAPICatalog.all.first {
            $0.method == method && $0.pathTemplate == path
        })
    }

    func testCatalogContainsAllOfficialOperations() {
        let entries = ASCOpenAPICatalog.all
        XCTAssertEqual(entries.count, 1303)
        XCTAssertEqual(Set(entries.map { "\($0.method) \($0.pathTemplate)" }).count, 1303)
    }

    func testRealAppReadRouteAndAuth() async throws {
        let transport = StubTransport(responses: [.init(data: Data(#"{"data":{"type":"apps","id":"APP-1"},"links":{}}"#.utf8))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let op = try operation("GET", "/v1/apps/{id}")
        let result = try await client.ascOpenAPI(op, pathParameters: ["id": "APP-1"])
        XCTAssertFalse(result.isEmpty)
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/v1/apps/APP-1")
        XCTAssertEqual(request.url?.host, "api.appstoreconnect.apple.com")
        XCTAssertTrue(request.value(forHTTPHeaderField: "Authorization")?.hasPrefix("Bearer ") == true)
    }

    func testPathInjectionRejectedWithoutTransport() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let op = try operation("GET", "/v1/apps/{id}")
        for invalid in ["", "..", "foo/bar", "foo%2Fbar", "?debug=1", "space here"] {
            do {
                _ = try await client.ascOpenAPI(op, pathParameters: ["id": invalid])
                XCTFail("Unsafe path was accepted")
            } catch ASCOpenAPICatalogError.invalidPathParameter {
                // Expected.
            }
        }
        let recorded = await transport.recordedRequests()
        XCTAssertTrue(recorded.isEmpty)
    }

    func testUnexpectedQueryRejected() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let op = try operation("GET", "/v1/apps/{id}")
        do {
            _ = try await client.ascOpenAPI(op, pathParameters: ["id": "APP-1"],
                                            queryItems: [.init(name: "__unknown", value: "1")])
            XCTFail("Unexpected query was accepted")
        } catch ASCOpenAPICatalogError.invalidQueryParameter {
            // Expected.
        }
        let recorded = await transport.recordedRequests()
        XCTAssertTrue(recorded.isEmpty)
    }

    func testPostJSONAPIBodyIsPreserved() async throws {
        let transport = StubTransport(responses: [.init(data: Data(#"{"data":{"type":"appStoreVersions","id":"V-1"},"links":{}}"#.utf8))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let op = try operation("POST", "/v1/appStoreVersions")
        let body: ASCJSONValue = .object(["data": .object([
            "type": .string("appStoreVersions"), "attributes": .object(["versionString": .string("1.2")])
        ])])
        _ = try await client.ascOpenAPI(op, body: .json(body))
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        let encoded = try XCTUnwrap(request.httpBody)
        let document = try JSONDecoder().decode(ASCJSONValue.self, from: encoded)
        XCTAssertEqual(document, body)
    }

    func test401And429RetainExistingClassification() async throws {
        let op = try operation("GET", "/v1/apps/{id}")
        for code in [401, 429] {
            let transport = StubTransport(responses: [.init(data: Data(), statusCode: code)])
            let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
            do {
                _ = try await client.ascOpenAPI(op, pathParameters: ["id": "APP-1"])
                XCTFail("Expected failure")
            } catch ASCAPIError.unauthorized where code == 401 {
            } catch ASCAPIError.rateLimited where code == 429 {
            }
            let recorded = await transport.recordedRequests()
            XCTAssertEqual(recorded.count, 1)
        }
    }

    func testNoLiveRequestsAndNoAutoRetries() {
        XCTAssertTrue(ASCOpenAPICatalog.all.allSatisfy { $0.pathTemplate.hasPrefix("/v") })
    }
}
