import Foundation

public struct ASCImageFormat:
    RawRepresentable,
    Codable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(
        from decoder: Decoder
    ) throws {
        let container =
            try decoder.singleValueContainer()

        self.rawValue =
            try container.decode(String.self)
    }

    public func encode(
        to encoder: Encoder
    ) throws {
        var container =
            encoder.singleValueContainer()

        try container.encode(rawValue)
    }

    public static let png = Self(
        rawValue: "png"
    )

    public static let jpg = Self(
        rawValue: "jpg"
    )
}

public extension ASCImageAsset {
    func resolvedURL(
        format: ASCImageFormat = .png
    ) throws -> URL {
        guard
            !templateURL.isEmpty,
            width > 0,
            height > 0
        else {
            throw ASCImageDownloadError.invalidImageAsset
        }

        guard isValidImageFormat(format.rawValue) else {
            throw ASCImageDownloadError.invalidImageFormat
        }

        let resolved = templateURL
            .replacingOccurrences(
                of: "{w}",
                with: String(width)
            )
            .replacingOccurrences(
                of: "{h}",
                with: String(height)
            )
            .replacingOccurrences(
                of: "{f}",
                with: format.rawValue
            )

        guard
            !resolved.contains("{w}"),
            !resolved.contains("{h}"),
            !resolved.contains("{f}"),
            let url = URL(string: resolved),
            url.scheme?.lowercased() == "https",
            let host = url.host,
            !host.isEmpty,
            url.user == nil,
            url.password == nil
        else {
            throw ASCImageDownloadError.unsafeImageURL
        }

        return url
    }
}

private func isValidImageFormat(
    _ value: String
) -> Bool {
    guard !value.isEmpty else {
        return false
    }

    for scalar in value.unicodeScalars {
        switch scalar.value {
        case 48...57:
            continue

        case 65...90:
            continue

        case 97...122:
            continue

        default:
            return false
        }
    }

    return true
}

extension ASCClient {
    public func downloadImageAsset(
        _ asset: ASCImageAsset,
        format: ASCImageFormat = .png
    ) async throws -> Data {
        let url = try asset.resolvedURL(
            format: format
        )

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let (data, response) = try await sendRaw(
            request
        )

        guard
            (200..<300).contains(
                response.statusCode
            )
        else {
            throw ASCImageDownloadError.downloadFailed(
                response.statusCode
            )
        }

        guard !data.isEmpty else {
            throw ASCImageDownloadError.emptyResponse
        }

        return data
    }
}

extension ASCClient {
    public func downloadScreenshot(
        _ screenshot: ASCAppScreenshot,
        format: ASCImageFormat = .png
    ) async throws -> Data {
        guard
            let imageAsset =
                screenshot.attributes.imageAsset
        else {
            throw ASCImageDownloadError.imageUnavailable
        }

        return try await downloadImageAsset(
            imageAsset,
            format: format
        )
    }
}

extension ASCClient {
    public func downloadScreenshot(
        id: String,
        format: ASCImageFormat = .png
    ) async throws -> Data {
        let screenshot = try await getScreenshot(
            id: id
        )

        return try await downloadScreenshot(
            screenshot,
            format: format
        )
    }
}
