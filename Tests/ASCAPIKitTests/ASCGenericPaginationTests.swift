import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCGenericPaginationTests: XCTestCase {
    func testV2PaginationPreservesOpaqueCursorExactly() async throws {
        let page1 = try TestSupport.page(
            [["id": "one"]],
            next: "https://api.appstoreconnect.apple.com/v2/exampleResources?cursor=x%2By%2Fz%3D"
        )
        let page2 = try TestSupport.page([["id": "two"]])
        let transport = StubTransport(responses: [.init(data: page1), .init(data: page2)])
        let client = try makeClient(transport)
        let resources: [TestResource] = try await client.listAll(
            "/v2/exampleResources",
            queryItems: [URLQueryItem(name: "limit", value: "1")]
        )
        XCTAssertEqual(resources.map(\.id), ["one", "two"])
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 2)
        XCTAssertEqual(requests[0].url?.query, "limit=1")
        XCTAssertEqual(
            requests[1].url?.absoluteString,
            "https://api.appstoreconnect.apple.com/v2/exampleResources?cursor=x%2By%2Fz%3D"
        )
        XCTAssertTrue(requests.allSatisfy {
            $0.httpMethod == "GET" &&
            $0.value(forHTTPHeaderField: "Authorization")?.hasPrefix("Bearer ") == true
        })
    }

    func testV3RelativeQueryLink() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "A"]], next: "?cursor=next")),
            .init(data: try TestSupport.page([["id": "B"]]))
        ])
        let client = try makeClient(transport)
        let results: [TestResource] = try await client.listAll("/v3/exampleResources")
        XCTAssertEqual(results.map(\.id), ["A", "B"])
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests[1].url?.path, "/v3/exampleResources")
        XCTAssertEqual(requests[1].url?.query, "cursor=next")
    }

    func testSinglePageAndEmptyPage() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([]))
        ])
        let client = try makeClient(transport)
        let resources: [TestResource] = try await client.listAll("/v1/exampleResources")
        XCTAssertTrue(resources.isEmpty)
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
    }

    func testCustomOriginAndPort() async throws {
        let origin = URL(string: "https://localhost.example:8443")!
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "A"]], next: "https://localhost.example:8443/v2/exampleResources?page=2")),
            .init(data: try TestSupport.page([["id": "B"]]))
        ])
        let client = try ASCClient(
            configuration: TestSupport.teamConfiguration(),
            privateKeyPEM: TestSupport.makePrivateKey().pemRepresentation,
            transport: transport,
            baseURL: origin
        )
        let result: [TestResource] = try await client.listAll("/v2/exampleResources")
        XCTAssertEqual(result.map(\.id), ["A", "B"])
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.allSatisfy { $0.url?.host == "localhost.example" && $0.url?.port == 8443 })
    }

    func testUnsafeNextLinksNeverReachTransport() async throws {
        let links = [
            "http://api.appstoreconnect.apple.com/v2/exampleResources?page=2",
            "https://attacker.example/v2/exampleResources?page=2",
            "https://evil@api.appstoreconnect.apple.com/v2/exampleResources?page=2",
            "https://api.appstoreconnect.apple.com:8443/v2/exampleResources?page=2",
            "https://api.appstoreconnect.apple.com/v2/otherResources?page=2",
            "https://api.appstoreconnect.apple.com/v3/exampleResources?page=2",
            "https://api.appstoreconnect.apple.com/v2/exampleResources?page=2#fragment",
            "//attacker.example/v2/exampleResources?page=2",
            "https://api.appstoreconnect.apple.com/v2/exampleResources/../otherResources?page=2",
            "https://api.appstoreconnect.apple.com/v2%2FexampleResources?page=2"
        ]
        for next in links {
            let transport = StubTransport(responses: [
                .init(data: try TestSupport.page([["id": "A"]], next: next))
            ])
            let client = try makeClient(transport)
            do {
                let _: [TestResource] = try await client.listAll("/v2/exampleResources")
                XCTFail("Expected unsafe link rejection")
            } catch let error as ASCAPIError {
                XCTAssertTrue(error == .unsafePaginationURL || error == .invalidResponse)
            }
            let requests = await transport.recordedRequests()
            XCTAssertEqual(requests.count, 1)
        }
    }

    func testCycleIsRejectedWithoutThirdRequest() async throws {
        let first = "https://api.appstoreconnect.apple.com/v2/exampleResources?limit=1"
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "A"]], next: first))
        ])
        let client = try makeClient(transport)
        do {
            let _: [TestResource] = try await client.listAll(
                "/v2/exampleResources",
                queryItems: [.init(name: "limit", value: "1")]
            )
            XCTFail("Expected cycle rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
    }

    func testPageCeilingThrowsRatherThanReturningPartialResults() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "A"]], next: "?cursor=more"))
        ])
        let client = try makeClient(transport)
        do {
            let _: [TestResource] = try await client.listAll("/v2/exampleResources", maxPages: 1)
            XCTFail("Expected limit enforcement")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
    }

    func testInvalidInputIsRejectedWithoutNetwork() async throws {
        let transport = StubTransport(responses: [])
        let client = try makeClient(transport)
        for path in ["https://evil.example/v2/foo", "/v0/foo", "/v01/foo", "/v2/../foo", "/v2/foo?x=1", "/v2/foo%2Fbar", "/v2/foo//bar", "/v2/", "/v2/foo#part"] {
            do {
                let _: [TestResource] = try await client.listAll(path)
                XCTFail("Expected input rejection")
            } catch let error as ASCAPIError {
                XCTAssertEqual(error, .invalidResponse)
            }
        }
        do {
            let _: [TestResource] = try await client.listAll("/v2/foo", maxPages: 0)
            XCTFail("Expected maxPages rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let requests = await transport.recordedRequests()
        XCTAssertTrue(requests.isEmpty)
    }

    func testBadJSONAndErrorClassification() async throws {
        let badTransport = StubTransport(responses: [.init(data: Data("broken".utf8))])
        let badClient = try makeClient(badTransport)
        do {
            let _: [TestResource] = try await badClient.listAll("/v2/exampleResources")
            XCTFail("Expected decoding failure")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
        let deniedTransport = StubTransport(responses: [
            .init(data: try TestSupport.errorResponse(details: ["Permission denied"]), statusCode: 403)
        ])
        let deniedClient = try makeClient(deniedTransport)
        do {
            let _: [TestResource] = try await deniedClient.listAll("/v2/exampleResources")
            XCTFail("Expected forbidden")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .forbidden("Permission denied"))
        }
    }

    func testRelationshipIdentifierPagesVerifyType() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([
                ["type": "apps", "id": "A1"], ["type": "apps", "id": "A2"]
            ], next: "?cursor=more")),
            .init(data: try TestSupport.page([["type": "apps", "id": "A3"]]))
        ])
        let client = try makeClient(transport)
        let result = try await client.listRelationshipIdentifiers(
            "/v2/betaGroups/G1/relationships/apps",
            resourceType: "apps"
        )
        XCTAssertEqual(result.map(\.id), ["A1", "A2", "A3"])
    }

    func testRelationshipWrongTypeIsRejected() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["type": "betaGroups", "id": "G1"]]))
        ])
        let client = try makeClient(transport)
        do {
            _ = try await client.listRelationshipIdentifiers(
                "/v2/apps/A1/relationships/betaGroups", resourceType: "apps"
            )
            XCTFail("Expected linkage type rejection")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    func testLegacyV1PaginationPolicyRemainsUntouched() async throws {
        let transport = StubTransport(responses: [
            .init(data: try TestSupport.page([["id": "A1"]], next: "https://api.appstoreconnect.apple.com/v2/apps?page=2"))
        ])
        let client = try makeClient(transport)
        do {
            let _: [TestResource] = try await client.list("/v1/apps", resourceType: "apps", fields: "id")
            XCTFail("Expected legacy rejection of v2 pagination")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .unsafePaginationURL)
        }
        let requests = await transport.recordedRequests()
        XCTAssertEqual(requests.count, 1)
    }

    private func makeClient(_ transport: StubTransport) throws -> ASCClient {
        try TestSupport.makeClient(transport: transport, key: TestSupport.makePrivateKey())
    }

}
