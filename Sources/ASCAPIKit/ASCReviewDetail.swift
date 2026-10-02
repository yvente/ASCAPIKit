import Foundation

public struct ASCAppStoreReviewDetail:
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
        public let contactFirstName: String?
        public let contactLastName: String?
        public let contactPhone: String?
        public let contactEmail: String?
        public let demoAccountName: String?
        public let demoAccountPassword: String?
        public let demoAccountRequired: Bool?
        public let notes: String?

        public init(
            contactFirstName: String?,
            contactLastName: String?,
            contactPhone: String?,
            contactEmail: String?,
            demoAccountName: String?,
            demoAccountPassword: String?,
            demoAccountRequired: Bool?,
            notes: String?
        ) {
            self.contactFirstName =
                contactFirstName
            self.contactLastName =
                contactLastName
            self.contactPhone =
                contactPhone
            self.contactEmail =
                contactEmail
            self.demoAccountName =
                demoAccountName
            self.demoAccountPassword =
                demoAccountPassword
            self.demoAccountRequired =
                demoAccountRequired
            self.notes = notes
        }
    }
}

public struct ASCAppStoreReviewDetailUpdate:
    Encodable,
    Equatable,
    Sendable
{
    public let contactFirstName: String?
    public let contactLastName: String?
    public let contactPhone: String?
    public let contactEmail: String?
    public let demoAccountName: String?
    public let demoAccountPassword: String?
    public let demoAccountRequired: Bool?
    public let notes: String?

    public init(
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        contactPhone: String? = nil,
        contactEmail: String? = nil,
        demoAccountName: String? = nil,
        demoAccountPassword: String? = nil,
        demoAccountRequired: Bool? = nil,
        notes: String? = nil
    ) {
        self.contactFirstName =
            contactFirstName
        self.contactLastName =
            contactLastName
        self.contactPhone =
            contactPhone
        self.contactEmail =
            contactEmail
        self.demoAccountName =
            demoAccountName
        self.demoAccountPassword =
            demoAccountPassword
        self.demoAccountRequired =
            demoAccountRequired
        self.notes = notes
    }
}

private extension ASCAppStoreReviewDetailUpdate {
    var hasChanges: Bool {
        contactFirstName != nil
            || contactLastName != nil
            || contactPhone != nil
            || contactEmail != nil
            || demoAccountName != nil
            || demoAccountPassword != nil
            || demoAccountRequired != nil
            || notes != nil
    }
}

private let reviewDetailFields = [
    "contactFirstName",
    "contactLastName",
    "contactPhone",
    "contactEmail",
    "demoAccountName",
    "demoAccountPassword",
    "demoAccountRequired",
    "notes"
].joined(separator: ",")

private struct ASCReviewDetailSingleResponse<
    Resource: Decodable
>: Decodable {
    let data: Resource
}

private func decodeReviewDetailSingle<
    Resource: Decodable
>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCReviewDetailSingleResponse<Resource>.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

private struct ASCReviewDetailLinkageResponse:
    Decodable
{
    let data: Linkage?

    struct Linkage:
        Decodable,
        Equatable,
        Sendable
    {
        let type: String
        let id: String
    }
}

