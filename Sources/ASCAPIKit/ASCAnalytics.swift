import Foundation

public struct ASCAnalyticsReportAccessType:
    RawRepresentable,
    Codable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(
        rawValue: String
    ) {
        self.rawValue = rawValue
    }

    public init(
        from decoder: Decoder
    ) throws {
        let container =
            try decoder.singleValueContainer()

        self.rawValue =
            try container.decode(
                String.self
            )
    }

    public func encode(
        to encoder: Encoder
    ) throws {
        var container =
            encoder.singleValueContainer()

        try container.encode(
            rawValue
        )
    }

    public static let ongoing = Self(
        rawValue: "ONGOING"
    )

    public static let oneTimeSnapshot = Self(
        rawValue: "ONE_TIME_SNAPSHOT"
    )
}

public struct ASCAnalyticsReportCategory:
    RawRepresentable,
    Codable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(
        rawValue: String
    ) {
        self.rawValue = rawValue
    }

    public init(
        from decoder: Decoder
    ) throws {
        let container =
            try decoder.singleValueContainer()

        self.rawValue =
            try container.decode(
                String.self
            )
    }

    public func encode(
        to encoder: Encoder
    ) throws {
        var container =
            encoder.singleValueContainer()

        try container.encode(
            rawValue
        )
    }

    public static let appUsage = Self(
        rawValue: "APP_USAGE"
    )

    public static let appStoreEngagement = Self(
        rawValue: "APP_STORE_ENGAGEMENT"
    )

    public static let commerce = Self(
        rawValue: "COMMERCE"
    )

    public static let frameworkUsage = Self(
        rawValue: "FRAMEWORK_USAGE"
    )

    public static let performance = Self(
        rawValue: "PERFORMANCE"
    )
}

public struct ASCAnalyticsReportGranularity:
    RawRepresentable,
    Codable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(
        rawValue: String
    ) {
        self.rawValue = rawValue
    }

    public init(
        from decoder: Decoder
    ) throws {
        let container =
            try decoder.singleValueContainer()

        self.rawValue =
            try container.decode(
                String.self
            )
    }

    public func encode(
        to encoder: Encoder
    ) throws {
        var container =
            encoder.singleValueContainer()

        try container.encode(
            rawValue
        )
    }

    public static let daily = Self(
        rawValue: "DAILY"
    )

    public static let weekly = Self(
        rawValue: "WEEKLY"
    )

    public static let monthly = Self(
        rawValue: "MONTHLY"
    )
}

public struct ASCAnalyticsReportRequest:
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
        public let accessType:
            ASCAnalyticsReportAccessType?
        public let stoppedDueToInactivity:
            Bool?

        public init(
            accessType:
                ASCAnalyticsReportAccessType?,
            stoppedDueToInactivity:
                Bool?
        ) {
            self.accessType = accessType
            self.stoppedDueToInactivity =
                stoppedDueToInactivity
        }
    }
}

public struct ASCAnalyticsReport:
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
        public let name: String?
        public let category:
            ASCAnalyticsReportCategory?

        public init(
            name: String?,
            category:
                ASCAnalyticsReportCategory?
        ) {
            self.name = name
            self.category = category
        }
    }
}

public struct ASCAnalyticsReportInstance:
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
        public let granularity:
            ASCAnalyticsReportGranularity?
        public let processingDate: String?

        public init(
            granularity:
                ASCAnalyticsReportGranularity?,
            processingDate: String?
        ) {
            self.granularity =
                granularity
            self.processingDate =
                processingDate
        }
    }
}

public struct ASCAnalyticsReportSegment:
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
        public let checksum: String?
        public let sizeInBytes: Int64?
        public let url: String?

        public init(
            checksum: String?,
            sizeInBytes: Int64?,
            url: String?
        ) {
            self.checksum = checksum
            self.sizeInBytes =
                sizeInBytes
            self.url = url
        }
    }
}

private struct ASCAnalyticsSingleResponse<
    Resource: Decodable
>: Decodable {
    let data: Resource
}

