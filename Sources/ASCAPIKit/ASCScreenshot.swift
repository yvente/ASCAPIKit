import Foundation

public struct ASCScreenshotDisplayType:
    RawRepresentable,
    Codable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.rawValue = try container.decode(String.self)
    }

    public func encode(
        to encoder: Encoder
    ) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }

    public static let iPhone67 = Self(
        rawValue: "APP_IPHONE_67"
    )

    public static let iPhone61 = Self(
        rawValue: "APP_IPHONE_61"
    )

    public static let iPhone65 = Self(
        rawValue: "APP_IPHONE_65"
    )

    public static let iPhone58 = Self(
        rawValue: "APP_IPHONE_58"
    )

    public static let iPhone55 = Self(
        rawValue: "APP_IPHONE_55"
    )

    public static let iPhone47 = Self(
        rawValue: "APP_IPHONE_47"
    )

    public static let iPhone40 = Self(
        rawValue: "APP_IPHONE_40"
    )

    public static let iPhone35 = Self(
        rawValue: "APP_IPHONE_35"
    )

    public static let iPadPro3Gen129 = Self(
        rawValue: "APP_IPAD_PRO_3GEN_129"
    )

    public static let iPadPro3Gen11 = Self(
        rawValue: "APP_IPAD_PRO_3GEN_11"
    )

    public static let iPadPro129 = Self(
        rawValue: "APP_IPAD_PRO_129"
    )

    public static let iPad105 = Self(
        rawValue: "APP_IPAD_105"
    )

    public static let iPad97 = Self(
        rawValue: "APP_IPAD_97"
    )

    public static let desktop = Self(
        rawValue: "APP_DESKTOP"
    )

    public static let watchUltra = Self(
        rawValue: "APP_WATCH_ULTRA"
    )

    public static let watchSeries10 = Self(
        rawValue: "APP_WATCH_SERIES_10"
    )

    public static let watchSeries7 = Self(
        rawValue: "APP_WATCH_SERIES_7"
    )

    public static let watchSeries4 = Self(
        rawValue: "APP_WATCH_SERIES_4"
    )

    public static let watchSeries3 = Self(
        rawValue: "APP_WATCH_SERIES_3"
    )

    public static let appleTV = Self(
        rawValue: "APP_APPLE_TV"
    )

    public static let appleVisionPro = Self(
        rawValue: "APP_APPLE_VISION_PRO"
    )

    public static let iMessageIPhone67 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_67"
    )

    public static let iMessageIPhone61 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_61"
    )

    public static let iMessageIPhone65 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_65"
    )

    public static let iMessageIPhone58 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_58"
    )

    public static let iMessageIPhone55 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_55"
    )

    public static let iMessageIPhone47 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_47"
    )

    public static let iMessageIPhone40 = Self(
        rawValue: "IMESSAGE_APP_IPHONE_40"
    )

    public static let iMessageIPadPro3Gen129 = Self(
        rawValue: "IMESSAGE_APP_IPAD_PRO_3GEN_129"
    )

    public static let iMessageIPadPro3Gen11 = Self(
        rawValue: "IMESSAGE_APP_IPAD_PRO_3GEN_11"
    )

    public static let iMessageIPadPro129 = Self(
        rawValue: "IMESSAGE_APP_IPAD_PRO_129"
    )

    public static let iMessageIPad105 = Self(
        rawValue: "IMESSAGE_APP_IPAD_105"
    )

    public static let iMessageIPad97 = Self(
        rawValue: "IMESSAGE_APP_IPAD_97"
    )
}

public struct ASCAppScreenshotSet:
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
        public let screenshotDisplayType: ASCScreenshotDisplayType

        public init(
            screenshotDisplayType: ASCScreenshotDisplayType
        ) {
            self.screenshotDisplayType = screenshotDisplayType
        }
    }
}

