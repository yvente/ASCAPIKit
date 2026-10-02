import Foundation

public struct ASCPreviewType:
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

    public static let iPhone67 = Self(
        rawValue: "IPHONE_67"
    )

    public static let iPhone61 = Self(
        rawValue: "IPHONE_61"
    )

    public static let iPhone65 = Self(
        rawValue: "IPHONE_65"
    )

    public static let iPhone58 = Self(
        rawValue: "IPHONE_58"
    )

    public static let iPhone55 = Self(
        rawValue: "IPHONE_55"
    )

    public static let iPhone47 = Self(
        rawValue: "IPHONE_47"
    )

    public static let iPhone40 = Self(
        rawValue: "IPHONE_40"
    )

    public static let iPhone35 = Self(
        rawValue: "IPHONE_35"
    )

    public static let iPadPro3Gen129 = Self(
        rawValue: "IPAD_PRO_3GEN_129"
    )

    public static let iPadPro3Gen11 = Self(
        rawValue: "IPAD_PRO_3GEN_11"
    )

    public static let iPadPro129 = Self(
        rawValue: "IPAD_PRO_129"
    )

    public static let iPad105 = Self(
        rawValue: "IPAD_105"
    )

    public static let iPad97 = Self(
        rawValue: "IPAD_97"
    )

    public static let desktop = Self(
        rawValue: "DESKTOP"
    )

    public static let appleTV = Self(
        rawValue: "APPLE_TV"
    )

    public static let appleVisionPro = Self(
        rawValue: "APPLE_VISION_PRO"
    )
}

public struct ASCAppPreviewSet:
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
        public let previewType: ASCPreviewType

        public init(
            previewType: ASCPreviewType
        ) {
            self.previewType = previewType
        }
    }
}

public struct ASCVideoDeliveryState:
    Codable,
    Equatable,
    Sendable
{
    public let errors: [ASCAssetStateError]?
    public let warnings: [ASCAssetStateError]?
    public let state: String?

    public init(
        errors: [ASCAssetStateError]?,
        warnings: [ASCAssetStateError]?,
        state: String?
    ) {
        self.errors = errors
        self.warnings = warnings
        self.state = state
    }
}

public struct ASCPreviewFrameImageState:
    Codable,
    Equatable,
    Sendable
{
    public let errors: [ASCAssetStateError]?
    public let warnings: [ASCAssetStateError]?
    public let state: String?

    public init(
        errors: [ASCAssetStateError]?,
        warnings: [ASCAssetStateError]?,
        state: String?
    ) {
        self.errors = errors
        self.warnings = warnings
        self.state = state
    }
}

public struct ASCPreviewFrameImage:
    Codable,
    Equatable,
    Sendable
{
    public let image: ASCImageAsset?
    public let state: ASCPreviewFrameImageState?

    public init(
        image: ASCImageAsset?,
        state: ASCPreviewFrameImageState?
    ) {
        self.image = image
        self.state = state
    }
}

public struct ASCAppPreview:
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
        public let previewFrameTimeCode: String?
        public let mimeType: String?
        public let videoURL: String?
        public let previewFrameImage:
            ASCPreviewFrameImage?
        public let uploadOperations:
            [ASCUploadOperation]?
        public let videoDeliveryState:
            ASCVideoDeliveryState?

        public init(
            fileSize: Int64?,
            fileName: String?,
            sourceFileChecksum: String?,
            previewFrameTimeCode: String?,
            mimeType: String?,
            videoURL: String?,
            uploadOperations:
                [ASCUploadOperation]?,
            videoDeliveryState:
                ASCVideoDeliveryState?,
            previewFrameImage:
                ASCPreviewFrameImage? = nil
        ) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.sourceFileChecksum =
                sourceFileChecksum
            self.previewFrameTimeCode =
                previewFrameTimeCode
            self.mimeType = mimeType
            self.videoURL = videoURL
            self.uploadOperations =
                uploadOperations
            self.videoDeliveryState =
                videoDeliveryState
            self.previewFrameImage =
                previewFrameImage
        }

        private enum CodingKeys:
            String,
            CodingKey
        {
            case fileSize
            case fileName
            case sourceFileChecksum
            case previewFrameTimeCode
            case mimeType
            case videoURL = "videoUrl"
            case previewFrameImage
            case uploadOperations
            case videoDeliveryState
        }
    }
}