private struct ASCAnalyticsReportRequestCreateDocument:
    Encodable
{
    let data: Resource

    init(
        appID: String,
        accessType:
            ASCAnalyticsReportAccessType
    ) {
        self.data = Resource(
            type:
                "analyticsReportRequests",
            attributes: Attributes(
                accessType: accessType
            ),
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
        let attributes: Attributes
        let relationships: Relationships
    }

    struct Attributes: Encodable {
        let accessType:
            ASCAnalyticsReportAccessType
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

private let analyticsReportRequestFields = [
    "accessType",
    "stoppedDueToInactivity"
].joined(separator: ",")

private let analyticsReportFields = [
    "name",
    "category"
].joined(separator: ",")

private let analyticsReportInstanceFields = [
    "granularity",
    "processingDate"
].joined(separator: ",")

private let analyticsReportSegmentFields = [
    "checksum",
    "sizeInBytes",
    "url"
].joined(separator: ",")

private func encodeAnalyticsJSON<
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

private func decodeAnalyticsSingle<
    Resource: Decodable
>(
    _ type: Resource.Type,
    from data: Data
) throws -> Resource {
    do {
        return try JSONDecoder()
            .decode(
                ASCAnalyticsSingleResponse<
                    Resource
                >.self,
                from: data
            )
            .data
    } catch {
        throw ASCAPIError.invalidResponse
    }
}

// MARK: - Report requests

extension ASCClient {
    public func createAnalyticsReportRequest(
        appID: String,
        accessType:
            ASCAnalyticsReportAccessType
    ) async throws
        -> ASCAnalyticsReportRequest
    {
        let document =
            ASCAnalyticsReportRequestCreateDocument(
                appID: appID,
                accessType: accessType
            )

        let body =
            try encodeAnalyticsJSON(
                document
            )

        let data =
            try await sendAuthorized(
                method: "POST",
                path:
                    "/v1/analyticsReportRequests",
                body: body
            )

        return try decodeAnalyticsSingle(
            ASCAnalyticsReportRequest.self,
            from: data
        )
    }

    public func listAnalyticsReportRequests(
        appID: String,
        accessTypes:
            [ASCAnalyticsReportAccessType]
                = [],
        limit: Int = 200
    ) async throws
        -> [ASCAnalyticsReportRequest]
    {
        var queryItems:
            [URLQueryItem] = []

        if !accessTypes.isEmpty {
            queryItems.append(
                URLQueryItem(
                    name:
                        "filter[accessType]",
                    value:
                        accessTypes
                            .map(\.rawValue)
                            .joined(
                                separator: ","
                            )
                )
            )
        }

        return try await list(
            "/v1/apps/\(appID)/analyticsReportRequests",
            resourceType:
                "analyticsReportRequests",
            fields:
                analyticsReportRequestFields,
            limit: limit,
            queryItems: queryItems
        )
    }

    public func getAnalyticsReportRequest(
        id: String
    ) async throws
        -> ASCAnalyticsReportRequest
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/analyticsReportRequests/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[analyticsReportRequests]",
                        value:
                            analyticsReportRequestFields
                    )
                ]
            )

        return try decodeAnalyticsSingle(
            ASCAnalyticsReportRequest.self,
            from: data
        )
    }

    public func deleteAnalyticsReportRequest(
        id: String
    ) async throws {
        _ = try await sendAuthorized(
            method: "DELETE",
            path:
                "/v1/analyticsReportRequests/\(id)"
        )
    }

    public func listAnalyticsReportRequestIDs(
        appID: String,
        limit: Int = 200
    ) async throws -> [String] {
        try await listRelationshipIDs(
            "/v1/apps/\(appID)/relationships/analyticsReportRequests",
            resourceType:
                "analyticsReportRequests",
            limit: limit
        )
    }
}

// MARK: - Reports

extension ASCClient {
    public func listAnalyticsReports(
        reportRequestID: String,
        categories:
            [ASCAnalyticsReportCategory]
                = [],
        names: [String] = [],
        limit: Int = 200
    ) async throws
        -> [ASCAnalyticsReport]
    {
        var queryItems:
            [URLQueryItem] = []

        if !categories.isEmpty {
            queryItems.append(
                URLQueryItem(
                    name:
                        "filter[category]",
                    value:
                        categories
                            .map(\.rawValue)
                            .joined(
                                separator: ","
                            )
                )
            )
        }

        if !names.isEmpty {
            queryItems.append(
                URLQueryItem(
                    name: "filter[name]",
                    value:
                        names.joined(
                            separator: ","
                        )
                )
            )
        }

        return try await list(
            "/v1/analyticsReportRequests/\(reportRequestID)/reports",
            resourceType:
                "analyticsReports",
            fields:
                analyticsReportFields,
            limit: limit,
            queryItems: queryItems
        )
    }

