import CryptoKit
import Foundation

private func resolvedAnalyticsSegmentURL(
    _ rawValue: String
) throws -> URL {
    guard
        !rawValue.isEmpty,
        let url = URL(
            string: rawValue
        ),
        url.scheme?.lowercased()
            == "https",
        let host = url.host,
        !host.isEmpty,
        url.user == nil,
        url.password == nil
    else {
        throw ASCAnalyticsDownloadError
            .unsafeSegmentURL
    }

    return url
}

private func analyticsMD5Hex(
    _ data: Data
) -> String {
    let digest =
        Insecure.MD5.hash(
            data: data
        )

    return digest.map {
        String(
            format: "%02x",
            $0
        )
    }
    .joined()
}

extension ASCClient {
    public func downloadAnalyticsReportSegment(
        _ segment:
            ASCAnalyticsReportSegment
    ) async throws -> Data {
        guard
            let rawURL =
                segment.attributes.url,
            !rawURL.isEmpty
        else {
            throw ASCAnalyticsDownloadError
                .segmentURLUnavailable
        }

        let url =
            try resolvedAnalyticsSegmentURL(
                rawURL
            )

        var request =
            URLRequest(url: url)
        request.httpMethod = "GET"

        let (data, response) =
            try await sendRaw(
                request
            )

        guard
            (200..<300).contains(
                response.statusCode
            )
        else {
            throw ASCAnalyticsDownloadError
                .downloadFailed(
                    response.statusCode
                )
        }

        guard !data.isEmpty else {
            throw ASCAnalyticsDownloadError
                .emptyResponse
        }

        let actualSize =
            Int64(data.count)

        if let expectedSize =
            segment.attributes
                .sizeInBytes
        {
            guard
                expectedSize
                    == actualSize
            else {
                throw ASCAnalyticsDownloadError
                    .sizeMismatch(
                        expected:
                            expectedSize,
                        actual:
                            actualSize
                    )
            }
        }

        if
            let expectedChecksum =
                segment.attributes
                    .checksum,
            !expectedChecksum.isEmpty
        {
            let actualChecksum =
                analyticsMD5Hex(
                    data
                )

            guard
                expectedChecksum
                    .lowercased()
                    == actualChecksum
            else {
                throw ASCAnalyticsDownloadError
                    .checksumMismatch(
                        expected:
                            expectedChecksum,
                        actual:
                            actualChecksum
                    )
            }
        }

        return data
    }
}

extension ASCClient {
    public func downloadAnalyticsReportSegment(
        id: String
    ) async throws -> Data {
        let segment =
            try await getAnalyticsReportSegment(
                id: id
            )

        return try await
            downloadAnalyticsReportSegment(
                segment
            )
    }
}
