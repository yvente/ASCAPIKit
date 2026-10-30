// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_accessibilitydeclarations_createinstance_f6dde42bf9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "accessibilityDeclarations_createInstance", method: "POST",
            pathTemplate: "/v1/accessibilityDeclarations",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_accessibilitydeclarations_deleteinstance_0b95df6cab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "accessibilityDeclarations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/accessibilityDeclarations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_accessibilitydeclarations_getinstance_875a02c02e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "accessibilityDeclarations_getInstance", method: "GET",
            pathTemplate: "/v1/accessibilityDeclarations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[accessibilityDeclarations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_accessibilitydeclarations_updateinstance_a058dd6bd7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "accessibilityDeclarations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/accessibilityDeclarations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_actors_getcollection_741560f395: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "actors_getCollection", method: "GET",
            pathTemplate: "/v1/actors",
            pathParameterNames: [],
            queryParameterNames: ["fields[actors]", "filter[id]", "limit"],
            requiredQueryParameterNames: ["filter[id]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_actors_getinstance_93cd931a20: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "actors_getInstance", method: "GET",
            pathTemplate: "/v1/actors/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ageratingdeclarations_updateinstance_67dc46a55f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ageRatingDeclarations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/ageRatingDeclarations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributiondomains_getcollection_928a4e2466: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionDomains_getCollection", method: "GET",
            pathTemplate: "/v1/alternativeDistributionDomains",
            pathParameterNames: [],
            queryParameterNames: ["fields[alternativeDistributionDomains]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributiondomains_createinstance_b35b0a322e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionDomains_createInstance", method: "POST",
            pathTemplate: "/v1/alternativeDistributionDomains",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributiondomains_deleteinstance_be98ed7d42: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionDomains_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/alternativeDistributionDomains/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributiondomains_getinstance_b795d05c2b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionDomains_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionDomains/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionDomains]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionkeys_getcollection_eeef972647: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionKeys_getCollection", method: "GET",
            pathTemplate: "/v1/alternativeDistributionKeys",
            pathParameterNames: [],
            queryParameterNames: ["exists[app]", "fields[alternativeDistributionKeys]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionkeys_createinstance_e56eb87330: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionKeys_createInstance", method: "POST",
            pathTemplate: "/v1/alternativeDistributionKeys",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionkeys_deleteinstance_4171d6ba17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionKeys_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/alternativeDistributionKeys/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionkeys_getinstance_8ea4241b47: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionKeys_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionKeys/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionKeys]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackagedeltas_getinstance_e46d3db35c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageDeltas_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageDeltas/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageDeltas]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackagevariants_getinstance_9c453922db: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVariants_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVariants/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageVariants]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackageversions_getinstance_8d8b699a34: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVersions_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageDeltas]", "fields[alternativeDistributionPackageVariants]", "fields[alternativeDistributionPackageVersions]", "fields[alternativeDistributionPackages]", "include", "limit[deltas]", "limit[variants]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackageversions_deltas_gettomanyrelated_068e7b3e6c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVersions_deltas_getToManyRelated", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVersions/{id}/deltas",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageDeltas]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackageversions_deltas_gettomanyrelationship_4b09b519e6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVersions_deltas_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVersions/{id}/relationships/deltas",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackageversions_variants_gettomanyrelationship_859675ff65: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVersions_variants_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVersions/{id}/relationships/variants",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackageversions_variants_gettomanyrelated_fce6e53665: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackageVersions_variants_getToManyRelated", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackageVersions/{id}/variants",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageVariants]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackages_createinstance_ae12235d92: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackages_createInstance", method: "POST",
            pathTemplate: "/v1/alternativeDistributionPackages",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackages_getinstance_20240a51b6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackages_getInstance", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageVersions]", "fields[alternativeDistributionPackages]", "include", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackages_versions_gettomanyrelationship_d7d7b0db0f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackages_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackages/{id}/relationships/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_alternativedistributionpackages_versions_gettomanyrelated_ce05c305f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "alternativeDistributionPackages_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/alternativeDistributionPackages/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageDeltas]", "fields[alternativeDistributionPackageVariants]", "fields[alternativeDistributionPackageVersions]", "fields[alternativeDistributionPackages]", "filter[state]", "include", "limit", "limit[deltas]", "limit[variants]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportinstances_getinstance_6f9f9cd745: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportInstances_getInstance", method: "GET",
            pathTemplate: "/v1/analyticsReportInstances/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportInstances]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportinstances_segments_gettomanyrelationship_c618359c5e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportInstances_segments_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/analyticsReportInstances/{id}/relationships/segments",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportinstances_segments_gettomanyrelated_12c7ca6c53: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportInstances_segments_getToManyRelated", method: "GET",
            pathTemplate: "/v1/analyticsReportInstances/{id}/segments",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportSegments]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportrequests_createinstance_f55b98473a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportRequests_createInstance", method: "POST",
            pathTemplate: "/v1/analyticsReportRequests",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportrequests_deleteinstance_336a94bb71: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportRequests_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/analyticsReportRequests/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportrequests_getinstance_f5bad63442: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportRequests_getInstance", method: "GET",
            pathTemplate: "/v1/analyticsReportRequests/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportRequests]", "fields[analyticsReports]", "include", "limit[reports]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportrequests_reports_gettomanyrelationship_880459e481: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportRequests_reports_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/analyticsReportRequests/{id}/relationships/reports",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportrequests_reports_gettomanyrelated_e584ef55da: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportRequests_reports_getToManyRelated", method: "GET",
            pathTemplate: "/v1/analyticsReportRequests/{id}/reports",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReports]", "filter[category]", "filter[name]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreportsegments_getinstance_f2cbc76b93: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReportSegments_getInstance", method: "GET",
            pathTemplate: "/v1/analyticsReportSegments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportSegments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreports_getinstance_8a2752e21b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReports_getInstance", method: "GET",
            pathTemplate: "/v1/analyticsReports/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReports]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreports_instances_gettomanyrelated_32360aaac9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReports_instances_getToManyRelated", method: "GET",
            pathTemplate: "/v1/analyticsReports/{id}/instances",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportInstances]", "filter[granularity]", "filter[processingDate]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_analyticsreports_instances_gettomanyrelationship_127b45ca12: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "analyticsReports_instances_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/analyticsReports/{id}/relationships/instances",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_androidtoiosappmappingdetails_createinstance_0098aab47a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "androidToIosAppMappingDetails_createInstance", method: "POST",
            pathTemplate: "/v1/androidToIosAppMappingDetails",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_androidtoiosappmappingdetails_deleteinstance_8642d6d8d7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "androidToIosAppMappingDetails_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/androidToIosAppMappingDetails/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }
}

