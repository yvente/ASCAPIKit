import Foundation

public struct ASCReviewSubmission:
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
        public let platform: String?
        public let state: String?
        public let submittedDate: String?

        public init(
            platform: String?,
            state: String?,
            submittedDate: String?
        ) {
            self.platform = platform
            self.state = state
            self.submittedDate =
                submittedDate
        }
    }
}

public struct ASCReviewSubmissionItem:
    Codable,
    Equatable,
    Sendable
{
    public let id: String
    public let attributes: Attributes
    public let relationships: Relationships?

    public init(
        id: String,
        attributes: Attributes,
        relationships: Relationships? = nil
    ) {
        self.id = id
        self.attributes = attributes
        self.relationships =
            relationships
    }

    public struct Attributes:
        Codable,
        Equatable,
        Sendable
    {
        public let state: String?

        public init(
            state: String?
        ) {
            self.state = state
        }
    }

    public struct Relationships:
        Codable,
        Equatable,
        Sendable
    {
        public let appStoreVersion:
            Relationship?

        public init(
            appStoreVersion:
                Relationship?
        ) {
            self.appStoreVersion =
                appStoreVersion
        }
    }

    public struct Relationship:
        Codable,
        Equatable,
        Sendable
    {
        public let data: Linkage?

        public init(
            data: Linkage?
        ) {
            self.data = data
        }
    }

    public struct Linkage:
        Codable,
        Equatable,
        Sendable
    {
        public let type: String
        public let id: String

        public init(
            type: String,
            id: String
        ) {
            self.type = type
            self.id = id
        }
    }
}

private let reviewSubmissionFields = [
    "platform",
    "submittedDate",
    "state"
].joined(separator: ",")

private let reviewSubmissionItemFields = [
    "state",
    "appStoreVersion"
].joined(separator: ",")

private struct ASCReviewSubmissionSingleResponse<
    Resource: Decodable
>: Decodable {
    let data: Resource
}

private func decodeReviewSubmissionSingle<
    Resource: Decodable
>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCReviewSubmissionSingleResponse<Resource>.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

private struct ASCReviewSubmissionCreateDocument:
    Encodable
{
    let data: Resource

    init(
        appID: String
    ) {
        self.data = Resource(
            type: "reviewSubmissions",
            relationships: Relationships(
                app: Relationship(
                    data: Linkage(
                        type: "apps",
                        id: appID
                    )
                )
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let relationships:
            Relationships
    }

    struct Relationships: Encodable {
        let app: Relationship
    }

    struct Relationship: Encodable {
        let data: Linkage
    }

    struct Linkage: Encodable {
        let type: String
        let id: String
    }
}

private struct ASCReviewSubmissionItemCreateDocument:
    Encodable
{
    let data: Resource

    init(
        reviewSubmissionID: String,
        appStoreVersionID: String
    ) {
        self.data = Resource(
            type:
                "reviewSubmissionItems",
            relationships:
                Relationships(
                    reviewSubmission:
                        Relationship(
                            data: Linkage(
                                type:
                                    "reviewSubmissions",
                                id:
                                    reviewSubmissionID
                            )
                        ),
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
        let relationships:
            Relationships
    }

    struct Relationships: Encodable {
        let reviewSubmission:
            Relationship
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

private struct ASCReviewSubmissionSubmitDocument:
    Encodable
{
    let data: Resource

    init(
        id: String
    ) {
        self.data = Resource(
            type: "reviewSubmissions",
            id: id,
            attributes: Attributes(
                submitted: true
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let submitted: Bool
    }
}

private struct ASCReviewSubmissionCancelDocument:
    Encodable
{
    let data: Resource

    init(
        id: String
    ) {
        self.data = Resource(
            type: "reviewSubmissions",
            id: id,
            attributes: Attributes(
                canceled: true
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let canceled: Bool
    }
}

private func encodeReviewSubmissionJSON<
    Value: Encodable
>(
    _ value: Value
) throws -> Data {
    do {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [
            .sortedKeys
        ]

        return try encoder.encode(
            value
        )
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

// MARK: - Review submission reads

extension ASCClient {
    public func listReviewSubmissions(
        appID: String
    ) async throws
        -> [ASCReviewSubmission]
    {
        try await list(
            "/v1/apps/\(appID)/reviewSubmissions",
            resourceType:
                "reviewSubmissions",
            fields:
                reviewSubmissionFields
        )
    }

    public func getReviewSubmission(
        id: String
    ) async throws
        -> ASCReviewSubmission
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/reviewSubmissions/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[reviewSubmissions]",
                        value:
                            reviewSubmissionFields
                    )
                ]
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmission.self,
                from: data
            )
    }
}

// MARK: - Review submission create and actions

extension ASCClient {
    public func createReviewSubmission(
        appID: String
    ) async throws
        -> ASCReviewSubmission
    {
        let document =
            ASCReviewSubmissionCreateDocument(
                appID: appID
            )

        let body =
            try encodeReviewSubmissionJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "POST",
                path:
                    "/v1/reviewSubmissions",
                body: body
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmission.self,
                from: data
            )
    }

    public func submitReviewSubmission(
        id: String
    ) async throws
        -> ASCReviewSubmission
    {
        let document =
            ASCReviewSubmissionSubmitDocument(
                id: id
            )

        let body =
            try encodeReviewSubmissionJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "PATCH",
                path:
                    "/v1/reviewSubmissions/\(id)",
                body: body
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmission.self,
                from: data
            )
    }

    public func cancelReviewSubmission(
        id: String
    ) async throws
        -> ASCReviewSubmission
    {
        let document =
            ASCReviewSubmissionCancelDocument(
                id: id
            )

        let body =
            try encodeReviewSubmissionJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "PATCH",
                path:
                    "/v1/reviewSubmissions/\(id)",
                body: body
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmission.self,
                from: data
            )
    }
}

// MARK: - Review submission items

extension ASCClient {
    public func listReviewSubmissionItems(
        reviewSubmissionID: String
    ) async throws
        -> [ASCReviewSubmissionItem]
    {
        try await list(
            "/v1/reviewSubmissions/\(reviewSubmissionID)/items",
            resourceType:
                "reviewSubmissionItems",
            fields:
                reviewSubmissionItemFields
        )
    }

    public func addAppStoreVersionToReviewSubmission(
        reviewSubmissionID: String,
        appStoreVersionID: String
    ) async throws
        -> ASCReviewSubmissionItem
    {
        let document =
            ASCReviewSubmissionItemCreateDocument(
                reviewSubmissionID:
                    reviewSubmissionID,
                appStoreVersionID:
                    appStoreVersionID
            )

        let body =
            try encodeReviewSubmissionJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "POST",
                path:
                    "/v1/reviewSubmissionItems",
                body: body
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmissionItem.self,
                from: data
            )
    }

    public func deleteReviewSubmissionItem(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path:
                "/v1/reviewSubmissionItems/\(id)"
        )
    }
}
