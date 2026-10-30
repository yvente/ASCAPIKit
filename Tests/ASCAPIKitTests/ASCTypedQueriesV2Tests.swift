import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import XCTest
@testable import ASCAPIKit

/// Offline contract checks for the three additive OpenAPI 4.5.1 typed GET queries.
/// No Apple API call is ever made. Does not claim full-schema or live verification.
final class ASCTypedQueriesV2Tests: XCTestCase {
    private func success(_ type: String, id: String) throws -> Data {
        try TestSupport.jsonData([
            "data": ["id": id, "type": type, "attributes": [:]],
            "links": ["self": "https://example.test/offline"]
        ])
    }

    private func items(_ request: URLRequest) throws -> [URLQueryItem] {
        let url = try XCTUnwrap(request.url)
        return try XCTUnwrap(URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems)
    }

    func testAppQueryEncodesFieldsAndCommaSeparatedInclude() async throws {
        let transport = StubTransport(responses: [.init(data: try success("apps", id: "APP-1"))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let query = ASCTypedGetAppQuery(fields_apps_: ["name", "bundleId"], include: ["builds", "appInfos"])
        let response = try await client.ascTypedGetApp(id: "APP-1", query: query)
        XCTAssertEqual(response.data.id, "APP-1")
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/v1/apps/APP-1")
        let values = try items(request)
        XCTAssertEqual(values.filter { $0.name == "fields[apps]" }.compactMap(\.value), ["name,bundleId"])
        XCTAssertEqual(values.filter { $0.name == "include" }.compactMap(\.value), ["builds,appInfos"])
        XCTAssertNil(request.httpBody)
    }

    func testBuildQueryTypedField() async throws {
        let transport = StubTransport(responses: [.init(data: try success("builds", id: "B-1"))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let result = try await client.ascTypedGetBuild(id: "B-1", query: .init(fields_builds_: ["version"]))
        XCTAssertEqual(result.data.id, "B-1")
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.url?.path, "/v1/builds/B-1")
        XCTAssertEqual(try items(request).filter { $0.name == "fields[builds]" }.compactMap(\.value), ["version"])
    }

    func testVersionQueryTypedField() async throws {
        let transport = StubTransport(responses: [.init(data: try success("appStoreVersions", id: "V-1"))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        let result = try await client.ascTypedGetAppStoreVersion(
            id: "V-1", query: .init(fields_appStoreVersions_: ["versionString"]))
        XCTAssertEqual(result.data.id, "V-1")
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.url?.path, "/v1/appStoreVersions/V-1")
        XCTAssertEqual(try items(request).filter { $0.name == "fields[appStoreVersions]" }.compactMap(\.value), ["versionString"])
    }

    func testEmptyTypedQueryIsEmpty() {
        XCTAssertTrue(ASCTypedGetAppQuery().urlQueryItems().isEmpty)
        XCTAssertTrue(ASCTypedGetBuildQuery().urlQueryItems().isEmpty)
        XCTAssertTrue(ASCTypedGetAppStoreVersionQuery().urlQueryItems().isEmpty)
    }

    func testBadPathRejectedBeforeNetwork() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        for invalid in ["", "..", "a/b", "x%2Fy"] {
            do {
                _ = try await client.ascTypedGetApp(id: invalid, query: .init())
                XCTFail("Unsafe path should fail")
            } catch ASCAPIError.invalidResponse {
                // Expected, same safety barrier as legacy overload.
            }
        }
        let recorded = await transport.recordedRequests()
        XCTAssertTrue(recorded.isEmpty)
    }

    func testRateLimitIsNotRetried() async throws {
        let transport = StubTransport(responses: [.init(data: Data(), statusCode: 429)])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        do {
            _ = try await client.ascTypedGetBuild(id: "B-1", query: .init())
            XCTFail("Expected rate limit")
        } catch ASCAPIError.rateLimited {
            // Expected.
        }
        let recorded = await transport.recordedRequests()
        XCTAssertEqual(recorded.count, 1)
    }

    func testLegacyRawQueryOverloadRemainsAvailable() async throws {
        let transport = StubTransport(responses: [.init(data: try success("apps", id: "APP-1"))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        _ = try await client.ascTypedGetApp(id: "APP-1", queryItems: [.init(name: "include", value: "builds")])
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(try items(request).filter { $0.name == "include" }.compactMap(\.value), ["builds"])
    }

    func testTypedQueryOnlySendsAuthorizedHost() async throws {
        let transport = StubTransport(responses: [.init(data: try success("apps", id: "APP-1"))])
        let client = try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
        _ = try await client.ascTypedGetApp(id: "APP-1", query: .init())
        let recorded = await transport.recordedRequests()
        let request = try XCTUnwrap(recorded.first)
        XCTAssertEqual(request.url?.scheme, "https")
        XCTAssertEqual(request.url?.host, "api.appstoreconnect.apple.com")
        XCTAssertTrue(request.value(forHTTPHeaderField: "Authorization")?.hasPrefix("Bearer ") == true)
    }
}
