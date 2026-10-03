import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCAnalyticsTests:
    XCTestCase
{
    func testAnalyticsRawValuesAreForwardCompatible()
        throws
    {
        let access =
            ASCAnalyticsReportAccessType(
                rawValue:
                    "FUTURE_ACCESS"
            )

        let category =
            ASCAnalyticsReportCategory(
                rawValue:
                    "FUTURE_CATEGORY"
            )

        let granularity =
            ASCAnalyticsReportGranularity(
                rawValue:
                    "FUTURE_GRANULARITY"
            )

        let encoder = JSONEncoder()
        let decoder = JSONDecoder()

        XCTAssertEqual(
            try decoder.decode(
                ASCAnalyticsReportAccessType.self,
                from:
                    encoder.encode(access)
            ),
            access
        )

        XCTAssertEqual(
            try decoder.decode(
                ASCAnalyticsReportCategory.self,
                from:
                    encoder.encode(category)
            ),
            category
        )

        XCTAssertEqual(
            try decoder.decode(
                ASCAnalyticsReportGranularity.self,
                from:
                    encoder.encode(
                        granularity
                    )
            ),
            granularity
        )
    }

    func testCreateAnalyticsReportRequest()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let response =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReportRequests",
                    "id": "request-1",
                    "attributes": [
                        "accessType":
                            "ONGOING",
                        "stoppedDueToInactivity":
                            false
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(
                        data: response,
                        statusCode: 201
                    )
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let resource =
            try await client
                .createAnalyticsReportRequest(
                    appID: "app-1",
                    accessType: .ongoing
                )

        XCTAssertEqual(
            resource.id,
            "request-1"
        )

        XCTAssertEqual(
            resource.attributes.accessType,
            .ongoing
        )

        XCTAssertEqual(
            resource.attributes
                .stoppedDueToInactivity,
            false
        )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            1
        )

        let request = try XCTUnwrap(
            requests.first
        )

        XCTAssertEqual(
            request.httpMethod,
            "POST"
        )

        XCTAssertEqual(
            request.url?.path,
            "/v1/analyticsReportRequests"
        )

        XCTAssertEqual(
            request.value(
                forHTTPHeaderField:
                    "Content-Type"
            ),
            "application/json"
        )

        let body =
            try XCTUnwrap(
                request.httpBody
            )

        let object =
            try XCTUnwrap(
                try JSONSerialization
                    .jsonObject(
                        with: body
                    )
                    as? [String: Any]
            )

        let data =
            try XCTUnwrap(
                object["data"]
                    as? [String: Any]
            )

        XCTAssertEqual(
            data["type"] as? String,
            "analyticsReportRequests"
        )

        let attributes =
            try XCTUnwrap(
                data["attributes"]
                    as? [String: Any]
            )

        XCTAssertEqual(
            attributes["accessType"]
                as? String,
            "ONGOING"
        )

        let relationships =
            try XCTUnwrap(
                data["relationships"]
                    as? [String: Any]
            )

        let app =
            try XCTUnwrap(
                relationships["app"]
                    as? [String: Any]
            )

        let linkage =
            try XCTUnwrap(
                app["data"]
                    as? [String: Any]
            )

        XCTAssertEqual(
            linkage["type"] as? String,
            "apps"
        )

        XCTAssertEqual(
            linkage["id"] as? String,
            "app-1"
        )
    }

    func testAnalyticsResourceEndpointsAndFilters()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let requestPage =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportRequests",
                        "id": "request-1",
                        "attributes": [
                            "accessType":
                                "ONGOING",
                            "stoppedDueToInactivity":
                                false
                        ]
                    ]
                ]
            )

        let requestSingle =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReportRequests",
                    "id": "request-1",
                    "attributes": [
                        "accessType":
                            "ONGOING",
                        "stoppedDueToInactivity":
                            false
                    ]
                ]
            )

        let reportPage =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReports",
                        "id": "report-1",
                        "attributes": [
                            "name":
                                "App Sessions",
                            "category":
                                "APP_USAGE"
                        ]
                    ]
                ]
            )

        let reportSingle =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReports",
                    "id": "report-1",
                    "attributes": [
                        "name":
                            "App Sessions",
                        "category":
                            "APP_USAGE"
                    ]
                ]
            )

        let instancePage =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportInstances",
                        "id": "instance-1",
                        "attributes": [
                            "granularity":
                                "DAILY",
                            "processingDate":
                                "2026-10-01"
                        ]
                    ]
                ]
            )

        let instanceSingle =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReportInstances",
                    "id": "instance-1",
                    "attributes": [
                        "granularity":
                            "DAILY",
                        "processingDate":
                            "2026-10-01"
                    ]
                ]
            )

        let segmentPage =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportSegments",
                        "id": "segment-1",
                        "attributes": [
                            "checksum":
                                "abc",
                            "sizeInBytes":
                                123,
                            "url":
                                "https://reports.example.com/report.txt.gz"
                        ]
                    ]
                ]
            )

        let segmentSingle =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReportSegments",
                    "id": "segment-1",
                    "attributes": [
                        "checksum":
                            "abc",
                        "sizeInBytes":
                            123,
                        "url":
                            "https://reports.example.com/report.txt.gz"
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: requestPage),
                    .init(data: requestSingle),
                    .init(data: reportPage),
                    .init(data: reportSingle),
                    .init(data: instancePage),
                    .init(data: instanceSingle),
                    .init(data: segmentPage),
                    .init(data: segmentSingle),
                    .init(
                        data: Data(),
                        statusCode: 204
                    )
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        _ = try await client
            .listAnalyticsReportRequests(
                appID: "app-1",
                accessTypes: [
                    .ongoing,
                    .oneTimeSnapshot
                ],
                limit: 17
            )

        _ = try await client
            .getAnalyticsReportRequest(
                id: "request-1"
            )

        _ = try await client
            .listAnalyticsReports(
                reportRequestID:
                    "request-1",
                categories: [
                    .appUsage,
                    .performance
                ],
                names: [
                    "App Sessions",
                    "App Crashes"
                ],
                limit: 18
            )

        _ = try await client
            .getAnalyticsReport(
                id: "report-1"
            )

        _ = try await client
            .listAnalyticsReportInstances(
                reportID: "report-1",
                granularities: [
                    .daily,
                    .monthly
                ],
                processingDates: [
                    "2026-09-30",
                    "2026-10-01"
                ],
                limit: 19
            )

        _ = try await client
            .getAnalyticsReportInstance(
                id: "instance-1"
            )

        _ = try await client
            .listAnalyticsReportSegments(
                instanceID:
                    "instance-1",
                limit: 20
            )

        _ = try await client
            .getAnalyticsReportSegment(
                id: "segment-1"
            )

        try await client
            .deleteAnalyticsReportRequest(
                id: "request-1"
            )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            9
        )

        XCTAssertEqual(
            requests[0].url?.path,
            "/v1/apps/app-1/analyticsReportRequests"
        )

        let requestQuery =
            try TestSupport.queryItems(
                for: requests[0]
            )

        XCTAssertEqual(
            requestQuery["limit"],
            "17"
        )

        XCTAssertEqual(
            requestQuery[
                "fields[analyticsReportRequests]"
            ],
            "accessType,stoppedDueToInactivity"
        )

        XCTAssertEqual(
            requestQuery[
                "filter[accessType]"
            ],
            "ONGOING,ONE_TIME_SNAPSHOT"
        )

        XCTAssertEqual(
            requests[1].url?.path,
            "/v1/analyticsReportRequests/request-1"
        )

        XCTAssertEqual(
            requests[2].url?.path,
            "/v1/analyticsReportRequests/request-1/reports"
        )

        let reportQuery =
            try TestSupport.queryItems(
                for: requests[2]
            )

        XCTAssertEqual(
            reportQuery["limit"],
            "18"
        )

        XCTAssertEqual(
            reportQuery[
                "fields[analyticsReports]"
            ],
            "name,category"
        )

        XCTAssertEqual(
            reportQuery[
                "filter[category]"
            ],
            "APP_USAGE,PERFORMANCE"
        )

        XCTAssertEqual(
            reportQuery[
                "filter[name]"
            ],
            "App Sessions,App Crashes"
        )

        XCTAssertEqual(
            requests[3].url?.path,
            "/v1/analyticsReports/report-1"
        )

        XCTAssertEqual(
            requests[4].url?.path,
            "/v1/analyticsReports/report-1/instances"
        )

        let instanceQuery =
            try TestSupport.queryItems(
                for: requests[4]
            )

        XCTAssertEqual(
            instanceQuery["limit"],
            "19"
        )

        XCTAssertEqual(
            instanceQuery[
                "fields[analyticsReportInstances]"
            ],
            "granularity,processingDate"
        )

        XCTAssertEqual(
            instanceQuery[
                "filter[granularity]"
            ],
            "DAILY,MONTHLY"
        )

        XCTAssertEqual(
            instanceQuery[
                "filter[processingDate]"
            ],
            "2026-09-30,2026-10-01"
        )

        XCTAssertEqual(
            requests[5].url?.path,
            "/v1/analyticsReportInstances/instance-1"
        )

        XCTAssertEqual(
            requests[6].url?.path,
            "/v1/analyticsReportInstances/instance-1/segments"
        )

        let segmentQuery =
            try TestSupport.queryItems(
                for: requests[6]
            )

        XCTAssertEqual(
            segmentQuery["limit"],
            "20"
        )

        XCTAssertEqual(
            segmentQuery[
                "fields[analyticsReportSegments]"
            ],
            "checksum,sizeInBytes,url"
        )

        XCTAssertEqual(
            requests[7].url?.path,
            "/v1/analyticsReportSegments/segment-1"
        )

        XCTAssertEqual(
            requests[8].httpMethod,
            "DELETE"
        )

        XCTAssertEqual(
            requests[8].url?.path,
            "/v1/analyticsReportRequests/request-1"
        )
    }

    func testAnalyticsRelationshipEndpoints()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let requestIDs =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportRequests",
                        "id": "request-1"
                    ]
                ]
            )

        let reportIDs =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReports",
                        "id": "report-1"
                    ]
                ]
            )

        let instanceIDs =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportInstances",
                        "id": "instance-1"
                    ]
                ]
            )

        let segmentIDs =
            try TestSupport.page(
                [
                    [
                        "type":
                            "analyticsReportSegments",
                        "id": "segment-1"
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: requestIDs),
                    .init(data: reportIDs),
                    .init(data: instanceIDs),
                    .init(data: segmentIDs)
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let requestIDList =
            try await client
                .listAnalyticsReportRequestIDs(
                    appID: "app-1",
                    limit: 11
                )

        XCTAssertEqual(
            requestIDList,
            ["request-1"]
        )

        let reportIDList =
            try await client
                .listAnalyticsReportIDs(
                    reportRequestID:
                        "request-1",
                    limit: 12
                )

        XCTAssertEqual(
            reportIDList,
            ["report-1"]
        )

        let instanceIDList =
            try await client
                .listAnalyticsReportInstanceIDs(
                    reportID: "report-1",
                    limit: 13
                )

        XCTAssertEqual(
            instanceIDList,
            ["instance-1"]
        )

        let segmentIDList =
            try await client
                .listAnalyticsReportSegmentIDs(
                    instanceID:
                        "instance-1",
                    limit: 14
                )

        XCTAssertEqual(
            segmentIDList,
            ["segment-1"]
        )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests[0].url?.path,
            "/v1/apps/app-1/relationships/analyticsReportRequests"
        )

        XCTAssertEqual(
            requests[1].url?.path,
            "/v1/analyticsReportRequests/request-1/relationships/reports"
        )

        XCTAssertEqual(
            requests[2].url?.path,
            "/v1/analyticsReports/report-1/relationships/instances"
        )

        XCTAssertEqual(
            requests[3].url?.path,
            "/v1/analyticsReportInstances/instance-1/relationships/segments"
        )

        XCTAssertEqual(
            try TestSupport.queryItems(
                for: requests[0]
            )["limit"],
            "11"
        )

        XCTAssertEqual(
            try TestSupport.queryItems(
                for: requests[1]
            )["limit"],
            "12"
        )

        XCTAssertEqual(
            try TestSupport.queryItems(
                for: requests[2]
            )["limit"],
            "13"
        )

        XCTAssertEqual(
            try TestSupport.queryItems(
                for: requests[3]
            )["limit"],
            "14"
        )
    }

    func testAnalyticsModelsDecodeSparseAndUnknownValues()
        throws
    {
        let requestData =
            try TestSupport.jsonData(
                [
                    "id": "request-1",
                    "attributes": [
                        "accessType":
                            "FUTURE_ACCESS"
                    ]
                ]
            )

        let request =
            try JSONDecoder().decode(
                ASCAnalyticsReportRequest.self,
                from: requestData
            )

        XCTAssertEqual(
            request.attributes
                .accessType?.rawValue,
            "FUTURE_ACCESS"
        )

        XCTAssertNil(
            request.attributes
                .stoppedDueToInactivity
        )

        let segmentData =
            try TestSupport.jsonData(
                [
                    "id": "segment-1",
                    "attributes": [:]
                ]
            )

        let segment =
            try JSONDecoder().decode(
                ASCAnalyticsReportSegment.self,
                from: segmentData
            )

        XCTAssertNil(
            segment.attributes.checksum
        )

        XCTAssertNil(
            segment.attributes
                .sizeInBytes
        )

        XCTAssertNil(
            segment.attributes.url
        )
    }

    func testAnalyticsInvalidSingleResponseMapsToInvalidResponse()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let transport =
            StubTransport(
                responses: [
                    .init(
                        data:
                            Data(
                                "not-json".utf8
                            )
                    )
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .getAnalyticsReport(
                    id: "report-1"
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

    func testAnalyticsPreservesForbiddenClassification()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let response =
            try TestSupport
                .errorResponse(
                    details: [
                        "Insufficient role"
                    ]
                )

        let transport =
            StubTransport(
                responses: [
                    .init(
                        data: response,
                        statusCode: 403
                    )
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .getAnalyticsReport(
                    id: "report-1"
                )

            XCTFail(
                "Expected forbidden"
            )
        } catch let error
            as ASCAPIError
        {
            XCTAssertEqual(
                error,
                .forbidden(
                    "Insufficient role"
                )
            )
        }
    }

    func testAnalyticsEmptyFiltersAreOmitted()
        async throws
    {
        let key =
            TestSupport.makePrivateKey()

        let transport =
            StubTransport(
                responses: [
                    .init(
                        data:
                            try TestSupport.page([])
                    ),
                    .init(
                        data:
                            try TestSupport.page([])
                    ),
                    .init(
                        data:
                            try TestSupport.page([])
                    )
                ]
            )

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        _ = try await client
            .listAnalyticsReportRequests(
                appID: "app-1"
            )

        _ = try await client
            .listAnalyticsReports(
                reportRequestID:
                    "request-1"
            )

        _ = try await client
            .listAnalyticsReportInstances(
                reportID: "report-1"
            )

        let requests =
            await transport
                .recordedRequests()

        let requestQuery =
            try TestSupport.queryItems(
                for: requests[0]
            )

        XCTAssertNil(
            requestQuery[
                "filter[accessType]"
            ]
        )

        let reportQuery =
            try TestSupport.queryItems(
                for: requests[1]
            )

        XCTAssertNil(
            reportQuery[
                "filter[category]"
            ]
        )

        XCTAssertNil(
            reportQuery[
                "filter[name]"
            ]
        )

        let instanceQuery =
            try TestSupport.queryItems(
                for: requests[2]
            )

        XCTAssertNil(
            instanceQuery[
                "filter[granularity]"
            ]
        )

        XCTAssertNil(
            instanceQuery[
                "filter[processingDate]"
            ]
        )
    }
}
