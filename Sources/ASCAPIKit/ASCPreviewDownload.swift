import Foundation

private func resolvedPreviewVideoURL(
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
        throw ASCPreviewDownloadError
            .unsafeVideoURL
    }

    return url
}

extension ASCClient {
    public func downloadPreviewVideo(
        _ preview: ASCAppPreview
    ) async throws -> Data {
        guard
            let videoURL =
                preview.attributes.videoURL,
            !videoURL.isEmpty
        else {
            throw ASCPreviewDownloadError
                .videoUnavailable
        }

        let url =
            try resolvedPreviewVideoURL(
                videoURL
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
            throw ASCPreviewDownloadError
                .downloadFailed(
                    response.statusCode
                )
        }

        guard !data.isEmpty else {
            throw ASCPreviewDownloadError
                .emptyResponse
        }

        return data
    }
}

extension ASCClient {
    public func downloadPreviewVideo(
        id: String
    ) async throws -> Data {
        let preview =
            try await getPreview(
                id: id
            )

        return try await
            downloadPreviewVideo(
                preview
            )
    }
}

extension ASCClient {
    public func downloadPreviewFrameImage(
        _ preview: ASCAppPreview,
        format: ASCImageFormat = .png
    ) async throws -> Data {
        guard
            let frame =
                preview.attributes
                    .previewFrameImage,
            let image =
                frame.image
        else {
            throw ASCImageDownloadError
                .imageUnavailable
        }

        return try await downloadImageAsset(
            image,
            format: format
        )
    }
}

extension ASCClient {
    public func downloadPreviewFrameImage(
        id: String,
        format: ASCImageFormat = .png
    ) async throws -> Data {
        let preview =
            try await getPreview(
                id: id
            )

        return try await
            downloadPreviewFrameImage(
                preview,
                format: format
            )
    }
}
