import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCReviewDetailTests: XCTestCase {
    func testReviewDetailDecodesAllAttributes() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [
                        "contactFirstName": "Ada",
                        "contactLastName": "Lovelace",
                        "contactPhone": "+1 555 0100",
                        "contactEmail": "review@example.com",
                        "demoAccountName": "reviewer",
                        "demoAccountPassword": "secret",
                        "demoAccountRequired": true,
                        "notes": "Use the demo account."
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.getReviewDetail(
            id: "DETAIL_ID"
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")
        XCTAssertEqual(detail.attributes.contactFirstName, "Ada")
        XCTAssertEqual(detail.attributes.contactLastName, "Lovelace")
        XCTAssertEqual(detail.attributes.contactPhone, "+1 555 0100")
        XCTAssertEqual(detail.attributes.contactEmail, "review@example.com")
        XCTAssertEqual(detail.attributes.demoAccountName, "reviewer")
        XCTAssertEqual(detail.attributes.demoAccountPassword, "secret")
        XCTAssertEqual(detail.attributes.demoAccountRequired, true)
        XCTAssertEqual(detail.attributes.notes, "Use the demo account.")
    }

    func testReviewDetailDecodesSparseAttributes() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [
                        "demoAccountRequired": false
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.getReviewDetail(
            id: "DETAIL_ID"
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")
        XCTAssertEqual(detail.attributes.demoAccountRequired, false)

        XCTAssertNil(detail.attributes.contactFirstName)
        XCTAssertNil(detail.attributes.contactLastName)
        XCTAssertNil(detail.attributes.contactPhone)
        XCTAssertNil(detail.attributes.contactEmail)
        XCTAssertNil(detail.attributes.demoAccountName)
        XCTAssertNil(detail.attributes.demoAccountPassword)
        XCTAssertNil(detail.attributes.notes)
    }

    func testGetReviewDetailBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.getReviewDetail(
            id: "DETAIL_ID"
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewDetails/DETAIL_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        let fields = try XCTUnwrap(
            query["fields[appStoreReviewDetails]"]?
                .split(separator: ",")
                .map(String.init)
        )

        XCTAssertEqual(
            Set(fields),
            [
                "contactFirstName",
                "contactLastName",
                "contactPhone",
                "contactEmail",
                "demoAccountName",
                "demoAccountPassword",
                "demoAccountRequired",
                "notes"
            ]
        )
    }

    func testGetReviewDetailByVersionBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.getReviewDetail(
            appStoreVersionID: "VERSION_ID"
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreVersions/VERSION_ID/appStoreReviewDetail"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testGetReviewDetailIDReturnsRelatedID() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.jsonData([
                    "data": [
                        "type": "appStoreReviewDetails",
                        "id": "DETAIL_ID"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detailID = try await client.getReviewDetailID(
            appStoreVersionID: "VERSION_ID"
        )

        XCTAssertEqual(detailID, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreVersions/VERSION_ID/relationships/appStoreReviewDetail"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
    }

    func testGetReviewDetailIDReturnsNilForNullRelationship() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.jsonData([
                    "data": NSNull()
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detailID = try await client.getReviewDetailID(
            appStoreVersionID: "VERSION_ID"
        )

        XCTAssertNil(detailID)
    }

    func testGetReviewDetailIDRejectsUnexpectedResourceType() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.jsonData([
                    "data": [
                        "type": "wrongType",
                        "id": "DETAIL_ID"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.getReviewDetailID(
                appStoreVersionID: "VERSION_ID"
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    func testCreateReviewDetailJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.createReviewDetail(
            appStoreVersionID: "VERSION_ID",
            contactFirstName: "Ada",
            contactLastName: "Lovelace",
            contactPhone: "+1 555 0100",
            contactEmail: "review@example.com",
            demoAccountRequired: true,
            demoAccountName: "reviewer",
            demoAccountPassword: "secret",
            notes: "Review notes"
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewDetails"
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
            "appStoreReviewDetails"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        let version = try XCTUnwrap(
            relationships["appStoreVersion"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            version["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appStoreVersions"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "VERSION_ID"
        )

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            Set(attributes.keys),
            [
                "contactFirstName",
                "contactLastName",
                "contactPhone",
                "contactEmail",
                "demoAccountRequired",
                "demoAccountName",
                "demoAccountPassword",
                "notes"
            ]
        )

        let rawDemoAccountRequired = try XCTUnwrap(
            attributes["demoAccountRequired"]
        )

        XCTAssertFalse(
            rawDemoAccountRequired is String,
            "demoAccountRequired must encode as a JSON Boolean, not a string"
        )

        XCTAssertTrue(
            try XCTUnwrap(rawDemoAccountRequired as? Bool),
            "demoAccountRequired must be an explicit Boolean true"
        )
    }

    func testCreateReviewDetailOmitsNilOptionalAttributes() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.createReviewDetail(
            appStoreVersionID: "VERSION_ID",
            contactFirstName: "Ada",
            contactLastName: "Lovelace",
            contactPhone: "+1 555 0100",
            contactEmail: "review@example.com",
            demoAccountRequired: false
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: try XCTUnwrap(request.httpBody)
            ) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])

        XCTAssertEqual(
            Set(attributes.keys),
            [
                "contactFirstName",
                "contactLastName",
                "contactPhone",
                "contactEmail",
                "demoAccountRequired"
            ],
            "nil optional attributes must be omitted, not encoded as null"
        )

        let rawDemoAccountRequired = try XCTUnwrap(
            attributes["demoAccountRequired"] as? Bool
        )

        XCTAssertFalse(rawDemoAccountRequired)
    }

    func testUpdateReviewDetailSendsOnlyChangedAttributes() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.updateReviewDetail(
            id: "DETAIL_ID",
            changes: ASCAppStoreReviewDetailUpdate(
                contactEmail: "new@example.com",
                notes: "Updated notes"
            )
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/appStoreReviewDetails/DETAIL_ID"
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
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])

        XCTAssertEqual(
            Set(attributes.keys),
            ["contactEmail", "notes"],
            "PATCH must send exactly the changed attributes"
        )

        XCTAssertEqual(
            attributes["contactEmail"] as? String,
            "new@example.com"
        )
        XCTAssertEqual(
            attributes["notes"] as? String,
            "Updated notes"
        )
    }

    func testUpdateReviewDetailPreservesExplicitFalseAndEmptyString() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appStoreReviewDetails",
                    "id": "DETAIL_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let detail = try await client.updateReviewDetail(
            id: "DETAIL_ID",
            changes: ASCAppStoreReviewDetailUpdate(
                demoAccountName: "",
                demoAccountPassword: "",
                demoAccountRequired: false,
                notes: ""
            )
        )

        XCTAssertEqual(detail.id, "DETAIL_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: try XCTUnwrap(request.httpBody)
            ) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])
        let attributes = try XCTUnwrap(data["attributes"] as? [String: Any])

        XCTAssertEqual(
            Set(attributes.keys),
            [
                "demoAccountName",
                "demoAccountPassword",
                "demoAccountRequired",
                "notes"
            ],
            "explicit empty strings and false must all be present"
        )

        XCTAssertEqual(
            attributes["demoAccountName"] as? String,
            ""
        )
        XCTAssertEqual(
            attributes["demoAccountPassword"] as? String,
            ""
        )
        XCTAssertEqual(
            attributes["notes"] as? String,
            ""
        )

        let rawDemoAccountRequired = try XCTUnwrap(
            attributes["demoAccountRequired"] as? Bool
        )

        XCTAssertFalse(
            rawDemoAccountRequired,
            "explicit false must be encoded, not omitted"
        )
    }

    func testUpdateReviewDetailRejectsEmptyChanges() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            _ = try await client.updateReviewDetail(
                id: "DETAIL_ID",
                changes: ASCAppStoreReviewDetailUpdate()
            )

            XCTFail("Expected invalidResponse")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }
}
