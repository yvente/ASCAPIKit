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
        public let appCustomProductPageVersion:
            Relationship?
        public let appStoreVersionExperiment:
            Relationship?
        public let appStoreVersionExperimentV2:
            Relationship?
        public let appEvent:
            Relationship?
        public let backgroundAssetVersion:
            Relationship?
        public let gameCenterAchievementVersion:
            Relationship?
        public let gameCenterActivityVersion:
            Relationship?
        public let gameCenterChallengeVersion:
            Relationship?
        public let gameCenterLeaderboardSetVersion:
            Relationship?
        public let gameCenterLeaderboardVersion:
            Relationship?
        public let inAppPurchaseVersion:
            Relationship?
        public let subscriptionVersion:
            Relationship?
        public let subscriptionGroupVersion:
            Relationship?

        public init(
            appStoreVersion:
                Relationship? = nil,
            appCustomProductPageVersion:
                Relationship? = nil,
            appStoreVersionExperiment:
                Relationship? = nil,
            appStoreVersionExperimentV2:
                Relationship? = nil,
            appEvent:
                Relationship? = nil,
            backgroundAssetVersion:
                Relationship? = nil,
            gameCenterAchievementVersion:
                Relationship? = nil,
            gameCenterActivityVersion:
                Relationship? = nil,
            gameCenterChallengeVersion:
                Relationship? = nil,
            gameCenterLeaderboardSetVersion:
                Relationship? = nil,
            gameCenterLeaderboardVersion:
                Relationship? = nil,
            inAppPurchaseVersion:
                Relationship? = nil,
            subscriptionVersion:
                Relationship? = nil,
            subscriptionGroupVersion:
                Relationship? = nil
        ) {
            self.appStoreVersion =
                appStoreVersion
            self.appCustomProductPageVersion =
                appCustomProductPageVersion
            self.appStoreVersionExperiment =
                appStoreVersionExperiment
            self.appStoreVersionExperimentV2 =
                appStoreVersionExperimentV2
            self.appEvent =
                appEvent
            self.backgroundAssetVersion =
                backgroundAssetVersion
            self.gameCenterAchievementVersion =
                gameCenterAchievementVersion
            self.gameCenterActivityVersion =
                gameCenterActivityVersion
            self.gameCenterChallengeVersion =
                gameCenterChallengeVersion
            self.gameCenterLeaderboardSetVersion =
                gameCenterLeaderboardSetVersion
            self.gameCenterLeaderboardVersion =
                gameCenterLeaderboardVersion
            self.inAppPurchaseVersion =
                inAppPurchaseVersion
            self.subscriptionVersion =
                subscriptionVersion
            self.subscriptionGroupVersion =
                subscriptionGroupVersion
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

public enum ASCReviewSubmissionItemTarget:
    Equatable,
    Sendable
{
    case appStoreVersion(String)
    case appCustomProductPageVersion(String)
    case appStoreVersionExperiment(String)
    case appStoreVersionExperimentV2(String)
    case appEvent(String)
    case backgroundAssetVersion(String)
    case gameCenterAchievementVersion(String)
    case gameCenterActivityVersion(String)
    case gameCenterChallengeVersion(String)
    case gameCenterLeaderboardSetVersion(String)
    case gameCenterLeaderboardVersion(String)
    case inAppPurchaseVersion(String)
    case subscriptionVersion(String)
    case subscriptionGroupVersion(String)
}

private extension ASCReviewSubmissionItemTarget {
    var relationshipName: String {
        switch self {
        case .appStoreVersion:
            return "appStoreVersion"

        case .appCustomProductPageVersion:
            return "appCustomProductPageVersion"

        case .appStoreVersionExperiment:
            return "appStoreVersionExperiment"

        case .appStoreVersionExperimentV2:
            return "appStoreVersionExperimentV2"

        case .appEvent:
            return "appEvent"

        case .backgroundAssetVersion:
            return "backgroundAssetVersion"

        case .gameCenterAchievementVersion:
            return "gameCenterAchievementVersion"

        case .gameCenterActivityVersion:
            return "gameCenterActivityVersion"

        case .gameCenterChallengeVersion:
            return "gameCenterChallengeVersion"

        case .gameCenterLeaderboardSetVersion:
            return "gameCenterLeaderboardSetVersion"

        case .gameCenterLeaderboardVersion:
            return "gameCenterLeaderboardVersion"

        case .inAppPurchaseVersion:
            return "inAppPurchaseVersion"

        case .subscriptionVersion:
            return "subscriptionVersion"

        case .subscriptionGroupVersion:
            return "subscriptionGroupVersion"
        }
    }

    var resourceType: String {
        switch self {
        case .appStoreVersion:
            return "appStoreVersions"

        case .appCustomProductPageVersion:
            return "appCustomProductPageVersions"

        case .appStoreVersionExperiment:
            return "appStoreVersionExperiments"

        case .appStoreVersionExperimentV2:
            return "appStoreVersionExperiments"

        case .appEvent:
            return "appEvents"

        case .backgroundAssetVersion:
            return "backgroundAssetVersions"

        case .gameCenterAchievementVersion:
            return "gameCenterAchievementVersions"

        case .gameCenterActivityVersion:
            return "gameCenterActivityVersions"

        case .gameCenterChallengeVersion:
            return "gameCenterChallengeVersions"

        case .gameCenterLeaderboardSetVersion:
            return "gameCenterLeaderboardSetVersions"

        case .gameCenterLeaderboardVersion:
            return "gameCenterLeaderboardVersions"

        case .inAppPurchaseVersion:
            return "inAppPurchaseVersions"

        case .subscriptionVersion:
            return "subscriptionVersions"

        case .subscriptionGroupVersion:
            return "subscriptionGroupVersions"
        }
    }

    var targetID: String {
        switch self {
        case .appStoreVersion(let id):
            return id

        case .appCustomProductPageVersion(let id):
            return id

        case .appStoreVersionExperiment(let id):
            return id

        case .appStoreVersionExperimentV2(let id):
            return id

        case .appEvent(let id):
            return id

        case .backgroundAssetVersion(let id):
            return id

        case .gameCenterAchievementVersion(let id):
            return id

        case .gameCenterActivityVersion(let id):
            return id

        case .gameCenterChallengeVersion(let id):
            return id

        case .gameCenterLeaderboardSetVersion(let id):
            return id

        case .gameCenterLeaderboardVersion(let id):
            return id

        case .inAppPurchaseVersion(let id):
            return id

        case .subscriptionVersion(let id):
            return id

        case .subscriptionGroupVersion(let id):
            return id
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
    "appStoreVersion",
    "appCustomProductPageVersion",
    "appStoreVersionExperiment",
    "appStoreVersionExperimentV2",
    "appEvent",
    "backgroundAssetVersion",
    "gameCenterAchievementVersion",
    "gameCenterActivityVersion",
    "gameCenterChallengeVersion",
    "gameCenterLeaderboardSetVersion",
    "gameCenterLeaderboardVersion",
    "inAppPurchaseVersion",
    "subscriptionVersion",
    "subscriptionGroupVersion"
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
        target: ASCReviewSubmissionItemTarget
    ) {
        var relationships = Relationships(
            reviewSubmission: Relationship(
                data: Linkage(
                    type:
                        "reviewSubmissions",
                    id:
                        reviewSubmissionID
                )
            )
        )

        let targetRelationship = Relationship(
            data: Linkage(
                type: target.resourceType,
                id: target.targetID
            )
        )

        switch target {
        case .appStoreVersion:
            relationships.appStoreVersion =
                targetRelationship

        case .appCustomProductPageVersion:
            relationships.appCustomProductPageVersion =
                targetRelationship

        case .appStoreVersionExperiment:
            relationships.appStoreVersionExperiment =
                targetRelationship

        case .appStoreVersionExperimentV2:
            relationships.appStoreVersionExperimentV2 =
                targetRelationship

        case .appEvent:
            relationships.appEvent =
                targetRelationship

        case .backgroundAssetVersion:
            relationships.backgroundAssetVersion =
                targetRelationship

        case .gameCenterAchievementVersion:
            relationships.gameCenterAchievementVersion =
                targetRelationship

        case .gameCenterActivityVersion:
            relationships.gameCenterActivityVersion =
                targetRelationship

        case .gameCenterChallengeVersion:
            relationships.gameCenterChallengeVersion =
                targetRelationship

        case .gameCenterLeaderboardSetVersion:
            relationships.gameCenterLeaderboardSetVersion =
                targetRelationship

        case .gameCenterLeaderboardVersion:
            relationships.gameCenterLeaderboardVersion =
                targetRelationship

        case .inAppPurchaseVersion:
            relationships.inAppPurchaseVersion =
                targetRelationship

        case .subscriptionVersion:
            relationships.subscriptionVersion =
                targetRelationship

        case .subscriptionGroupVersion:
            relationships.subscriptionGroupVersion =
                targetRelationship
        }

        self.data = Resource(
            type:
                "reviewSubmissionItems",
            relationships: relationships
        )
    }

    struct Resource: Encodable {
        let type: String
        let relationships:
            Relationships
    }

    struct Relationships: Encodable {
        var reviewSubmission:
            Relationship
        var appStoreVersion:
            Relationship?
        var appCustomProductPageVersion:
            Relationship?
        var appStoreVersionExperiment:
            Relationship?
        var appStoreVersionExperimentV2:
            Relationship?
        var appEvent:
            Relationship?
        var backgroundAssetVersion:
            Relationship?
        var gameCenterAchievementVersion:
            Relationship?
        var gameCenterActivityVersion:
            Relationship?
        var gameCenterChallengeVersion:
            Relationship?
        var gameCenterLeaderboardSetVersion:
            Relationship?
        var gameCenterLeaderboardVersion:
            Relationship?
        var inAppPurchaseVersion:
            Relationship?
        var subscriptionVersion:
            Relationship?
        var subscriptionGroupVersion:
            Relationship?
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

private struct ASCReviewSubmissionItemResolveDocument:
    Encodable
{
    let data: Resource

    init(
        id: String
    ) {
        self.data = Resource(
            type:
                "reviewSubmissionItems",
            id: id,
            attributes: Attributes(
                resolved: true
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let resolved: Bool
    }
}

private struct ASCReviewSubmissionItemMarkRemovedDocument:
    Encodable
{
    let data: Resource

    init(
        id: String
    ) {
        self.data = Resource(
            type:
                "reviewSubmissionItems",
            id: id,
            attributes: Attributes(
                removed: true
            )
        )
    }

    struct Resource: Encodable {
        let type: String
        let id: String
        let attributes: Attributes
    }

    struct Attributes: Encodable {
        let removed: Bool
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
        appID: String,
        platform: String? = nil,
        states: [String] = []
    ) async throws
        -> [ASCReviewSubmission]
    {
        var filters: [URLQueryItem] = [
            URLQueryItem(
                name: "filter[app]",
                value: appID
            )
        ]

        if let platform {
            filters.append(
                URLQueryItem(
                    name: "filter[platform]",
                    value: platform
                )
            )
        }

        if !states.isEmpty {
            filters.append(
                URLQueryItem(
                    name: "filter[state]",
                    value: states.joined(separator: ",")
                )
            )
        }

        return try await list(
            "/v1/reviewSubmissions",
            resourceType:
                "reviewSubmissions",
            fields:
                reviewSubmissionFields,
            queryItems: filters
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

    public func addReviewSubmissionItem(
        reviewSubmissionID: String,
        target: ASCReviewSubmissionItemTarget
    ) async throws
        -> ASCReviewSubmissionItem
    {
        let document =
            ASCReviewSubmissionItemCreateDocument(
                reviewSubmissionID:
                    reviewSubmissionID,
                target: target
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

    public func addAppStoreVersionToReviewSubmission(
        reviewSubmissionID: String,
        appStoreVersionID: String
    ) async throws
        -> ASCReviewSubmissionItem
    {
        try await addReviewSubmissionItem(
            reviewSubmissionID:
                reviewSubmissionID,
            target:
                .appStoreVersion(
                    appStoreVersionID
                )
        )
    }

    public func resolveReviewSubmissionItem(
        id: String
    ) async throws
        -> ASCReviewSubmissionItem
    {
        let document =
            ASCReviewSubmissionItemResolveDocument(
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
                    "/v1/reviewSubmissionItems/\(id)",
                body: body
            )

        return try
            decodeReviewSubmissionSingle(
                ASCReviewSubmissionItem.self,
                from: data
            )
    }

    public func markReviewSubmissionItemRemoved(
        id: String
    ) async throws
        -> ASCReviewSubmissionItem
    {
        let document =
            ASCReviewSubmissionItemMarkRemovedDocument(
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
                    "/v1/reviewSubmissionItems/\(id)",
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
