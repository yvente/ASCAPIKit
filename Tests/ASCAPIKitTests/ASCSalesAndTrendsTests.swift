import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCSalesAndTrendsTests:
    XCTestCase
{
    private let gzipFixture = Data([
        0x1f, 0x8b, 0x08, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x02, 0xff, 0x2b, 0x4a,
        0x2d, 0xc8, 0x2f, 0x2a,
        0xe1, 0x2c, 0xcd, 0xcb,
        0x2c, 0x29, 0xe6, 0x2c,
        0x28, 0xca, 0x4f, 0x4e,
        0x4d, 0x4d, 0x29, 0xe6,
        0x32, 0xe4, 0x34, 0xe2,
        0x34, 0xe6, 0x02, 0x00,
        0x20, 0x9c, 0x7a, 0x6b,
        0x1c, 0x00, 0x00, 0x00
    ])

    private func makeClient(
        responses: [StubTransport.StubResponse]
    ) throws -> (ASCClient, StubTransport) {
        let transport = StubTransport(
            responses: responses
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        return (client, transport)
    }

    private func salesRequest(
        reportDate: String? =
            "2026-10-01",
        version: String? = "1_0",
        vendorNumber: String =
            "12345678"
    ) -> ASCSalesReportRequest {
        ASCSalesReportRequest(
            reportType: .sales,
            reportSubType: .summary,
            frequency: .daily,
            vendorNumber: vendorNumber,
            reportDate: reportDate,
            version: version
        )
    }

    private func assertSalesError(
        status: Int,
        details: [String?] =
            ["Apple detail"],
        expected: ASCAPIError,
        file: StaticString = #filePath,
        line: UInt = #line
    ) async throws {
        let data = try TestSupport
            .errorResponse(details: details)

        let (client, transport) =
            try makeClient(
                responses: [
                    .init(
                        data: data,
                        statusCode: status
                    )
                ]
            )

        do {
            _ = try await client
                .downloadSalesReport(
                    salesRequest()
                )

            XCTFail(
                "Expected \(expected)",
                file: file,
                line: line
            )
        } catch let error as ASCAPIError {
            XCTAssertEqual(
                error,
                expected,
                file: file,
                line: line
            )
        }

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            1,
            file: file,
            line: line
        )
    }

    func testSalesReportBuildsAllQueryItems()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        let data = try await client
            .downloadSalesReport(
                salesRequest()
            )

        XCTAssertEqual(data, gzipFixture)

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(
            requests.first
        )

        XCTAssertEqual(
            request.url?.path,
            "/v1/salesReports"
        )

        let query = try TestSupport
            .queryItems(for: request)

        XCTAssertEqual(query.count, 6)

        XCTAssertEqual(
            query["filter[frequency]"],
            "DAILY"
        )
        XCTAssertEqual(
            query["filter[reportSubType]"],
            "SUMMARY"
        )
        XCTAssertEqual(
            query["filter[reportType]"],
            "SALES"
        )
        XCTAssertEqual(
            query["filter[vendorNumber]"],
            "12345678"
        )
        XCTAssertEqual(
            query["filter[reportDate]"],
            "2026-10-01"
        )
        XCTAssertEqual(
            query["filter[version]"],
            "1_0"
        )
    }

    func testSalesReportOmitsNilOptionalQueryItems()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        _ = try await client
            .downloadSalesReport(
                salesRequest(
                    reportDate: nil,
                    version: nil
                )
            )

        let requests =
            await transport.recordedRequests()

        let request = try XCTUnwrap(
            requests.first
        )

        let query = try TestSupport
            .queryItems(for: request)

        XCTAssertEqual(query.count, 4)

        XCTAssertNil(
            query["filter[reportDate]"]
        )
        XCTAssertNil(
            query["filter[version]"]
        )
    }

    func testSalesReportPassesUnknownValuesThrough()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        let request = ASCSalesReportRequest(
            reportType: ASCSalesReportType(
                rawValue:
                    "FUTURE_REPORT_TYPE"
            ),
            reportSubType:
                ASCSalesReportSubType(
                    rawValue:
                        "FUTURE_REPORT_SUBTYPE"
                ),
            frequency:
                ASCSalesReportFrequency(
                    rawValue:
                        "FUTURE_FREQUENCY"
                ),
            vendorNumber: "12345678",
            reportDate: "2026-10-01",
            version: "9_9"
        )

        _ = try await client
            .downloadSalesReport(request)

        let requests =
            await transport.recordedRequests()

        let urlRequest = try XCTUnwrap(
            requests.first
        )

        let query = try TestSupport
            .queryItems(for: urlRequest)

        XCTAssertEqual(
            query["filter[reportType]"],
            "FUTURE_REPORT_TYPE"
        )
        XCTAssertEqual(
            query["filter[reportSubType]"],
            "FUTURE_REPORT_SUBTYPE"
        )
        XCTAssertEqual(
            query["filter[frequency]"],
            "FUTURE_FREQUENCY"
        )
        XCTAssertEqual(
            query["filter[version]"],
            "9_9"
        )
    }

    func testFinanceReportBuildsQueryItemsWithFixedReportType()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        let data = try await client
            .downloadFinanceReport(
                regionCode: "ZZ",
                reportDate: "2026-09",
                vendorNumber: "12345678"
            )

        XCTAssertEqual(data, gzipFixture)

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(
            requests.first
        )

        XCTAssertEqual(
            request.url?.path,
            "/v1/financeReports"
        )

        let query = try TestSupport
            .queryItems(for: request)

        XCTAssertEqual(query.count, 4)
        XCTAssertEqual(
            query["filter[regionCode]"],
            "ZZ"
        )
        XCTAssertEqual(
            query["filter[reportDate]"],
            "2026-09"
        )
        XCTAssertEqual(
            query["filter[reportType]"],
            "FINANCIAL"
        )
        XCTAssertEqual(
            query["filter[vendorNumber]"],
            "12345678"
        )
    }

    func testReportDownloadEncodesVendorNumberQueryValue()
        async throws
    {
        let vendorNumber =
            "12 34&56=78+90"

        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        _ = try await client
            .downloadFinanceReport(
                regionCode: "US",
                reportDate: "2026-09",
                vendorNumber: vendorNumber
            )

        let requests =
            await transport.recordedRequests()

        let request = try XCTUnwrap(
            requests.first
        )

        let query = try TestSupport
            .queryItems(for: request)

        XCTAssertEqual(
            query["filter[vendorNumber]"],
            vendorNumber
        )

        let rawQuery = try XCTUnwrap(
            request.url?.query
        )

        XCTAssertEqual(
            rawQuery.filter { $0 == "&" }
                .count,
            3
        )
        XCTAssertFalse(
            rawQuery.contains(" ")
        )
    }

    func testReportDownloadSetsHeadersAndOmitsContentType()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: gzipFixture)
                ]
            )

        _ = try await client
            .downloadSalesReport(
                salesRequest()
            )

        let requests =
            await transport.recordedRequests()

        let request = try XCTUnwrap(
            requests.first
        )

        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )
        XCTAssertNil(request.httpBody)

        XCTAssertEqual(
            request.value(
                forHTTPHeaderField: "Accept"
            ),
            "application/a-gzip"
        )
        XCTAssertNil(
            request.value(
                forHTTPHeaderField:
                    "Content-Type"
            )
        )

        let authorization = try XCTUnwrap(
            request.value(
                forHTTPHeaderField:
                    "Authorization"
            )
        )

        XCTAssertTrue(
            authorization.hasPrefix(
                "Bearer "
            )
        )
        XCTAssertGreaterThan(
            authorization.count,
            "Bearer ".count
        )
    }

    func testSalesReportReturnsRawGzipBytesUnchanged()
        async throws
    {
        XCTAssertEqual(
            Data(gzipFixture.prefix(2)),
            Data([0x1f, 0x8b])
        )

        let (client, _) = try makeClient(
            responses: [
                .init(data: gzipFixture)
            ]
        )

        let data = try await client
            .downloadSalesReport(
                salesRequest()
            )

        XCTAssertEqual(data, gzipFixture)
    }

    func testSalesReportRejectsEmptySuccessResponse()
        async throws
    {
        let (client, transport) =
            try makeClient(
                responses: [
                    .init(data: Data())
                ]
            )

        do {
            _ = try await client
                .downloadSalesReport(
                    salesRequest()
                )

            XCTFail(
                "Expected emptyResponse"
            )
        } catch let error
            as ASCReportDownloadError
        {
            XCTAssertEqual(
                error,
                .emptyResponse
            )
        }

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)
    }

    func testFinanceReportRejectsEmptySuccessResponse()
        async throws
    {
        let (client, _) = try makeClient(
            responses: [
                .init(data: Data())
            ]
        )

        do {
            _ = try await client
                .downloadFinanceReport(
                    regionCode: "US",
                    reportDate: "2026-09",
                    vendorNumber: "12345678"
                )

            XCTFail(
                "Expected emptyResponse"
            )
        } catch let error
            as ASCReportDownloadError
        {
            XCTAssertEqual(
                error,
                .emptyResponse
            )
        }
    }

    func testSalesReportMapsUnauthorized()
        async throws
    {
        try await assertSalesError(
            status: 401,
            details: ["ignored"],
            expected: .unauthorized
        )
    }

    func testSalesReportPreservesForbiddenDetail()
        async throws
    {
        try await assertSalesError(
            status: 403,
            details: [
                "The request is not authorized."
            ],
            expected: .forbidden(
                "The request is not authorized."
            )
        )
    }

    func testSalesReportMapsRateLimited()
        async throws
    {
        try await assertSalesError(
            status: 429,
            details: ["ignored"],
            expected: .rateLimited
        )
    }

    func testSalesReportMapsServiceErrors()
        async throws
    {
        for status in [400, 404, 500] {
            try await assertSalesError(
                status: status,
                details: [
                    "Apple detail for \(status)"
                ],
                expected: .serviceError(
                    status,
                    "Apple detail for \(status)"
                )
            )
        }
    }

    func testFinanceReportMapsServiceError()
        async throws
    {
        let data = try TestSupport
            .errorResponse(
                details: ["Finance detail"]
            )

        let (client, transport) =
            try makeClient(
                responses: [
                    .init(
                        data: data,
                        statusCode: 400
                    )
                ]
            )

        do {
            _ = try await client
                .downloadFinanceReport(
                    regionCode: "US",
                    reportDate: "2026-09",
                    vendorNumber: "12345678"
                )

            XCTFail(
                "Expected serviceError"
            )
        } catch let error as ASCAPIError {
            XCTAssertEqual(
                error,
                .serviceError(
                    400,
                    "Finance detail"
                )
            )
        }

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)
    }

    func testFailedReportDownloadPerformsSingleRequest()
        async throws
    {
        let data = try TestSupport
            .errorResponse(
                details: ["Server failure"]
            )

        let (client, transport) =
            try makeClient(
                responses: [
                    .init(
                        data: data,
                        statusCode: 500
                    )
                ]
            )

        _ = try? await client
            .downloadSalesReport(
                salesRequest()
            )

        let requests =
            await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)
    }
}
