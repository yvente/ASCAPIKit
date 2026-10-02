import Foundation

public enum ASCAPIError: Error, Equatable, Sendable {
    case incompleteCredential
    case invalidPrivateKey
    case invalidResponse
    case unsafePaginationURL
    case unauthorized
    case forbidden(String)
    case rateLimited
    case serviceError(Int, String)
}

public enum ASCAssetUploadError:
    Error,
    Equatable,
    Sendable
{
    case invalidAssetFile
    case invalidUploadOperation
    case unsafeAssetUploadURL
    case assetUploadFailed(Int)
}

public enum ASCImageDownloadError:
    Error,
    Equatable,
    Sendable
{
    case invalidImageAsset
    case invalidImageFormat
    case unsafeImageURL
    case imageUnavailable
    case downloadFailed(Int)
    case emptyResponse
}

public enum ASCPreviewDownloadError:
    Error,
    Equatable,
    Sendable
{
    case videoUnavailable
    case unsafeVideoURL
    case downloadFailed(Int)
    case emptyResponse
}
