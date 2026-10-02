import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCReviewSubmissionTests: XCTestCase {
    func testReviewSubmissionDecodesAttributes() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [
                        "platform": "IOS",
                        "state": "WAITING_FOR_REVIEW",
                        "submittedDate":
                            "2026-10-02T12:34:56Z"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.getReviewSubmission(
            id: "SUBMISSION_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")
        XCTAssertEqual(submission.attributes.platform, "IOS")
        XCTAssertEqual(submission.attributes.state, "WAITING_FOR_REVIEW")
        XCTAssertEqual(
            submission.attributes.submittedDate,
            "2026-10-02T12:34:56Z"
        )
    }

    func testReviewSubmissionDecodesSparseAndUnknownState() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [
                        "state": "FUTURE_STATE"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.getReviewSubmission(
            id: "SUBMISSION_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")
        XCTAssertNil(submission.attributes.platform)
        XCTAssertNil(submission.attributes.submittedDate)
        XCTAssertEqual(
            submission.attributes.state,
            "FUTURE_STATE"
        )
    }

    func testListReviewSubmissionsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "reviewSubmissions",
                        "id": "SUBMISSION_ID",
                        "attributes": [:]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submissions = try await client.listReviewSubmissions(
            appID: "APP_ID"
        )

        XCTAssertEqual(submissions.count, 1)
        XCTAssertEqual(submissions.first?.id, "SUBMISSION_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/apps/APP_ID/reviewSubmissions"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        let fields = try XCTUnwrap(
            query["fields[reviewSubmissions]"]?
                .split(separator: ",")
                .map(String.init)
        )

        XCTAssertEqual(
            Set(fields),
            ["platform", "submittedDate", "state"]
        )
    }

    func testGetReviewSubmissionBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.getReviewSubmission(
            id: "SUBMISSION_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions/SUBMISSION_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        let fields = try XCTUnwrap(
            query["fields[reviewSubmissions]"]?
                .split(separator: ",")
                .map(String.init)
        )

        XCTAssertEqual(
            Set(fields),
            ["platform", "submittedDate", "state"]
        )
    }

    func testCreateReviewSubmissionJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.createReviewSubmission(
            appID: "APP_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions"
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
            Set(data.keys),
            ["type", "relationships"],
            "create body must contain exactly type and relationships, no attributes"
        )

        XCTAssertEqual(
            data["type"] as? String,
            "reviewSubmissions"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        let app = try XCTUnwrap(
            relationships["app"] as? [String: Any]
        )

        let linkage = try XCTUnwrap(
            app["data"] as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "apps"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "APP_ID"
        )
    }

    func testReviewSubmissionItemDecodesAppStoreVersionRelationship() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "reviewSubmissionItems",
                        "id": "ITEM_ID",
                        "attributes": [
                            "state": "READY_FOR_REVIEW"
                        ],
                        "relationships": [
                            "appStoreVersion": [
                                "data": [
                                    "type": "appStoreVersions",
                                    "id": "VERSION_ID"
                                ]
                            ]
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let items = try await client.listReviewSubmissionItems(
            reviewSubmissionID: "SUBMISSION_ID"
        )

        let item = try XCTUnwrap(items.first)

        XCTAssertEqual(item.id, "ITEM_ID")
        XCTAssertEqual(item.attributes.state, "READY_FOR_REVIEW")

        let relationship = try XCTUnwrap(
            item.relationships?.appStoreVersion
        )

        let linkage = try XCTUnwrap(relationship.data)

        XCTAssertEqual(
            linkage.type,
            "appStoreVersions"
        )
        XCTAssertEqual(
            linkage.id,
            "VERSION_ID"
        )
    }

    func testReviewSubmissionItemToleratesNonAppStoreVersionRelationship() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "reviewSubmissionItems",
                        "id": "ITEM_ID",
                        "attributes": [
                            "state": "READY_FOR_REVIEW"
                        ],
                        "relationships": [
                            "appEvent": [
                                "data": [
                                    "type": "appEvents",
                                    "id": "EVENT_ID"
                                ]
                            ]
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let items = try await client.listReviewSubmissionItems(
            reviewSubmissionID: "SUBMISSION_ID"
        )

        let item = try XCTUnwrap(items.first)

        XCTAssertEqual(item.id, "ITEM_ID")
        XCTAssertEqual(item.attributes.state, "READY_FOR_REVIEW")
        XCTAssertNil(item.relationships?.appStoreVersion)
    }

    func testListReviewSubmissionItemsBuildsCorrectRequest() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "reviewSubmissionItems",
                        "id": "ITEM_ID",
                        "attributes": [
                            "state": "READY_FOR_REVIEW"
                        ],
                        "relationships": [
                            "appStoreVersion": [
                                "data": [
                                    "type": "appStoreVersions",
                                    "id": "VERSION_ID"
                                ]
                            ]
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let items = try await client.listReviewSubmissionItems(
            reviewSubmissionID: "SUBMISSION_ID"
        )

        XCTAssertEqual(items.count, 1)

        let item = try XCTUnwrap(items.first)

        XCTAssertEqual(item.id, "ITEM_ID")
        XCTAssertEqual(item.attributes.state, "READY_FOR_REVIEW")
        XCTAssertEqual(
            item.relationships?.appStoreVersion?.data?.id,
            "VERSION_ID"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions/SUBMISSION_ID/items"
        )
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        let fields = try XCTUnwrap(
            query["fields[reviewSubmissionItems]"]?
                .split(separator: ",")
                .map(String.init)
        )

        XCTAssertEqual(
            Set(fields),
            ["state", "appStoreVersion"]
        )
    }

    func testAddAppStoreVersionToReviewSubmissionJSONShape() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissionItems",
                    "id": "ITEM_ID",
                    "attributes": [
                        "state": "READY_FOR_REVIEW"
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let item = try await client.addAppStoreVersionToReviewSubmission(
            reviewSubmissionID: "SUBMISSION_ID",
            appStoreVersionID: "VERSION_ID"
        )

        XCTAssertEqual(item.id, "ITEM_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissionItems"
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
            Set(data.keys),
            ["type", "relationships"],
            "item create body must contain exactly type and relationships, no attributes"
        )

        XCTAssertEqual(
            data["type"] as? String,
            "reviewSubmissionItems"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        XCTAssertEqual(
            Set(relationships.keys),
            ["reviewSubmission", "appStoreVersion"]
        )

        let submissionLinkage = try XCTUnwrap(
            (relationships["reviewSubmission"] as? [String: Any])?["data"]
                as? [String: Any]
        )

        XCTAssertEqual(
            submissionLinkage["type"] as? String,
            "reviewSubmissions"
        )
        XCTAssertEqual(
            submissionLinkage["id"] as? String,
            "SUBMISSION_ID"
        )

        let versionLinkage = try XCTUnwrap(
            (relationships["appStoreVersion"] as? [String: Any])?["data"]
                as? [String: Any]
        )

        XCTAssertEqual(
            versionLinkage["type"] as? String,
            "appStoreVersions"
        )
        XCTAssertEqual(
            versionLinkage["id"] as? String,
            "VERSION_ID"
        )
    }

    func testDeleteReviewSubmissionItemAccepts204() async throws {
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

        try await client.deleteReviewSubmissionItem(
            id: "ITEM_ID"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissionItems/ITEM_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "DELETE"
        )
    }

    func testSubmitReviewSubmissionSendsOnlySubmittedTrue() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.submitReviewSubmission(
            id: "SUBMISSION_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            1,
            "submit must perform exactly one request with no hidden preflight"
        )

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions/SUBMISSION_ID"
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

        XCTAssertEqual(
            data["type"] as? String,
            "reviewSubmissions"
        )
        XCTAssertEqual(
            data["id"] as? String,
            "SUBMISSION_ID"
        )

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            Set(attributes.keys),
            ["submitted"],
            "submit body attributes must contain exactly the submitted key"
        )

        let rawSubmitted = try XCTUnwrap(attributes["submitted"])

        XCTAssertTrue(
            try XCTUnwrap(rawSubmitted as? Bool),
            "submitted must be a JSON Boolean true"
        )
    }

    func testCancelReviewSubmissionSendsOnlyCanceledTrue() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "reviewSubmissions",
                    "id": "SUBMISSION_ID",
                    "attributes": [:]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let submission = try await client.cancelReviewSubmission(
            id: "SUBMISSION_ID"
        )

        XCTAssertEqual(submission.id, "SUBMISSION_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            1,
            "cancel must perform exactly one request"
        )

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions/SUBMISSION_ID"
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

        XCTAssertEqual(
            data["type"] as? String,
            "reviewSubmissions"
        )
        XCTAssertEqual(
            data["id"] as? String,
            "SUBMISSION_ID"
        )

        let attributes = try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )

        XCTAssertEqual(
            Set(attributes.keys),
            ["canceled"],
            "cancel body attributes must contain exactly the canceled key"
        )

        let rawCanceled = try XCTUnwrap(attributes["canceled"])

        XCTAssertTrue(
            try XCTUnwrap(rawCanceled as? Bool),
            "canceled must be a JSON Boolean true"
        )
    }
}