public struct ASCAppScreenshot:
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
        public let imageAsset: ASCImageAsset?
        public let assetToken: String?
        public let assetType: String?
        public let uploadOperations: [ASCUploadOperation]?
        public let assetDeliveryState: ASCAssetDeliveryState?

        public init(
            fileSize: Int64?,
            fileName: String?,
            sourceFileChecksum: String?,
            imageAsset: ASCImageAsset?,
            assetToken: String?,
            assetType: String?,
            uploadOperations: [ASCUploadOperation]?,
            assetDeliveryState: ASCAssetDeliveryState?
        ) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.sourceFileChecksum = sourceFileChecksum
            self.imageAsset = imageAsset
            self.assetToken = assetToken
            self.assetType = assetType
            self.uploadOperations = uploadOperations
            self.assetDeliveryState = assetDeliveryState
        }
    }
}

private struct ASCSingleResponse<Resource: Decodable>:
    Decodable
{
    let data: Resource
}

private struct ASCRelationshipLinkageDocument:
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

private func encodeScreenshotJSON<Value: Encodable>(
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

private func decodeScreenshotSingle<Resource: Decodable>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCSingleResponse<Resource>.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

// MARK: - Screenshot sets

extension ASCClient {
    public func listScreenshotSets(
        versionLocalizationID: String
    ) async throws -> [ASCAppScreenshotSet] {
        try await list(
            "/v1/appStoreVersionLocalizations/\(versionLocalizationID)/appScreenshotSets",
            resourceType: "appScreenshotSets",
            fields: "screenshotDisplayType"
        )
    }

    public func getScreenshotSet(
        id: String
    ) async throws -> ASCAppScreenshotSet {
        let data = try await sendAuthorized(
            method: "GET",
            path: "/v1/appScreenshotSets/\(id)",
            queryItems: [
                URLQueryItem(
                    name: "fields[appScreenshotSets]",
                    value: "screenshotDisplayType"
                )
            ]
        )

        return try decodeScreenshotSingle(
            ASCAppScreenshotSet.self,
            from: data
        )
    }

    public func createScreenshotSet(
        versionLocalizationID: String,
        displayType: ASCScreenshotDisplayType
    ) async throws -> ASCAppScreenshotSet {
        try await mutate(
            method: "POST",
            path: "/v1/appScreenshotSets",
            resourceType: "appScreenshotSets",
            attributes: [
                "screenshotDisplayType": displayType.rawValue
            ],
            relationship: (
                name: "appStoreVersionLocalization",
                type: "appStoreVersionLocalizations",
                id: versionLocalizationID
            )
        )
    }

    public func deleteScreenshotSet(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path: "/v1/appScreenshotSets/\(id)"
        )
    }
}

// MARK: - Screenshot reads

extension ASCClient {
    public func listScreenshots(
        screenshotSetID: String
    ) async throws -> [ASCAppScreenshot] {
        try await list(
            "/v1/appScreenshotSets/\(screenshotSetID)/appScreenshots",
            resourceType: "appScreenshots",
            fields: [
                "fileSize",
                "fileName",
                "sourceFileChecksum",
                "imageAsset",
                "assetToken",
                "assetType",
                "uploadOperations",
                "assetDeliveryState"
            ].joined(separator: ",")
        )
    }

    public func getScreenshot(
        id: String
    ) async throws -> ASCAppScreenshot {
        let fields = [
            "fileSize",
            "fileName",
            "sourceFileChecksum",
            "imageAsset",
            "assetToken",
            "assetType",
            "uploadOperations",
            "assetDeliveryState"
        ].joined(separator: ",")

        let data = try await sendAuthorized(
            method: "GET",
            path: "/v1/appScreenshots/\(id)",
            queryItems: [
                URLQueryItem(
                    name: "fields[appScreenshots]",
                    value: fields
                )
            ]
        )

        return try decodeScreenshotSingle(
            ASCAppScreenshot.self,
            from: data
        )
    }
}

// MARK: - Screenshot reservation and commit

