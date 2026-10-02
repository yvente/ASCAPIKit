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
