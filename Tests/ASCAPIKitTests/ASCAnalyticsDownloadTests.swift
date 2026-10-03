import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCAnalyticsDownloadTests:
    XCTestCase
{
    private func checksum(
        _ data: Data
    ) -> String {
        Insecure.MD5.hash(
            data: data
        )
        .map {
            String(
                format: "%02x",
                $0
            )
        }
        .joined()
    }

    private func segment(
        checksum: String? = nil,
        sizeInBytes: Int64? = nil,
        url: String? =
            "https://reports.example.com/report.txt.gz?token=secret"
    ) -> ASCAnalyticsReportSegment {
        ASCAnalyticsReportSegment(
            id: "segment-1",
            attributes: .init(
                checksum: checksum,
                sizeInBytes:
                    sizeInBytes,
                url: url
            )
        )
    }

    func testDownloadAnalyticsSegmentSucceedsWithoutAuthorization()
        async throws
    {
        let payload =
            Data(
                "compressed-report".utf8
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: payload)
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let resource =
            segment(
                checksum:
                    checksum(payload),
                sizeInBytes:
                    Int64(payload.count)
            )

        let result =
            try await client
                .downloadAnalyticsReportSegment(
                    resource
                )

        XCTAssertEqual(
            result,
            payload
        )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            1
        )

        XCTAssertEqual(
            requests[0].httpMethod,
            "GET"
        )

        XCTAssertEqual(
            requests[0].url?.host,
            "reports.example.com"
        )

        XCTAssertNil(
            requests[0].value(
                forHTTPHeaderField:
                    "Authorization"
            )
        )
    }

    func testDownloadAnalyticsSegmentRequiresURL()
        async throws
    {
        let transport =
            StubTransport(
                responses: []
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .downloadAnalyticsReportSegment(
                    segment(url: nil)
                )

            XCTFail(
                "Expected segmentURLUnavailable"
            )
        } catch let error
            as ASCAnalyticsDownloadError
        {
            XCTAssertEqual(
                error,
                .segmentURLUnavailable
            )
        }

        let requests =
            await transport
                .recordedRequests()

        XCTAssertTrue(
            requests.isEmpty
        )
    }

    func testDownloadAnalyticsSegmentRejectsUnsafeURL()
        async throws
    {
        let unsafeURLs = [
            "http://reports.example.com/file.txt.gz",
            "https://user:password@reports.example.com/file.txt.gz",
            "not-a-url"
        ]

        for unsafeURL in unsafeURLs {
            let transport =
                StubTransport(
                    responses: []
                )

            let key =
                TestSupport.makePrivateKey()

            let client =
                try TestSupport
                    .makeClient(
                        transport:
                            transport,
                        key: key
                    )

            do {
                _ = try await client
                    .downloadAnalyticsReportSegment(
                        segment(
                            url:
                                unsafeURL
                        )
                    )

                XCTFail(
                    "Expected unsafeSegmentURL"
                )
            } catch let error
                as ASCAnalyticsDownloadError
            {
                XCTAssertEqual(
                    error,
                    .unsafeSegmentURL
                )
            }

            let requests =
                await transport
                    .recordedRequests()

            XCTAssertTrue(
                requests.isEmpty
            )
        }
    }

    func testDownloadAnalyticsSegmentRejectsHTTPFailure()
        async throws
    {
        let transport =
            StubTransport(
                responses: [
                    .init(
                        data: Data(),
                        statusCode: 403
                    )
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .downloadAnalyticsReportSegment(
                    segment()
                )

            XCTFail(
                "Expected downloadFailed"
            )
        } catch let error
            as ASCAnalyticsDownloadError
        {
            XCTAssertEqual(
                error,
                .downloadFailed(403)
            )
        }
    }

    func testDownloadAnalyticsSegmentRejectsEmptyResponse()
        async throws
    {
        let transport =
            StubTransport(
                responses: [
                    .init(data: Data())
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .downloadAnalyticsReportSegment(
                    segment()
                )

            XCTFail(
                "Expected emptyResponse"
            )
        } catch let error
            as ASCAnalyticsDownloadError
        {
            XCTAssertEqual(
                error,
                .emptyResponse
            )
        }
    }

    func testDownloadAnalyticsSegmentRejectsSizeMismatch()
        async throws
    {
        let payload =
            Data(
                "payload".utf8
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: payload)
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .downloadAnalyticsReportSegment(
                    segment(
                        sizeInBytes: 999
                    )
                )

            XCTFail(
                "Expected sizeMismatch"
            )
        } catch let error
            as ASCAnalyticsDownloadError
        {
            XCTAssertEqual(
                error,
                .sizeMismatch(
                    expected: 999,
                    actual:
                        Int64(
                            payload.count
                        )
                )
            )
        }
    }

    func testDownloadAnalyticsSegmentRejectsChecksumMismatch()
        async throws
    {
        let payload =
            Data(
                "payload".utf8
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: payload)
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        do {
            _ = try await client
                .downloadAnalyticsReportSegment(
                    segment(
                        checksum:
                            "00000000000000000000000000000000"
                    )
                )

            XCTFail(
                "Expected checksumMismatch"
            )
        } catch let error
            as ASCAnalyticsDownloadError
        {
            XCTAssertEqual(
                error,
                .checksumMismatch(
                    expected:
                        "00000000000000000000000000000000",
                    actual:
                        checksum(payload)
                )
            )
        }
    }

    func testDownloadAnalyticsSegmentAcceptsUppercaseExpectedChecksum()
        async throws
    {
        let payload =
            Data(
                "payload".utf8
            )

        let expected =
            checksum(payload)
                .uppercased()

        let transport =
            StubTransport(
                responses: [
                    .init(data: payload)
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let result =
            try await client
                .downloadAnalyticsReportSegment(
                    segment(
                        checksum:
                            expected,
                        sizeInBytes:
                            Int64(
                                payload.count
                            )
                    )
                )

        XCTAssertEqual(
            result,
            payload
        )
    }

    func testDownloadAnalyticsSegmentByIDFetchesFreshMetadataFirst()
        async throws
    {
        let payload =
            Data(
                "compressed-report".utf8
            )

        let expectedChecksum =
            checksum(payload)

        let metadata =
            try TestSupport.single(
                [
                    "type":
                        "analyticsReportSegments",
                    "id": "segment-1",
                    "attributes": [
                        "checksum":
                            expectedChecksum,
                        "sizeInBytes":
                            payload.count,
                        "url":
                            "https://reports.example.com/report.txt.gz?token=temporary"
                    ]
                ]
            )

        let transport =
            StubTransport(
                responses: [
                    .init(data: metadata),
                    .init(data: payload)
                ]
            )

        let key =
            TestSupport.makePrivateKey()

        let client =
            try TestSupport.makeClient(
                transport: transport,
                key: key
            )

        let result =
            try await client
                .downloadAnalyticsReportSegment(
                    id: "segment-1"
                )

        XCTAssertEqual(
            result,
            payload
        )

        let requests =
            await transport
                .recordedRequests()

        XCTAssertEqual(
            requests.count,
            2
        )

        XCTAssertEqual(
            requests[0].url?.path,
            "/v1/analyticsReportSegments/segment-1"
        )

        XCTAssertNotNil(
            requests[0].value(
                forHTTPHeaderField:
                    "Authorization"
            )
        )

        XCTAssertEqual(
            requests[1].url?.host,
            "reports.example.com"
        )

        XCTAssertNil(
            requests[1].value(
                forHTTPHeaderField:
                    "Authorization"
            )
        )
    }
}