extension ASCClient {
    public func createScreenshotReservation(
        screenshotSetID: String,
        fileName: String,
        fileSize: Int64
    ) async throws -> ASCAppScreenshot {
        guard
            !fileName.isEmpty,
            fileSize > 0
        else {
            throw ASCAssetUploadError.invalidAssetFile
        }

        let document = ASCAssetReservationDocument(
            resourceType: "appScreenshots",
            fileName: fileName,
            fileSize: fileSize,
            relationshipName: "appScreenshotSet",
            relationshipType: "appScreenshotSets",
            relationshipID: screenshotSetID
        )

        let body = try encodeScreenshotJSON(
            document
        )

        let data = try await sendAuthorized(
            method: "POST",
            path: "/v1/appScreenshots",
            body: body
        )

        return try decodeScreenshotSingle(
            ASCAppScreenshot.self,
            from: data
        )
    }

    public func commitScreenshot(
        id: String,
        sourceFileChecksum: String
    ) async throws -> ASCAppScreenshot {
        guard !sourceFileChecksum.isEmpty else {
            throw ASCAPIError.invalidResponse
        }

        let document = ASCAssetCommitDocument(
            resourceType: "appScreenshots",
            id: id,
            sourceFileChecksum: sourceFileChecksum
        )

        let body = try encodeScreenshotJSON(
            document
        )

        let data = try await sendAuthorized(
            method: "PATCH",
            path: "/v1/appScreenshots/\(id)",
            body: body
        )

        return try decodeScreenshotSingle(
            ASCAppScreenshot.self,
            from: data
        )
    }
}

// MARK: - Full upload convenience

extension ASCClient {
    public func uploadScreenshot(
        fileURL: URL,
        screenshotSetID: String
    ) async throws -> ASCAppScreenshot {
        let fileSize = try ascAssetFileSize(
            fileURL
        )

        let fileName = fileURL.lastPathComponent

        guard !fileName.isEmpty else {
            throw ASCAssetUploadError.invalidAssetFile
        }

        let reservation = try await createScreenshotReservation(
            screenshotSetID: screenshotSetID,
            fileName: fileName,
            fileSize: fileSize
        )

        guard
            let operations = reservation
                .attributes
                .uploadOperations,
            !operations.isEmpty
        else {
            throw ASCAPIError.invalidResponse
        }

        let checksum = try await uploadAsset(
            fileURL: fileURL,
            operations: operations
        )

        return try await commitScreenshot(
            id: reservation.id,
            sourceFileChecksum: checksum
        )
    }
}

// MARK: - Screenshot deletion

extension ASCClient {
    public func deleteScreenshot(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path: "/v1/appScreenshots/\(id)"
        )
    }
}

// MARK: - Screenshot ordering

extension ASCClient {
    public func listScreenshotOrder(
        screenshotSetID: String
    ) async throws -> [String] {
        let data = try await sendAuthorized(
            method: "GET",
            path: "/v1/appScreenshotSets/\(screenshotSetID)/relationships/appScreenshots"
        )

        let document: ASCRelationshipLinkageDocument

        do {
            document = try JSONDecoder().decode(
                ASCRelationshipLinkageDocument.self,
                from: data
            )
        } catch {
            throw ASCAPIError.invalidResponse
        }

        return document.data.map(\.id)
    }

    public func reorderScreenshots(
        screenshotSetID: String,
        orderedScreenshotIDs: [String]
    ) async throws {
        let document = ASCRelationshipLinkageDocument(
            data: orderedScreenshotIDs.map {
                ASCRelationshipLinkageDocument.Linkage(
                    type: "appScreenshots",
                    id: $0
                )
            }
        )

        let body = try encodeScreenshotJSON(
            document
        )

        _ = try await sendAuthorized(
            method: "PATCH",
            path: "/v1/appScreenshotSets/\(screenshotSetID)/relationships/appScreenshots",
            body: body
        )
    }
}
