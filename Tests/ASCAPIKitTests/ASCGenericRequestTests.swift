import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCGenericRequestTests: XCTestCase {
    func testRequestResourceSupportsV2() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.single(["id": "R1"]))
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let result: TestResource = try await client.requestResource(
            method: .get,
            path: "/v2/exampleResources/R1"
        )
        XCTAssertEqual(result.id, "R1")
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
        XCTAssertEqual(requests[0].url?.path, "/v2/exampleResources/R1")
        XCTAssertEqual(requests[0].httpMethod, "GET")
        XCTAssertTrue(requests[0].value(forHTTPHeaderField: "Authorization")?.hasPrefix("Bearer ") == true)
    }

    func testRequestDecodedSupportsV3DocumentAndQuery() async throws {
        struct Document: Decodable, Sendable {
            let data: [TestResource]
        }
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "R2"]]))
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let result: Document = try await client.requestDecoded(
            method: .get,
            path: "/v3/exampleResources",
            queryItems: [URLQueryItem(name: "filter[app]", value: "A1")]
        )
        XCTAssertEqual(result.data.map(\.id), ["R2"])
        let requests = await transport.recordedRequests()
        XCTAssertEqual(try TestSupport.queryItems(for: requests[0])["filter[app]"], "A1")
    }

    func testComplexJSONAPIPost() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.single(["id": "created"]), statusCode: 201)
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let body: ASCJSONValue = .object([
            "data": .object([
                "type": .string("exampleResources"),
                "attributes": .object([
                    "enabled": .boolean(false),
                    "count": .integer(12),
                    "price": .decimal(Decimal(string: "1.25")!),
                    "optionalField": .null,
                    "tags": .array([.string("first"), .string("second")])
                ]),
                "relationships": .object([
                    "apps": .object(["data": .array([
                        .object(["type": .string("apps"), "id": .string("A1")]),
                        .object(["type": .string("apps"), "id": .string("A2")])
                    ])])
                ])
            ])
        ])
        let result: TestResource = try await client.requestResource(
            method: .post,
            path: "/v1/exampleResources",
            body: body
        )
        XCTAssertEqual(result.id, "created")
        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)
        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        let encoded = try XCTUnwrap(request.httpBody)
        let object = try XCTUnwrap(JSONSerialization.jsonObject(with: encoded) as? [String: Any])
        let resource = try XCTUnwrap(object["data"] as? [String: Any])
        let attributes = try XCTUnwrap(resource["attributes"] as? [String: Any])
        XCTAssertEqual(attributes["enabled"] as? Bool, false)
        XCTAssertEqual(attributes["count"] as? Int, 12)
        XCTAssertEqual(attributes["price"] as? Double, 1.25)
        XCTAssertTrue(attributes["optionalField"] is NSNull)
        XCTAssertEqual(attributes["tags"] as? [String], ["first", "second"])
        let relationships = try XCTUnwrap(resource["relationships"] as? [String: Any])
        let apps = try XCTUnwrap(relationships["apps"] as? [String: Any])
        let linked = try XCTUnwrap(apps["data"] as? [[String: String]])
        XCTAssertEqual(linked.map { $0["id"] ?? "" }, ["A1", "A2"])
    }

    func testDeleteAccepts204EmptyResponse() async throws {
        let transport = StubTransport(responses: [
            .init(data: Data(), statusCode: 204)
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let response = try await client.requestRaw(
            method: .delete,
            path: "/v2/exampleResources/R1"
        )
        XCTAssertTrue(response.isEmpty)
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
        XCTAssertEqual(requests[0].httpMethod, "DELETE")
        XCTAssertNil(requests[0].httpBody)
    }

    func testInvalidPathsAreRejectedBeforeTransport() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let paths = [
            "https://evil.example/v1/apps",
            "//evil.example/v1/apps",
            "/v0/apps",
            "/v01/apps",
            "/v1/apps?filter[app]=1",
            "/v1/apps#fragment",
            "/v1/../apps",
            "/v1/apps//other",
            "/v1/apps\\extra",
            "/v1/"
        ]
        for path in paths {
            do {
                _ = try await client.requestRaw(method: .get, path: path)
                XCTFail("Expected rejection of invalid API path")
            } catch let error as ASCAPIError {
                XCTAssertEqual(error, .invalidResponse)
            }
        }
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.isEmpty)
    }

    func testGETRejectsBodyBeforeTransport() async throws {
        let transport = StubTransport(responses: [])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        do {
            _ = try await client.requestRaw(
                method: .get,
                path: "/v1/apps",
                body: .object(["data": .object([:])])
            )
            XCTFail("Expected GET body to be rejected")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.isEmpty)
    }

    func testHTTPErrorClassificationIsPreserved() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.errorResponse(details: ["Denied"]), statusCode: 403)
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        do {
            _ = try await client.requestRaw(method: .get, path: "/v3/exampleResources")
            XCTFail("Expected 403")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .forbidden("Denied"))
        }
    }

    func testMalformedResponseIsRejected() async throws {
        let transport = StubTransport(responses: [
            .init(data: Data("not json".utf8))
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        do {
            let _: TestResource = try await client.requestResource(
                method: .get,
                path: "/v1/exampleResources/R1"
            )
            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    func testJSONValueEncodeDecodeRoundTrip() throws {
        let value: ASCJSONValue = .object([
            "boolean": .boolean(true),
            "integer": .integer(5),
            "decimal": .decimal(Decimal(string: "1.75")!),
            "array": .array([.null, .string("hello")])
        ])
        let encoded = try JSONEncoder().encode(value)
        let decoded = try JSONDecoder().decode(ASCJSONValue.self, from: encoded)
        XCTAssertEqual(decoded, value)
    }
    func testPatchUsesJSONBody() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.single(["id": "R1"]))
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        let body: ASCJSONValue = .object([
            "data": .object([
                "type": .string("exampleResources"),
                "id": .string("R1"),
                "attributes": .object(["enabled": .boolean(true)])
            ])
        ])
        let response: TestResource = try await client.requestResource(
            method: .patch,
            path: "/v3/exampleResources/R1",
            body: body
        )
        XCTAssertEqual(response.id, "R1")
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
        XCTAssertEqual(requests[0].httpMethod, "PATCH")
        XCTAssertNotNil(requests[0].httpBody)
    }

    func testDecodedResponseRejects204EmptyResponse() async throws {
        let transport = StubTransport(responses: [
            .init(data: Data(), statusCode: 204)
        ])
        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )
        do {
            let _: TestResource = try await client.requestResource(
                method: .delete,
                path: "/v1/exampleResources/R1"
            )
            XCTFail("Expected invalidResponse for an empty resource response")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

}
