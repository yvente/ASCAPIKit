import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCRelationshipListTests:
    XCTestCase
{
    func testRelationshipListPaginatesAndReturnsIDs()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let page1 =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReports",
                        "id": "report-1"
                    ]
                ],
                next:
                    "https://api.appstoreconnect.apple.com/v1/analyticsReportRequests/request-1/relationships/reports?cursor=next&limit=2"
            )

        let page2 =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReports",
                        "id": "report-2"
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: page1),
                    .init(data: page2)
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let ids =
            try await client
                .listRelationshipIDs(
                    "/v1/analyticsReportRequests/request-1/relationships/reports",
                    resourceType:
                        "analyticsReports",
                    limit: 2
                )

        XCTAssertEqual(
            ids,
            [
                "report-1",
                "report-2"
            ]
        )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            2
        )

        let firstQuery =
            try TestSupport.queryItems(
                for: requests[0]
            )

        XCTAssertEqual(
            firstQuery["limit"],
            "2"
        )

        XCTAssertNotNil(
            requests[0]
                .value(
                    forHTTPHeaderField:
                        "Authorization"
                )
        )

        XCTAssertEqual(
            requests[1].url?
                .absoluteString,
            "https://api.appstoreconnect.apple.com/v1/analyticsReportRequests/request-1/relationships/reports?cursor=next&limit=2"
        )
    }

    func testRelationshipListRejectsUnexpectedResourceType()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let page =
            try TestSupport.page(
                [
                    [
                        "type":
                            "wrongResources",
                        "id": "resource-1"
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: page)
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .listRelationshipIDs(
                    "/v1/analyticsReportRequests/request-1/relationships/reports",
                    resourceType:
                        "analyticsReports"
                )

            XCTFail(
                "Expected invalidResponse"
            )
        } catch let error
            as ASCAPIError
        {
            XCTAssertEqual(
                error,
                .invalidResponse
            )
        }
    }

    func testRelationshipListRejectsUnsafeNextURL()
        async throws
    {
        let unsafeURLs = [
            "http://api.appstoreconnect.apple.com/v1/analyticsReports/x",
            "https://example.com/v1/analyticsReports/x",
            "https://user:password@api.appstoreconnect.apple.com/v1/analyticsReports/x",
            "https://api.appstoreconnect.apple.com/v2/analyticsReports/x"
        ]

        for unsafeURL in unsafeURLs {
            let key =
                TestSupport.makePrivateKey()

            let page =
                try TestSupport.page(
                    [],
                    next: unsafeURL
                )

            let transport =
                StubTransport(
                    responses: [
                        .init(data: page)
                    ]
                )

            let client =
                try TestSupport.makeClient(
                    transport:
                        transport,
                    key: key
                )

            do {
                _ = try await client
                    .listRelationshipIDs(
                        "/v1/analyticsReportRequests/request-1/relationships/reports",
                        resourceType:
                            "analyticsReports"
                    )

                XCTFail(
                    "Expected unsafePaginationURL for \(unsafeURL)"
                )
            } catch let error
                as ASCAPIError
            {
                XCTAssertEqual(
                    error,
                    .unsafePaginationURL
                )
            }
        }
    }

    func testRelationshipListRejectsPaginationCycle()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let firstURL =
            "https://api.appstoreconnect.apple.com/v1/analyticsReportRequests/request-1/relationships/reports?limit=200"

        let page =
            try TestSupport.page(
                [],
                next: firstURL
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: page)
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .listRelationshipIDs(
                    "/v1/analyticsReportRequests/request-1/relationships/reports",
                    resourceType:
                        "analyticsReports"
                )

            XCTFail(
                "Expected invalidResponse"
            )
        } catch let error
            as ASCAPIError
        {
            XCTAssertEqual(
                error,
                .invalidResponse
            )
        }

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            1
        )
    }
}