private struct ASCPreviewSingleResponse<
    Resource: Decodable
>: Decodable {
    let data: Resource
}

private func decodePreviewSingle<
    Resource: Decodable
>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCPreviewSingleResponse<Resource>.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

private struct ASCPreviewReservationDocument:
    Encodable
{
    let data: Resource

    init(
        fileName: String,
        fileSize: Int64,
        previewSetID: String
    ) {
        self.data = Resource(
            type: "appPreviews",
            attributes: Attributes(
                fileName: fileName,
                fileSize: fileSize
            ),
            relationships: Relationships(
                appPreviewSet: Relationship(
                    data: Linkage(
                        type: "appPreviewSets",
                        id: previewSetID
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
        let appPreviewSet: Relationship
    }

    struct Relationship: Encodable {
        let data: Linkage
    }

    struct Linkage: Encodable {
        let type: String
        let id: String
    }
}

private struct ASCPreviewUpdateDocument:
    Encodable
{
    let data: Resource

    init(
        id: String,
        uploaded: Bool? = nil,
        sourceFileChecksum: String? = nil,
        previewFrameTimeCode: String? = nil
    ) {
        self.data = Resource(
            type: "appPreviews",
            id: id,
            attributes: Attributes(
                uploaded: uploaded,
                sourceFileChecksum:
                    sourceFileChecksum,
                previewFrameTimeCode:
                    previewFrameTimeCode
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let uploaded: Bool?
        let sourceFileChecksum: String?
        let previewFrameTimeCode: String?
    }
}

private func encodePreviewJSON<
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

private let appPreviewFields = [
    "fileSize",
    "fileName",
    "sourceFileChecksum",
    "previewFrameTimeCode",
    "mimeType",
    "videoUrl",
    "previewFrameImage",
    "uploadOperations",
    "videoDeliveryState"
].joined(separator: ",")

// MARK: - Preview sets

extension ASCClient {
    public func listPreviewSets(
        versionLocalizationID: String
    ) async throws -> [ASCAppPreviewSet] {
        try await list(
            "/v1/appStoreVersionLocalizations/\(versionLocalizationID)/appPreviewSets",
            resourceType: "appPreviewSets",
            fields: "previewType"
        )
    }

    public func getPreviewSet(
        id: String
    ) async throws -> ASCAppPreviewSet {
        let data = try await sendAuthorized(
            method: "GET",
            path: "/v1/appPreviewSets/\(id)",
            queryItems: [
                URLQueryItem(
                    name:
                        "fields[appPreviewSets]",
                    value: "previewType"
                )
            ]
        )

        return try decodePreviewSingle(
            ASCAppPreviewSet.self,
            from: data
        )
    }

    public func createPreviewSet(
        versionLocalizationID: String,
        previewType: ASCPreviewType
    ) async throws -> ASCAppPreviewSet {
        try await mutate(
            method: "POST",
            path: "/v1/appPreviewSets",
            resourceType: "appPreviewSets",
            attributes: [
                "previewType":
                    previewType.rawValue
            ],
            relationship: (
                name:
                    "appStoreVersionLocalization",
                type:
                    "appStoreVersionLocalizations",
                id:
                    versionLocalizationID
            )
        )
    }

    public func deletePreviewSet(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path: "/v1/appPreviewSets/\(id)"
        )
    }
}

// MARK: - Preview reads

extension ASCClient {
    public func listPreviews(
        previewSetID: String
    ) async throws -> [ASCAppPreview] {
        try await list(
            "/v1/appPreviewSets/\(previewSetID)/appPreviews",
            resourceType: "appPreviews",
            fields: appPreviewFields
        )
    }

    public func getPreview(
        id: String
    ) async throws -> ASCAppPreview {
        let data = try await sendAuthorized(
            method: "GET",
            path: "/v1/appPreviews/\(id)",
            queryItems: [
                URLQueryItem(
                    name: "fields[appPreviews]",
                    value: appPreviewFields
                )
            ]
        )

        return try decodePreviewSingle(
            ASCAppPreview.self,
            from: data
        )
    }
}

// MARK: - Preview reservation, commit, upload

extension ASCClient {
    public func createPreviewReservation(
        previewSetID: String,
        fileName: String,
        fileSize: Int64
    ) async throws -> ASCAppPreview {
        guard
            !fileName.isEmpty,
            fileSize > 0
        else {
            throw ASCAssetUploadError
                .invalidAssetFile
        }

        let document =
            ASCPreviewReservationDocument(
                fileName: fileName,
                fileSize: fileSize,
                previewSetID: previewSetID
            )

        let body = try encodePreviewJSON(
            document
        )

        let data = try await sendAuthorized(
            method: "POST",
            path: "/v1/appPreviews",
            body: body
        )

        return try decodePreviewSingle(
            ASCAppPreview.self,
            from: data
        )
    }

    public func commitPreview(
        id: String,
        sourceFileChecksum: String
    ) async throws -> ASCAppPreview {
        guard !sourceFileChecksum.isEmpty else {
            throw ASCAPIError.invalidResponse
        }

        let document =
            ASCPreviewUpdateDocument(
                id: id,
                uploaded: true,
                sourceFileChecksum:
                    sourceFileChecksum
            )

        let body = try encodePreviewJSON(
            document
        )

        let data = try await sendAuthorized(
            method: "PATCH",
            path: "/v1/appPreviews/\(id)",
            body: body
        )

        return try decodePreviewSingle(
            ASCAppPreview.self,
            from: data
        )
    }

    public func uploadPreview(
        fileURL: URL,
        previewSetID: String
    ) async throws -> ASCAppPreview {
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
            try await createPreviewReservation(
                previewSetID:
                    previewSetID,
                fileName:
                    fileName,
                fileSize:
                    fileSize
            )

        guard
            let operations =
                reservation
                    .attributes
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

        return try await commitPreview(
            id: reservation.id,
            sourceFileChecksum: checksum
        )
    }
}

// MARK: - Poster frame timecode

extension ASCClient {
    public func updatePreviewFrameTimeCode(
        id: String,
        timeCode: String
    ) async throws -> ASCAppPreview {
        guard !timeCode.isEmpty else {
            throw ASCAPIError.invalidResponse
        }

        let document =
            ASCPreviewUpdateDocument(
                id: id,
                previewFrameTimeCode:
                    timeCode
            )

        let body = try encodePreviewJSON(
            document
        )

        let data = try await sendAuthorized(
            method: "PATCH",
            path: "/v1/appPreviews/\(id)",
            body: body
        )

        return try decodePreviewSingle(
            ASCAppPreview.self,
            from: data
        )
    }
}

// MARK: - Preview deletion

extension ASCClient {
    public func deletePreview(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path: "/v1/appPreviews/\(id)"
        )
    }
}

// MARK: - Preview ordering

private struct ASCPreviewLinkageDocument:
    Codable
{
    let data: [Linkage]

    struct Linkage:
        Codable,
        Equatable,
        Sendable
    {
        let type: String
        let id: String
    }
}

extension ASCClient {
    public func listPreviewOrder(
        previewSetID: String
    ) async throws -> [String] {
        let data = try await sendAuthorized(
            method: "GET",
            path:
                "/v1/appPreviewSets/\(previewSetID)/relationships/appPreviews"
        )

        let document:
            ASCPreviewLinkageDocument

        do {
            document =
                try JSONDecoder().decode(
                    ASCPreviewLinkageDocument.self,
                    from: data
                )
        } catch {
            throw ASCAPIError.invalidResponse
        }

        return document.data.map(\.id)
    }

    public func reorderPreviews(
        previewSetID: String,
        orderedPreviewIDs: [String]
    ) async throws {
        let document =
            ASCPreviewLinkageDocument(
                data:
                    orderedPreviewIDs.map {
                        .init(
                            type: "appPreviews",
                            id: $0
                        )
                    }
            )

        let body = try encodePreviewJSON(
            document
        )

        _ = try await sendAuthorized(
            method: "PATCH",
            path:
                "/v1/appPreviewSets/\(previewSetID)/relationships/appPreviews",
            body: body
        )
    }
}
