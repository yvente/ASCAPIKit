import Foundation

public struct ASCAppStoreReviewAttachment:
    Codable,
    Equatable,
    Sendable
{
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes:
        Codable,
        Equatable,
        Sendable
    {
        public let fileSize: Int64?
        public let fileName: String?
        public let sourceFileChecksum: String?
        public let uploadOperations:
            [ASCUploadOperation]?
        public let assetDeliveryState:
            ASCAssetDeliveryState?

        public init(
            fileSize: Int64?,
            fileName: String?,
            sourceFileChecksum: String?,
            uploadOperations:
                [ASCUploadOperation]?,
            assetDeliveryState:
                ASCAssetDeliveryState?
        ) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.sourceFileChecksum =
                sourceFileChecksum
            self.uploadOperations =
                uploadOperations
            self.assetDeliveryState =
                assetDeliveryState
        }
    }
}

private let reviewAttachmentFields = [
    "fileSize",
    "fileName",
    "sourceFileChecksum",
    "uploadOperations",
    "assetDeliveryState"
].joined(separator: ",")

private struct ASCReviewAttachmentSingleResponse<
    Resource: Decodable
>: Decodable {
    let data: Resource
}

private func decodeReviewAttachmentSingle<
    Resource: Decodable
>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCReviewAttachmentSingleResponse<Resource>.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

private struct ASCReviewAttachmentReservationDocument:
    Encodable
{
    let data: Resource

    init(
        fileName: String,
        fileSize: Int64,
        reviewDetailID: String
    ) {
        self.data = Resource(
            type:
                "appStoreReviewAttachments",
            attributes: Attributes(
                fileName: fileName,
                fileSize: fileSize
            ),
            relationships: Relationships(
                appStoreReviewDetail:
                    Relationship(
                        data: Linkage(
                            type:
                                "appStoreReviewDetails",
                            id:
                                reviewDetailID
                        )
                    )
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let attributes: Attributes
        let relationships: Relationships
    }

    struct Attributes: Encodable {
        let fileName: String
        let fileSize: Int64
    }

    struct Relationships: Encodable {
        let appStoreReviewDetail:
            Relationship
    }

    struct Relationship: Encodable {
        let data: Linkage
    }

    struct Linkage: Encodable {
        let type: String
        let id: String
    }
}

private struct ASCReviewAttachmentUpdateDocument:
    Encodable
{
    let data: Resource

    init(
        id: String,
        sourceFileChecksum: String
    ) {
        self.data = Resource(
            type:
                "appStoreReviewAttachments",
            id: id,
            attributes: Attributes(
                uploaded: true,
                sourceFileChecksum:
                    sourceFileChecksum
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let uploaded: Bool
        let sourceFileChecksum: String
    }
}

private func encodeReviewAttachmentJSON<
    Value: Encodable
>(
    _ value: Value
) throws -> Data {
    do {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.sortedKeys]

        return try encoder.encode(value)
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

// MARK: - Review attachment reads

extension ASCClient {
    public func listReviewAttachments(
        reviewDetailID: String
    ) async throws
        -> [ASCAppStoreReviewAttachment]
    {
        try await list(
            "/v1/appStoreReviewDetails/\(reviewDetailID)/appStoreReviewAttachments",
            resourceType:
                "appStoreReviewAttachments",
            fields:
                reviewAttachmentFields
        )
    }

    public func getReviewAttachment(
        id: String
    ) async throws
        -> ASCAppStoreReviewAttachment
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/appStoreReviewAttachments/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[appStoreReviewAttachments]",
                        value:
                            reviewAttachmentFields
                    )
                ]
            )

        return try
            decodeReviewAttachmentSingle(
                ASCAppStoreReviewAttachment.self,
                from: data
            )
    }
}

// MARK: - Review attachment reservation, commit, upload

extension ASCClient {
    public func createReviewAttachmentReservation(
        reviewDetailID: String,
        fileName: String,
        fileSize: Int64
    ) async throws
        -> ASCAppStoreReviewAttachment
    {
        guard
            !fileName.isEmpty,
            fileSize > 0
        else {
            throw ASCAssetUploadError
                .invalidAssetFile
        }

        let document =
            ASCReviewAttachmentReservationDocument(
                fileName: fileName,
                fileSize: fileSize,
                reviewDetailID:
                    reviewDetailID
            )

        let body =
            try encodeReviewAttachmentJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "POST",
                path:
                    "/v1/appStoreReviewAttachments",
                body: body
            )

        return try
            decodeReviewAttachmentSingle(
                ASCAppStoreReviewAttachment.self,
                from: data
            )
    }

    public func commitReviewAttachment(
        id: String,
        sourceFileChecksum: String
    ) async throws
        -> ASCAppStoreReviewAttachment
    {
        guard
            !sourceFileChecksum.isEmpty
        else {
            throw ASCAPIError.invalidResponse
        }

        let document =
            ASCReviewAttachmentUpdateDocument(
                id: id,
                sourceFileChecksum:
                    sourceFileChecksum
            )

        let body =
            try encodeReviewAttachmentJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "PATCH",
                path:
                    "/v1/appStoreReviewAttachments/\(id)",
                body: body
            )

        return try
            decodeReviewAttachmentSingle(
                ASCAppStoreReviewAttachment.self,
                from: data
            )
    }

    public func uploadReviewAttachment(
        fileURL: URL,
        reviewDetailID: String
    ) async throws
        -> ASCAppStoreReviewAttachment
    {
        let fileSize =
            try ascAssetFileSize(
                fileURL
            )

        let fileName =
            fileURL.lastPathComponent

        guard !fileName.isEmpty else {
            throw ASCAssetUploadError
                .invalidAssetFile
        }

        let reservation =
            try await
                createReviewAttachmentReservation(
                    reviewDetailID:
                        reviewDetailID,
                    fileName:
                        fileName,
                    fileSize:
                        fileSize
                )

        guard
            let operations =
                reservation.attributes
                    .uploadOperations,
            !operations.isEmpty
        else {
            throw ASCAPIError.invalidResponse
        }

        let checksum =
            try await uploadAsset(
                fileURL: fileURL,
                operations: operations
            )

        return try await
            commitReviewAttachment(
                id: reservation.id,
                sourceFileChecksum:
                    checksum
            )
    }
}

// MARK: - Review attachment deletion

extension ASCClient {
    public func deleteReviewAttachment(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path:
                "/v1/appStoreReviewAttachments/\(id)"
        )
    }
}