private struct ASCReviewDetailCreateDocument:
    Encodable
{
    let data: Resource

    init(
        appStoreVersionID: String,
        contactFirstName: String,
        contactLastName: String,
        contactPhone: String,
        contactEmail: String,
        demoAccountRequired: Bool,
        demoAccountName: String?,
        demoAccountPassword: String?,
        notes: String?
    ) {
        self.data = Resource(
            type: "appStoreReviewDetails",
            attributes: Attributes(
                contactFirstName:
                    contactFirstName,
                contactLastName:
                    contactLastName,
                contactPhone:
                    contactPhone,
                contactEmail:
                    contactEmail,
                demoAccountName:
                    demoAccountName,
                demoAccountPassword:
                    demoAccountPassword,
                demoAccountRequired:
                    demoAccountRequired,
                notes:
                    notes
            ),
            relationships: Relationships(
                appStoreVersion:
                    Relationship(
                        data: Linkage(
                            type:
                                "appStoreVersions",
                            id:
                                appStoreVersionID
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
        let contactFirstName: String
        let contactLastName: String
        let contactPhone: String
        let contactEmail: String
        let demoAccountName: String?
        let demoAccountPassword: String?
        let demoAccountRequired: Bool
        let notes: String?
    }

    struct Relationships: Encodable {
        let appStoreVersion:
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

private struct ASCReviewDetailUpdateDocument:
    Encodable
{
    let data: Resource

    init(
        id: String,
        changes: ASCAppStoreReviewDetailUpdate
    ) {
        self.data = Resource(
            type: "appStoreReviewDetails",
            id: id,
            attributes: changes
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes:
            ASCAppStoreReviewDetailUpdate
    }
}

private func encodeReviewDetailJSON<
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

// MARK: - Review detail reads

extension ASCClient {
    public func getReviewDetail(
        id: String
    ) async throws
        -> ASCAppStoreReviewDetail
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/appStoreReviewDetails/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[appStoreReviewDetails]",
                        value:
                            reviewDetailFields
                    )
                ]
            )

        return try decodeReviewDetailSingle(
            ASCAppStoreReviewDetail.self,
            from: data
        )
    }

    public func getReviewDetail(
        appStoreVersionID: String
    ) async throws
        -> ASCAppStoreReviewDetail
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/appStoreVersions/\(appStoreVersionID)/appStoreReviewDetail",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[appStoreReviewDetails]",
                        value:
                            reviewDetailFields
                    )
                ]
            )

        return try decodeReviewDetailSingle(
            ASCAppStoreReviewDetail.self,
            from: data
        )
    }

    public func getReviewDetailID(
        appStoreVersionID: String
    ) async throws -> String? {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/appStoreVersions/\(appStoreVersionID)/relationships/appStoreReviewDetail"
            )

        let response:
            ASCReviewDetailLinkageResponse

        do {
            response =
                try JSONDecoder().decode(
                    ASCReviewDetailLinkageResponse.self,
                    from: data
                )
        } catch {
            throw ASCAPIError.invalidResponse
        }

        guard let linkage = response.data else {
            return nil
        }

        guard
            linkage.type
                == "appStoreReviewDetails"
        else {
            throw ASCAPIError.invalidResponse
        }

        return linkage.id
    }
}

// MARK: - Review detail create and update

extension ASCClient {
    public func createReviewDetail(
        appStoreVersionID: String,
        contactFirstName: String,
        contactLastName: String,
        contactPhone: String,
        contactEmail: String,
        demoAccountRequired: Bool,
        demoAccountName: String? = nil,
        demoAccountPassword: String? = nil,
        notes: String? = nil
    ) async throws
        -> ASCAppStoreReviewDetail
    {
        let document =
            ASCReviewDetailCreateDocument(
                appStoreVersionID:
                    appStoreVersionID,
                contactFirstName:
                    contactFirstName,
                contactLastName:
                    contactLastName,
                contactPhone:
                    contactPhone,
                contactEmail:
                    contactEmail,
                demoAccountRequired:
                    demoAccountRequired,
                demoAccountName:
                    demoAccountName,
                demoAccountPassword:
                    demoAccountPassword,
                notes:
                    notes
            )

        let body =
            try encodeReviewDetailJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "POST",
                path:
                    "/v1/appStoreReviewDetails",
                body: body
            )

        return try decodeReviewDetailSingle(
            ASCAppStoreReviewDetail.self,
            from: data
        )
    }

    public func updateReviewDetail(
        id: String,
        changes:
            ASCAppStoreReviewDetailUpdate
    ) async throws
        -> ASCAppStoreReviewDetail
    {
        guard changes.hasChanges else {
            throw ASCAPIError.invalidResponse
        }

        let document =
            ASCReviewDetailUpdateDocument(
                id: id,
                changes: changes
            )

        let body =
            try encodeReviewDetailJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "PATCH",
                path:
                    "/v1/appStoreReviewDetails/\(id)",
                body: body
            )

        return try decodeReviewDetailSingle(
            ASCAppStoreReviewDetail.self,
            from: data
        )
    }
}
