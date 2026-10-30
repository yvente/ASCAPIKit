// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_ciworkflows_getinstance_74c1c3e167: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_getInstance", method: "GET",
            pathTemplate: "/v1/ciWorkflows/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciProducts]", "fields[ciWorkflows]", "fields[ciXcodeVersions]", "fields[scmRepositories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciworkflows_updateinstance_87cbe50192: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_updateInstance", method: "PATCH",
            pathTemplate: "/v1/ciWorkflows/{id}",
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

    public static var op_ciworkflows_buildruns_gettomanyrelated_f665b8fab9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_buildRuns_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciWorkflows/{id}/buildRuns",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]", "fields[ciBuildRuns]", "fields[ciProducts]", "fields[ciWorkflows]", "fields[scmGitReferences]", "fields[scmPullRequests]", "filter[builds]", "include", "limit", "limit[builds]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciworkflows_buildruns_gettomanyrelationship_3f525011cc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_buildRuns_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciWorkflows/{id}/relationships/buildRuns",
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

    public static var op_ciworkflows_repository_gettoonerelationship_e5e8bf297c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_repository_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/ciWorkflows/{id}/relationships/repository",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciworkflows_repository_gettoonerelated_b74503c1d8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_repository_getToOneRelated", method: "GET",
            pathTemplate: "/v1/ciWorkflows/{id}/repository",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmProviders]", "fields[scmRepositories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cixcodeversions_getcollection_1020c2aa1c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciXcodeVersions_getCollection", method: "GET",
            pathTemplate: "/v1/ciXcodeVersions",
            pathParameterNames: [],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit", "limit[macOsVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cixcodeversions_getinstance_cfb22091fe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciXcodeVersions_getInstance", method: "GET",
            pathTemplate: "/v1/ciXcodeVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit[macOsVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cixcodeversions_macosversions_gettomanyrelated_5b2d9b715e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciXcodeVersions_macOsVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciXcodeVersions/{id}/macOsVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit", "limit[xcodeVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cixcodeversions_macosversions_gettomanyrelationship_56c4981829: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciXcodeVersions_macOsVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciXcodeVersions/{id}/relationships/macOsVersions",
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

    public static var op_customerreviewresponses_createinstance_46dbf55a51: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviewResponses_createInstance", method: "POST",
            pathTemplate: "/v1/customerReviewResponses",
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

    public static var op_customerreviewresponses_deleteinstance_21638d0fab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviewResponses_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/customerReviewResponses/{id}",
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

    public static var op_customerreviewresponses_getinstance_5d2f412e6b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviewResponses_getInstance", method: "GET",
            pathTemplate: "/v1/customerReviewResponses/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[customerReviewResponses]", "fields[customerReviews]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_customerreviews_getinstance_fb337ceace: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviews_getInstance", method: "GET",
            pathTemplate: "/v1/customerReviews/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[customerReviewResponses]", "fields[customerReviews]", "fields[territories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_customerreviews_response_gettoonerelationship_9854c04805: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviews_response_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/customerReviews/{id}/relationships/response",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_customerreviews_response_gettoonerelated_033db1fccf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "customerReviews_response_getToOneRelated", method: "GET",
            pathTemplate: "/v1/customerReviews/{id}/response",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[customerReviewResponses]", "fields[customerReviews]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_devices_getcollection_53548eef97: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "devices_getCollection", method: "GET",
            pathTemplate: "/v1/devices",
            pathParameterNames: [],
            queryParameterNames: ["fields[devices]", "filter[id]", "filter[name]", "filter[platform]", "filter[status]", "filter[udid]", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_devices_createinstance_617e6506d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "devices_createInstance", method: "POST",
            pathTemplate: "/v1/devices",
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

    public static var op_devices_getinstance_ae71064355: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "devices_getInstance", method: "GET",
            pathTemplate: "/v1/devices/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[devices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_devices_updateinstance_e957b0dbdf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "devices_updateInstance", method: "PATCH",
            pathTemplate: "/v1/devices/{id}",
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

    public static var op_diagnosticsignatures_logs_gettomanyrelated_a00d23615c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "diagnosticSignatures_logs_getToManyRelated", method: "GET",
            pathTemplate: "/v1/diagnosticSignatures/{id}/logs",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/vnd.apple.diagnostic-logs+json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_endappavailabilitypreorders_createinstance_eb32485a6b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endAppAvailabilityPreOrders_createInstance", method: "POST",
            pathTemplate: "/v1/endAppAvailabilityPreOrders",
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

    public static var op_enduserlicenseagreements_createinstance_12eea5b959: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_createInstance", method: "POST",
            pathTemplate: "/v1/endUserLicenseAgreements",
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

    public static var op_enduserlicenseagreements_deleteinstance_63089c3b08: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/endUserLicenseAgreements/{id}",
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

    public static var op_enduserlicenseagreements_getinstance_8d0e418cda: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_getInstance", method: "GET",
            pathTemplate: "/v1/endUserLicenseAgreements/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[endUserLicenseAgreements]", "fields[territories]", "include", "limit[territories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_enduserlicenseagreements_updateinstance_2f07498be9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_updateInstance", method: "PATCH",
            pathTemplate: "/v1/endUserLicenseAgreements/{id}",
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

    public static var op_enduserlicenseagreements_territories_gettomanyrelationship_3952fea77e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_territories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/endUserLicenseAgreements/{id}/relationships/territories",
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

    public static var op_enduserlicenseagreements_territories_gettomanyrelated_ecfa130981: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "endUserLicenseAgreements_territories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/endUserLicenseAgreements/{id}/territories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_financereports_getcollection_0a287b45f7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "financeReports_getCollection", method: "GET",
            pathTemplate: "/v1/financeReports",
            pathParameterNames: [],
            queryParameterNames: ["filter[regionCode]", "filter[reportDate]", "filter[reportType]", "filter[vendorNumber]"],
            requiredQueryParameterNames: ["filter[regionCode]", "filter[reportDate]", "filter[reportType]", "filter[vendorNumber]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/a-gzip"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementimages_createinstance_d8efd79502: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImages_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterAchievementImages",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementimages_deleteinstance_0b1b1171ed: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterAchievementImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementimages_getinstance_3e6692d0e4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImages_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementimages_updateinstance_e8e69710a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterAchievementImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_createinstance_e86b0d98fa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterAchievementLocalizations",
            pathParameterNames: [],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_deleteinstance_fcf48d560f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_getinstance_8f21ab6c34: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievements]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_updateinstance_4073ad33aa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelated_9ee98cc723: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_gameCenterAchievement_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "include", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_b59670ede1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_gameCenterAchievementImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelations_9cff731002: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_gameCenterAchievement_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievement",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }
}

extension ASCClient {
    /// GET /v1/ciWorkflows/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_getinstance_74c1c3e167(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_getinstance_74c1c3e167,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/ciWorkflows/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_updateinstance_87cbe50192(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_updateinstance_87cbe50192,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciWorkflows/{id}/buildRuns (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_buildruns_gettomanyrelated_f665b8fab9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_buildruns_gettomanyrelated_f665b8fab9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciWorkflows/{id}/relationships/buildRuns (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_buildruns_gettomanyrelationship_3f525011cc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_buildruns_gettomanyrelationship_3f525011cc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciWorkflows/{id}/relationships/repository (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_repository_gettoonerelationship_e5e8bf297c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_repository_gettoonerelationship_e5e8bf297c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciWorkflows/{id}/repository (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_repository_gettoonerelated_b74503c1d8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_repository_gettoonerelated_b74503c1d8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciXcodeVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cixcodeversions_getcollection_1020c2aa1c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cixcodeversions_getcollection_1020c2aa1c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciXcodeVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_cixcodeversions_getinstance_cfb22091fe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cixcodeversions_getinstance_cfb22091fe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciXcodeVersions/{id}/macOsVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cixcodeversions_macosversions_gettomanyrelated_5b2d9b715e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cixcodeversions_macosversions_gettomanyrelated_5b2d9b715e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciXcodeVersions/{id}/relationships/macOsVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cixcodeversions_macosversions_gettomanyrelationship_56c4981829(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cixcodeversions_macosversions_gettomanyrelationship_56c4981829,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/customerReviewResponses (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviewresponses_createinstance_46dbf55a51(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviewresponses_createinstance_46dbf55a51,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/customerReviewResponses/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviewresponses_deleteinstance_21638d0fab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviewresponses_deleteinstance_21638d0fab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/customerReviewResponses/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviewresponses_getinstance_5d2f412e6b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviewresponses_getinstance_5d2f412e6b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/customerReviews/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviews_getinstance_fb337ceace(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviews_getinstance_fb337ceace,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/customerReviews/{id}/relationships/response (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviews_response_gettoonerelationship_9854c04805(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviews_response_gettoonerelationship_9854c04805,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/customerReviews/{id}/response (raw transport response; no Codable guarantee).
    public func ascGenerated_customerreviews_response_gettoonerelated_033db1fccf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_customerreviews_response_gettoonerelated_033db1fccf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/devices (raw transport response; no Codable guarantee).
    public func ascGenerated_devices_getcollection_53548eef97(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_devices_getcollection_53548eef97,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/devices (raw transport response; no Codable guarantee).
    public func ascGenerated_devices_createinstance_617e6506d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_devices_createinstance_617e6506d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/devices/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_devices_getinstance_ae71064355(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_devices_getinstance_ae71064355,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/devices/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_devices_updateinstance_e957b0dbdf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_devices_updateinstance_e957b0dbdf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/diagnosticSignatures/{id}/logs (raw transport response; no Codable guarantee).
    public func ascGenerated_diagnosticsignatures_logs_gettomanyrelated_a00d23615c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_diagnosticsignatures_logs_gettomanyrelated_a00d23615c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/endAppAvailabilityPreOrders (raw transport response; no Codable guarantee).
    public func ascGenerated_endappavailabilitypreorders_createinstance_eb32485a6b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_endappavailabilitypreorders_createinstance_eb32485a6b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/endUserLicenseAgreements (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_createinstance_12eea5b959(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_createinstance_12eea5b959,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/endUserLicenseAgreements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_deleteinstance_63089c3b08(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_deleteinstance_63089c3b08,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/endUserLicenseAgreements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_getinstance_8d0e418cda(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_getinstance_8d0e418cda,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/endUserLicenseAgreements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_updateinstance_2f07498be9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_updateinstance_2f07498be9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/endUserLicenseAgreements/{id}/relationships/territories (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_territories_gettomanyrelationship_3952fea77e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_territories_gettomanyrelationship_3952fea77e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/endUserLicenseAgreements/{id}/territories (raw transport response; no Codable guarantee).
    public func ascGenerated_enduserlicenseagreements_territories_gettomanyrelated_ecfa130981(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_enduserlicenseagreements_territories_gettomanyrelated_ecfa130981,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/financeReports (raw transport response; no Codable guarantee).
    public func ascGenerated_financereports_getcollection_0a287b45f7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_financereports_getcollection_0a287b45f7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAchievementImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimages_createinstance_d8efd79502(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimages_createinstance_d8efd79502,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimages_deleteinstance_0b1b1171ed(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimages_deleteinstance_0b1b1171ed,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimages_getinstance_3e6692d0e4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimages_getinstance_3e6692d0e4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimages_updateinstance_e8e69710a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimages_updateinstance_e8e69710a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAchievementLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_createinstance_e86b0d98fa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_createinstance_e86b0d98fa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_deleteinstance_fcf48d560f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_deleteinstance_fcf48d560f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_getinstance_8f21ab6c34(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_getinstance_8f21ab6c34,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_updateinstance_4073ad33aa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_updateinstance_4073ad33aa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievement (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelated_9ee98cc723(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelated_9ee98cc723,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_b59670ede1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_b59670ede1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievement (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelations_9cff731002(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_gamecenterachievement_gettoonerelations_9cff731002,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
