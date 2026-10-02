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
            "/v1/reviewSubmissions"
        )
        // This convenience intentionally uses the top-level filtered
        // collection so app, platform, and state filters share one
        // query-based implementation.
        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
        XCTAssertEqual(
            query["filter[app]"],
            "APP_ID"
        )
        XCTAssertNil(query["filter[platform]"])
        XCTAssertNil(query["filter[state]"])

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

    func testListReviewSubmissionsFiltersByPlatform() async throws {
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

        _ = try await client.listReviewSubmissions(
            appID: "APP_ID",
            platform: "IOS"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions"
        )
        XCTAssertEqual(
            query["filter[app]"],
            "APP_ID"
        )
        XCTAssertEqual(
            query["filter[platform]"],
            "IOS"
        )
        XCTAssertNil(query["filter[state]"])
    }

    func testListReviewSubmissionsFiltersByStatesPreservingOrder() async throws {
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

        _ = try await client.listReviewSubmissions(
            appID: "APP_ID",
            states: [
                "READY_FOR_REVIEW",
                "UNRESOLVED_ISSUES"
            ]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            query["filter[app]"],
            "APP_ID"
        )
        XCTAssertNil(query["filter[platform]"])
        XCTAssertEqual(
            query["filter[state]"],
            "READY_FOR_REVIEW,UNRESOLVED_ISSUES"
        )
    }

    func testListReviewSubmissionsFiltersByPlatformAndStatesTogether() async throws {
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

        _ = try await client.listReviewSubmissions(
            appID: "APP_ID",
            platform: "IOS",
            states: [
                "READY_FOR_REVIEW",
                "UNRESOLVED_ISSUES"
            ]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissions"
        )
        XCTAssertEqual(
            query["filter[app]"],
            "APP_ID"
        )
        XCTAssertEqual(
            query["filter[platform]"],
            "IOS"
        )
        XCTAssertEqual(
            query["filter[state]"],
            "READY_FOR_REVIEW,UNRESOLVED_ISSUES"
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

    func testReviewSubmissionItemToleratesUnknownFutureRelationship() async throws {
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
                            "futureReviewableResource": [
                                "data": [
                                    "type": "futureReviewableResources",
                                    "id": "FUTURE_ID"
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
        XCTAssertEqual(
            item.attributes.state,
            "READY_FOR_REVIEW"
        )
        XCTAssertNotNil(item.relationships)

        XCTAssertNil(item.relationships?.appStoreVersion)
        XCTAssertNil(item.relationships?.appCustomProductPageVersion)
        XCTAssertNil(item.relationships?.appStoreVersionExperiment)
        XCTAssertNil(item.relationships?.appStoreVersionExperimentV2)
        XCTAssertNil(item.relationships?.appEvent)
        XCTAssertNil(item.relationships?.backgroundAssetVersion)
        XCTAssertNil(item.relationships?.gameCenterAchievementVersion)
        XCTAssertNil(item.relationships?.gameCenterActivityVersion)
        XCTAssertNil(item.relationships?.gameCenterChallengeVersion)
        XCTAssertNil(item.relationships?.gameCenterLeaderboardSetVersion)
        XCTAssertNil(item.relationships?.gameCenterLeaderboardVersion)
        XCTAssertNil(item.relationships?.inAppPurchaseVersion)
        XCTAssertNil(item.relationships?.subscriptionVersion)
        XCTAssertNil(item.relationships?.subscriptionGroupVersion)
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

        XCTAssertEqual(fields.count, 15)

        XCTAssertEqual(
            Set(fields),
            [
                "state",
                "appStoreVersion",
                "appCustomProductPageVersion",
                "appStoreVersionExperiment",
                "appStoreVersionExperimentV2",
                "appEvent",
                "backgroundAssetVersion",
                "gameCenterAchievementVersion",
                "gameCenterActivityVersion",
                "gameCenterChallengeVersion",
                "gameCenterLeaderboardSetVersion",
                "gameCenterLeaderboardVersion",
                "inAppPurchaseVersion",
                "subscriptionVersion",
                "subscriptionGroupVersion"
            ]
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

    func testReviewSubmissionItemTargetMappingsAreDocumented() async throws {
        let expectedTargets: [(ASCReviewSubmissionItemTarget, String, String)] = [
            (.appStoreVersion("ID-1"), "appStoreVersion", "appStoreVersions"),
            (.appCustomProductPageVersion("ID-2"), "appCustomProductPageVersion", "appCustomProductPageVersions"),
            (.appStoreVersionExperiment("ID-3"), "appStoreVersionExperiment", "appStoreVersionExperiments"),
            (.appStoreVersionExperimentV2("ID-4"), "appStoreVersionExperimentV2", "appStoreVersionExperiments"),
            (.appEvent("ID-5"), "appEvent", "appEvents"),
            (.backgroundAssetVersion("ID-6"), "backgroundAssetVersion", "backgroundAssetVersions"),
            (.gameCenterAchievementVersion("ID-7"), "gameCenterAchievementVersion", "gameCenterAchievementVersions"),
            (.gameCenterActivityVersion("ID-8"), "gameCenterActivityVersion", "gameCenterActivityVersions"),
            (.gameCenterChallengeVersion("ID-9"), "gameCenterChallengeVersion", "gameCenterChallengeVersions"),
            (.gameCenterLeaderboardSetVersion("ID-10"), "gameCenterLeaderboardSetVersion", "gameCenterLeaderboardSetVersions"),
            (.gameCenterLeaderboardVersion("ID-11"), "gameCenterLeaderboardVersion", "gameCenterLeaderboardVersions"),
            (.inAppPurchaseVersion("ID-12"), "inAppPurchaseVersion", "inAppPurchaseVersions"),
            (.subscriptionVersion("ID-13"), "subscriptionVersion", "subscriptionVersions"),
            (.subscriptionGroupVersion("ID-14"), "subscriptionGroupVersion", "subscriptionGroupVersions")
        ]

        XCTAssertEqual(expectedTargets.count, 14)

        for (target, relationshipName, resourceType) in expectedTargets {
            let transport = StubTransport(
                responses: [
                    .init(data: try makeItemResponse())
                ]
            )

            let client = try TestSupport.makeClient(
                transport: transport,
                key: TestSupport.makePrivateKey()
            )

            _ = try await client.addReviewSubmissionItem(
                reviewSubmissionID: "SUBMISSION_ID",
                target: target
            )

            let requests = await transport.recordedRequests()

            XCTAssertEqual(requests.count, 1)

            let request = try XCTUnwrap(requests.first)

            XCTAssertEqual(
                request.url?.path,
                "/v1/reviewSubmissionItems"
            )

            try assertItemCreateBody(
                request,
                expectedRelationshipName: relationshipName,
                expectedResourceType: resourceType,
                expectedTargetID: targetTargetID(target)
            )
        }
    }

    func testAppStoreVersionExperimentV2UsesSharedResourceType() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .appStoreVersionExperimentV2(
                "EXPERIMENT_ID"
            )
        )

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
            "item create body must not contain attributes or null relationships"
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any]
        )

        XCTAssertEqual(
            Set(relationships.keys),
            ["reviewSubmission", "appStoreVersionExperimentV2"],
            "exactly one target relationship must be present"
        )

        let linkage = try XCTUnwrap(
            (relationships["appStoreVersionExperimentV2"] as? [String: Any])?["data"]
                as? [String: Any]
        )

        XCTAssertEqual(
            linkage["type"] as? String,
            "appStoreVersionExperiments",
            "the V2 relationship key must use the shared experiments resource type"
        )
        XCTAssertNotEqual(
            linkage["type"] as? String,
            "appStoreVersionExperimentsV2",
            "the JSON:API resource type must not carry the V2 suffix"
        )
        XCTAssertEqual(
            linkage["id"] as? String,
            "EXPERIMENT_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForAppStoreVersion() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .appStoreVersion("VERSION_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "appStoreVersion",
            expectedResourceType: "appStoreVersions",
            expectedTargetID: "VERSION_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForAppEvent() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .appEvent("EVENT_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "appEvent",
            expectedResourceType: "appEvents",
            expectedTargetID: "EVENT_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForInAppPurchaseVersion() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .inAppPurchaseVersion("IAP_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "inAppPurchaseVersion",
            expectedResourceType: "inAppPurchaseVersions",
            expectedTargetID: "IAP_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForSubscriptionVersion() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .subscriptionVersion("SUB_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "subscriptionVersion",
            expectedResourceType: "subscriptionVersions",
            expectedTargetID: "SUB_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForSubscriptionGroupVersion() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .subscriptionGroupVersion("GROUP_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "subscriptionGroupVersion",
            expectedResourceType: "subscriptionGroupVersions",
            expectedTargetID: "GROUP_ID"
        )
    }

    func testAddReviewSubmissionItemBuildsExactJSONForBackgroundAssetVersion() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .backgroundAssetVersion("ASSET_ID")
        )

        let request = try await singleRecordedRequest(transport)

        try assertItemCreateBody(
            request,
            expectedRelationshipName: "backgroundAssetVersion",
            expectedResourceType: "backgroundAssetVersions",
            expectedTargetID: "ASSET_ID"
        )
    }

    func testAddAppStoreVersionConvenienceMatchesGenericTargetJSON() async throws {
        let genericTransport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let genericClient = try TestSupport.makeClient(
            transport: genericTransport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await genericClient.addReviewSubmissionItem(
            reviewSubmissionID: "SUBMISSION_ID",
            target: .appStoreVersion("VERSION_ID")
        )

        let convenienceTransport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let convenienceClient = try TestSupport.makeClient(
            transport: convenienceTransport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await convenienceClient.addAppStoreVersionToReviewSubmission(
            reviewSubmissionID: "SUBMISSION_ID",
            appStoreVersionID: "VERSION_ID"
        )

        let genericRequest = try await singleRecordedRequest(genericTransport)
        let convenienceRequest = try await singleRecordedRequest(convenienceTransport)

        XCTAssertEqual(
            convenienceRequest.httpBody,
            genericRequest.httpBody,
            "the App Store Version convenience must delegate to the generic target creation"
        )
        XCTAssertEqual(
            convenienceRequest.url,
            genericRequest.url
        )
    }

    func testReviewSubmissionItemDecodesAppEventRelationship() async throws {
        let item = try await decodeItem([
            "appEvent": [
                "data": [
                    "type": "appEvents",
                    "id": "EVENT_ID"
                ]
            ]
        ])

        XCTAssertEqual(item.id, "ITEM_ID")
        XCTAssertNil(item.relationships?.appStoreVersion)

        let linkage = try XCTUnwrap(
            item.relationships?.appEvent?.data
        )

        XCTAssertEqual(linkage.type, "appEvents")
        XCTAssertEqual(linkage.id, "EVENT_ID")
    }

    func testReviewSubmissionItemDecodesSubscriptionVersionRelationship() async throws {
        let item = try await decodeItem([
            "subscriptionVersion": [
                "data": [
                    "type": "subscriptionVersions",
                    "id": "SUB_ID"
                ]
            ]
        ])

        let linkage = try XCTUnwrap(
            item.relationships?.subscriptionVersion?.data
        )

        XCTAssertEqual(linkage.type, "subscriptionVersions")
        XCTAssertEqual(linkage.id, "SUB_ID")
    }

    func testReviewSubmissionItemDecodesGameCenterAchievementRelationship() async throws {
        let item = try await decodeItem([
            "gameCenterAchievementVersion": [
                "data": [
                    "type": "gameCenterAchievementVersions",
                    "id": "GC_ID"
                ]
            ]
        ])

        let linkage = try XCTUnwrap(
            item.relationships?.gameCenterAchievementVersion?.data
        )

        XCTAssertEqual(linkage.type, "gameCenterAchievementVersions")
        XCTAssertEqual(linkage.id, "GC_ID")
    }

    func testReviewSubmissionItemDecodesWithoutRelationships() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([
                    [
                        "type": "reviewSubmissionItems",
                        "id": "ITEM_ID",
                        "attributes": [
                            "state": "READY_FOR_REVIEW"
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
        XCTAssertNil(item.relationships)
    }

    func testResolveReviewSubmissionItemSendsOnlyResolvedTrue() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let item = try await client.resolveReviewSubmissionItem(
            id: "ITEM_ID"
        )

        XCTAssertEqual(item.id, "ITEM_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            1,
            "resolve must perform exactly one request"
        )

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissionItems/ITEM_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let attributes = try await itemActionAttributes(from: request)

        XCTAssertEqual(
            Set(attributes.keys),
            ["resolved"],
            "resolve body must contain exactly the resolved key"
        )

        XCTAssertTrue(
            try XCTUnwrap(attributes["resolved"] as? Bool),
            "resolved must be a JSON Boolean true"
        )
    }

    func testMarkReviewSubmissionItemRemovedSendsOnlyRemovedTrue() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try makeItemResponse())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let item = try await client.markReviewSubmissionItemRemoved(
            id: "ITEM_ID"
        )

        XCTAssertEqual(item.id, "ITEM_ID")

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            1,
            "mark removed must perform exactly one request"
        )

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.url?.path,
            "/v1/reviewSubmissionItems/ITEM_ID"
        )
        XCTAssertEqual(
            request.httpMethod,
            "PATCH"
        )

        let attributes = try await itemActionAttributes(from: request)

        XCTAssertEqual(
            Set(attributes.keys),
            ["removed"],
            "mark-removed body must contain exactly the removed key"
        )

        XCTAssertTrue(
            try XCTUnwrap(attributes["removed"] as? Bool),
            "removed must be a JSON Boolean true"
        )
    }

    private func makeItemResponse() throws -> Data {
        try TestSupport.single([
            "type": "reviewSubmissionItems",
            "id": "ITEM_ID",
            "attributes": [
                "state": "READY_FOR_REVIEW"
            ]
        ])
    }

    private func targetTargetID(
        _ target: ASCReviewSubmissionItemTarget
    ) -> String {
        switch target {
        case .appStoreVersion(let id): return id
        case .appCustomProductPageVersion(let id): return id
        case .appStoreVersionExperiment(let id): return id
        case .appStoreVersionExperimentV2(let id): return id
        case .appEvent(let id): return id
        case .backgroundAssetVersion(let id): return id
        case .gameCenterAchievementVersion(let id): return id
        case .gameCenterActivityVersion(let id): return id
        case .gameCenterChallengeVersion(let id): return id
        case .gameCenterLeaderboardSetVersion(let id): return id
        case .gameCenterLeaderboardVersion(let id): return id
        case .inAppPurchaseVersion(let id): return id
        case .subscriptionVersion(let id): return id
        case .subscriptionGroupVersion(let id): return id
        }
    }

    private func singleRecordedRequest(
        _ transport: StubTransport
    ) async throws -> URLRequest {
        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        return try XCTUnwrap(requests.first)
    }

    private func assertItemCreateBody(
        _ request: URLRequest,
        expectedRelationshipName: String,
        expectedResourceType: String,
        expectedTargetID: String
    ) throws {
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
            ["reviewSubmission", expectedRelationshipName],
            "item create must contain exactly one target relationship"
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

        let targetLinkage = try XCTUnwrap(
            (relationships[expectedRelationshipName] as? [String: Any])?["data"]
                as? [String: Any]
        )

        XCTAssertEqual(
            targetLinkage["type"] as? String,
            expectedResourceType
        )
        XCTAssertEqual(
            targetLinkage["id"] as? String,
            expectedTargetID
        )
    }

    private func decodeItem(
        _ relationships: [String: Any]
    ) async throws -> ASCReviewSubmissionItem {
        var resource: [String: Any] = [
            "type": "reviewSubmissionItems",
            "id": "ITEM_ID",
            "attributes": [
                "state": "READY_FOR_REVIEW"
            ]
        ]

        resource["relationships"] = relationships

        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.page([resource]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let items = try await client.listReviewSubmissionItems(
            reviewSubmissionID: "SUBMISSION_ID"
        )

        return try XCTUnwrap(items.first)
    }

    private func itemActionAttributes(
        from request: URLRequest
    ) async throws -> [String: Any] {
        let object = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: try XCTUnwrap(request.httpBody)
            ) as? [String: Any]
        )

        let data = try XCTUnwrap(object["data"] as? [String: Any])

        XCTAssertEqual(
            data["type"] as? String,
            "reviewSubmissionItems"
        )
        XCTAssertEqual(
            data["id"] as? String,
            "ITEM_ID"
        )

        return try XCTUnwrap(
            data["attributes"] as? [String: Any]
        )
    }
}
