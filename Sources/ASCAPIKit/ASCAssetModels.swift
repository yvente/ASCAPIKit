import Foundation

public struct ASCHTTPHeader: Codable, Equatable, Sendable {
    public let name: String
    public let value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

public struct ASCUploadOperation: Codable, Equatable, Sendable {
    public let method: String
    public let url: String
    public let length: Int64
    public let offset: Int64
    public let requestHeaders: [ASCHTTPHeader]

    public init(
        method: String,
        url: String,
        length: Int64,
        offset: Int64,
        requestHeaders: [ASCHTTPHeader]
    ) {
        self.method = method
        self.url = url
        self.length = length
        self.offset = offset
        self.requestHeaders = requestHeaders
    }
}

public struct ASCImageAsset: Codable, Equatable, Sendable {
    public let templateURL: String
    public let width: Int
    public let height: Int

    public init(
        templateURL: String,
        width: Int,
        height: Int
    ) {
        self.templateURL = templateURL
        self.width = width
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case templateURL = "templateUrl"
        case width
        case height
    }
}

public struct ASCAssetStateError: Codable, Equatable, Sendable {
    public let code: String?
    public let description: String?

    public init(
        code: String?,
        description: String?
    ) {
        self.code = code
        self.description = description
    }
}

public struct ASCAssetDeliveryState: Codable, Equatable, Sendable {
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

struct ASCAssetReservationDocument: Encodable {
    let data: Resource

    init(
        resourceType: String,
        fileName: String,
        fileSize: Int64,
        relationshipName: String,
        relationshipType: String,
        relationshipID: String
    ) {
        self.data = Resource(
            type: resourceType,
            attributes: Attributes(
                fileName: fileName,
                fileSize: fileSize
            ),
            relationships: [
                relationshipName: Relationship(
                    data: Linkage(
                        type: relationshipType,
                        id: relationshipID
                    )
                )
            ]
        )
    }

    struct Resource: Encodable {
        let type: String
        let attributes: Attributes
        let relationships: [String: Relationship]
    }

    struct Attributes: Encodable {
        let fileName: String
        let fileSize: Int64
    }

    struct Relationship: Encodable {
        let data: Linkage
    }

    struct Linkage: Encodable {
        let type: String
        let id: String
    }
}

struct ASCAssetCommitDocument: Encodable {
    let data: Resource

    init(
        resourceType: String,
        id: String,
        sourceFileChecksum: String
    ) {
        self.data = Resource(
            type: resourceType,
            id: id,
            attributes: Attributes(
                uploaded: true,
                sourceFileChecksum: sourceFileChecksum
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