    public func getAnalyticsReport(
        id: String
    ) async throws
        -> ASCAnalyticsReport
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/analyticsReports/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[analyticsReports]",
                        value:
                            analyticsReportFields
                    )
                ]
            )

        return try decodeAnalyticsSingle(
            ASCAnalyticsReport.self,
            from: data
        )
    }

    public func listAnalyticsReportIDs(
        reportRequestID: String,
        limit: Int = 200
    ) async throws -> [String] {
        try await listRelationshipIDs(
            "/v1/analyticsReportRequests/\(reportRequestID)/relationships/reports",
            resourceType:
                "analyticsReports",
            limit: limit
        )
    }
}

// MARK: - Report instances

extension ASCClient {
    public func listAnalyticsReportInstances(
        reportID: String,
        granularities:
            [ASCAnalyticsReportGranularity]
                = [],
        processingDates: [String] = [],
        limit: Int = 200
    ) async throws
        -> [ASCAnalyticsReportInstance]
    {
        var queryItems:
            [URLQueryItem] = []

        if !granularities.isEmpty {
            queryItems.append(
                URLQueryItem(
                    name:
                        "filter[granularity]",
                    value:
                        granularities
                            .map(\.rawValue)
                            .joined(
                                separator: ","
                            )
                )
            )
        }

        if !processingDates.isEmpty {
            queryItems.append(
                URLQueryItem(
                    name:
                        "filter[processingDate]",
                    value:
                        processingDates
                            .joined(
                                separator: ","
                            )
                )
            )
        }

        return try await list(
            "/v1/analyticsReports/\(reportID)/instances",
            resourceType:
                "analyticsReportInstances",
            fields:
                analyticsReportInstanceFields,
            limit: limit,
            queryItems: queryItems
        )
    }

    public func getAnalyticsReportInstance(
        id: String
    ) async throws
        -> ASCAnalyticsReportInstance
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/analyticsReportInstances/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[analyticsReportInstances]",
                        value:
                            analyticsReportInstanceFields
                    )
                ]
            )

        return try decodeAnalyticsSingle(
            ASCAnalyticsReportInstance.self,
            from: data
        )
    }

    public func listAnalyticsReportInstanceIDs(
        reportID: String,
        limit: Int = 200
    ) async throws -> [String] {
        try await listRelationshipIDs(
            "/v1/analyticsReports/\(reportID)/relationships/instances",
            resourceType:
                "analyticsReportInstances",
            limit: limit
        )
    }
}

// MARK: - Report segments

extension ASCClient {
    public func listAnalyticsReportSegments(
        instanceID: String,
        limit: Int = 200
    ) async throws
        -> [ASCAnalyticsReportSegment]
    {
        try await list(
            "/v1/analyticsReportInstances/\(instanceID)/segments",
            resourceType:
                "analyticsReportSegments",
            fields:
                analyticsReportSegmentFields,
            limit: limit
        )
    }

    public func getAnalyticsReportSegment(
        id: String
    ) async throws
        -> ASCAnalyticsReportSegment
    {
        let data =
            try await sendAuthorized(
                method: "GET",
                path:
                    "/v1/analyticsReportSegments/\(id)",
                queryItems: [
                    URLQueryItem(
                        name:
                            "fields[analyticsReportSegments]",
                        value:
                            analyticsReportSegmentFields
                    )
                ]
            )

        return try decodeAnalyticsSingle(
            ASCAnalyticsReportSegment.self,
            from: data
        )
    }

    public func listAnalyticsReportSegmentIDs(
        instanceID: String,
        limit: Int = 200
    ) async throws -> [String] {
        try await listRelationshipIDs(
            "/v1/analyticsReportInstances/\(instanceID)/relationships/segments",
            resourceType:
                "analyticsReportSegments",
            limit: limit
        )
    }
}