extension ASCClient {
    /// POST /v1/accessibilityDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_accessibilitydeclarations_createinstance_f6dde42bf9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_accessibilitydeclarations_createinstance_f6dde42bf9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/accessibilityDeclarations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_accessibilitydeclarations_deleteinstance_0b95df6cab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_accessibilitydeclarations_deleteinstance_0b95df6cab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/accessibilityDeclarations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_accessibilitydeclarations_getinstance_875a02c02e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_accessibilitydeclarations_getinstance_875a02c02e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/accessibilityDeclarations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_accessibilitydeclarations_updateinstance_a058dd6bd7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_accessibilitydeclarations_updateinstance_a058dd6bd7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/actors (raw transport response; no Codable guarantee).
    public func ascGenerated_actors_getcollection_741560f395(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_actors_getcollection_741560f395,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/actors/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_actors_getinstance_93cd931a20(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_actors_getinstance_93cd931a20,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/ageRatingDeclarations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ageratingdeclarations_updateinstance_67dc46a55f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ageratingdeclarations_updateinstance_67dc46a55f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionDomains (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributiondomains_getcollection_928a4e2466(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributiondomains_getcollection_928a4e2466,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/alternativeDistributionDomains (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributiondomains_createinstance_b35b0a322e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributiondomains_createinstance_b35b0a322e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/alternativeDistributionDomains/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributiondomains_deleteinstance_be98ed7d42(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributiondomains_deleteinstance_be98ed7d42,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionDomains/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributiondomains_getinstance_b795d05c2b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributiondomains_getinstance_b795d05c2b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionKeys (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionkeys_getcollection_eeef972647(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionkeys_getcollection_eeef972647,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/alternativeDistributionKeys (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionkeys_createinstance_e56eb87330(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionkeys_createinstance_e56eb87330,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/alternativeDistributionKeys/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionkeys_deleteinstance_4171d6ba17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionkeys_deleteinstance_4171d6ba17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionKeys/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionkeys_getinstance_8ea4241b47(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionkeys_getinstance_8ea4241b47,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageDeltas/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackagedeltas_getinstance_e46d3db35c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackagedeltas_getinstance_e46d3db35c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVariants/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackagevariants_getinstance_9c453922db(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackagevariants_getinstance_9c453922db,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackageversions_getinstance_8d8b699a34(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackageversions_getinstance_8d8b699a34,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVersions/{id}/deltas (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackageversions_deltas_gettomanyrelated_068e7b3e6c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackageversions_deltas_gettomanyrelated_068e7b3e6c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVersions/{id}/relationships/deltas (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackageversions_deltas_gettomanyrelationship_4b09b519e6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackageversions_deltas_gettomanyrelationship_4b09b519e6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVersions/{id}/relationships/variants (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackageversions_variants_gettomanyrelationship_859675ff65(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackageversions_variants_gettomanyrelationship_859675ff65,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackageVersions/{id}/variants (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackageversions_variants_gettomanyrelated_fce6e53665(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackageversions_variants_gettomanyrelated_fce6e53665,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/alternativeDistributionPackages (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackages_createinstance_ae12235d92(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackages_createinstance_ae12235d92,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackages_getinstance_20240a51b6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackages_getinstance_20240a51b6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackages/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackages_versions_gettomanyrelationship_d7d7b0db0f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackages_versions_gettomanyrelationship_d7d7b0db0f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/alternativeDistributionPackages/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_alternativedistributionpackages_versions_gettomanyrelated_ce05c305f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_alternativedistributionpackages_versions_gettomanyrelated_ce05c305f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportInstances/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportinstances_getinstance_6f9f9cd745(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportinstances_getinstance_6f9f9cd745,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportInstances/{id}/relationships/segments (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportinstances_segments_gettomanyrelationship_c618359c5e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportinstances_segments_gettomanyrelationship_c618359c5e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportInstances/{id}/segments (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportinstances_segments_gettomanyrelated_12c7ca6c53(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportinstances_segments_gettomanyrelated_12c7ca6c53,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/analyticsReportRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportrequests_createinstance_f55b98473a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportrequests_createinstance_f55b98473a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/analyticsReportRequests/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportrequests_deleteinstance_336a94bb71(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportrequests_deleteinstance_336a94bb71,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportRequests/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportrequests_getinstance_f5bad63442(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportrequests_getinstance_f5bad63442,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportRequests/{id}/relationships/reports (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportrequests_reports_gettomanyrelationship_880459e481(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportrequests_reports_gettomanyrelationship_880459e481,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportRequests/{id}/reports (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportrequests_reports_gettomanyrelated_e584ef55da(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportrequests_reports_gettomanyrelated_e584ef55da,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReportSegments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreportsegments_getinstance_f2cbc76b93(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreportsegments_getinstance_f2cbc76b93,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReports/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreports_getinstance_8a2752e21b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreports_getinstance_8a2752e21b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReports/{id}/instances (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreports_instances_gettomanyrelated_32360aaac9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreports_instances_gettomanyrelated_32360aaac9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/analyticsReports/{id}/relationships/instances (raw transport response; no Codable guarantee).
    public func ascGenerated_analyticsreports_instances_gettomanyrelationship_127b45ca12(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_analyticsreports_instances_gettomanyrelationship_127b45ca12,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/androidToIosAppMappingDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_androidtoiosappmappingdetails_createinstance_0098aab47a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_androidtoiosappmappingdetails_createinstance_0098aab47a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/androidToIosAppMappingDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_androidtoiosappmappingdetails_deleteinstance_8642d6d8d7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_androidtoiosappmappingdetails_deleteinstance_8642d6d8d7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
