// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_betafeedbackcrashsubmissions_crashlog_gettoonerelationship_114d0b4c06: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackCrashSubmissions_crashLog_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaFeedbackCrashSubmissions/{id}/relationships/crashLog",
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

    public static var op_betafeedbackscreenshotsubmissions_deleteinstance_e5812d6b00: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackScreenshotSubmissions_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaFeedbackScreenshotSubmissions/{id}",
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

    public static var op_betafeedbackscreenshotsubmissions_getinstance_daf379c43d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackScreenshotSubmissions_getInstance", method: "GET",
            pathTemplate: "/v1/betaFeedbackScreenshotSubmissions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaFeedbackScreenshotSubmissions]", "fields[betaTesters]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_getcollection_16cb9840d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_getCollection", method: "GET",
            pathTemplate: "/v1/betaGroups",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[betaGroups]", "fields[betaRecruitmentCriteria]", "fields[betaTesters]", "fields[builds]", "filter[app]", "filter[builds]", "filter[id]", "filter[isInternalGroup]", "filter[name]", "filter[publicLinkEnabled]", "filter[publicLinkLimitEnabled]", "filter[publicLink]", "include", "limit", "limit[betaTesters]", "limit[builds]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_createinstance_acda1c6176: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_createInstance", method: "POST",
            pathTemplate: "/v1/betaGroups",
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

    public static var op_betagroups_deleteinstance_b9a0896583: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaGroups/{id}",
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

    public static var op_betagroups_getinstance_5548e599e4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_getInstance", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[betaGroups]", "fields[betaRecruitmentCriteria]", "fields[betaTesters]", "fields[builds]", "include", "limit[betaTesters]", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_updateinstance_9c6ca678e1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaGroups/{id}",
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

    public static var op_betagroups_app_gettoonerelated_0d0598e480: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/app",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_betarecruitmentcriteria_gettoonerelated_a9dbf34bac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaRecruitmentCriteria_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/betaRecruitmentCriteria",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaRecruitmentCriteria]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelated_40cf5d34aa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaRecruitmentCriterionCompatibleBuildCheck_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/betaRecruitmentCriterionCompatibleBuildCheck",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaRecruitmentCriterionCompatibleBuildChecks]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_betatesters_gettomanyrelated_5387bced6a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaTesters_getToManyRelated", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/betaTesters",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaTesters]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_builds_gettomanyrelated_5880f24a6c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_builds_getToManyRelated", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/builds",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_betatesterusages_getmetrics_20d4dcb8f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaTesterUsages_getMetrics", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/metrics/betaTesterUsages",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[betaTesters]", "groupBy", "limit", "period"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_publiclinkusages_getmetrics_b2b95d0dc3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_publicLinkUsages_getMetrics", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/metrics/publicLinkUsages",
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

    public static var op_betagroups_app_gettoonerelationship_9ec4e68782: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/relationships/app",
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

    public static var op_betagroups_betarecruitmentcriteria_gettoonerelationship_848f4922bd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaRecruitmentCriteria_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/relationships/betaRecruitmentCriteria",
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

    public static var op_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelationsh_4b396b710b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaRecruitmentCriterionCompatibleBuildCheck_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/relationships/betaRecruitmentCriterionCompatibleBuildCheck",
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

    public static var op_betagroups_betatesters_deletetomanyrelationship_afa86b7dad: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaTesters_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/betaGroups/{id}/relationships/betaTesters",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_betatesters_gettomanyrelationship_5d695ccf4e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaTesters_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/relationships/betaTesters",
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

    public static var op_betagroups_betatesters_createtomanyrelationship_f4c17169e0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_betaTesters_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/betaGroups/{id}/relationships/betaTesters",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_builds_deletetomanyrelationship_4851008b99: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_builds_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/betaGroups/{id}/relationships/builds",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betagroups_builds_gettomanyrelationship_64987e7066: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_builds_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/betaGroups/{id}/relationships/builds",
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

    public static var op_betagroups_builds_createtomanyrelationship_90523c255a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaGroups_builds_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/betaGroups/{id}/relationships/builds",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betalicenseagreements_getcollection_ec0478c358: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaLicenseAgreements_getCollection", method: "GET",
            pathTemplate: "/v1/betaLicenseAgreements",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[betaLicenseAgreements]", "filter[app]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betalicenseagreements_getinstance_1bb21ec619: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaLicenseAgreements_getInstance", method: "GET",
            pathTemplate: "/v1/betaLicenseAgreements/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[betaLicenseAgreements]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betalicenseagreements_updateinstance_d1c9027413: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaLicenseAgreements_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaLicenseAgreements/{id}",
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

    public static var op_betalicenseagreements_app_gettoonerelated_648868d6b2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaLicenseAgreements_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaLicenseAgreements/{id}/app",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betalicenseagreements_app_gettoonerelationship_1d84c0d207: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaLicenseAgreements_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaLicenseAgreements/{id}/relationships/app",
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

    public static var op_betarecruitmentcriteria_createinstance_588abcf9dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaRecruitmentCriteria_createInstance", method: "POST",
            pathTemplate: "/v1/betaRecruitmentCriteria",
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

    public static var op_betarecruitmentcriteria_deleteinstance_88ac703305: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaRecruitmentCriteria_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaRecruitmentCriteria/{id}",
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

    public static var op_betarecruitmentcriteria_updateinstance_ce56d13b17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaRecruitmentCriteria_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaRecruitmentCriteria/{id}",
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

    public static var op_betarecruitmentcriterionoptions_getcollection_382324971e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaRecruitmentCriterionOptions_getCollection", method: "GET",
            pathTemplate: "/v1/betaRecruitmentCriterionOptions",
            pathParameterNames: [],
            queryParameterNames: ["fields[betaRecruitmentCriterionOptions]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betatesterinvitations_createinstance_00568fa209: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesterInvitations_createInstance", method: "POST",
            pathTemplate: "/v1/betaTesterInvitations",
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

    public static var op_betatesters_getcollection_b63dc5ad90: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_getCollection", method: "GET",
            pathTemplate: "/v1/betaTesters",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[betaGroups]", "fields[betaTesters]", "fields[builds]", "filter[apps]", "filter[betaGroups]", "filter[builds]", "filter[email]", "filter[firstName]", "filter[id]", "filter[inviteType]", "filter[lastName]", "include", "limit", "limit[apps]", "limit[betaGroups]", "limit[builds]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betatesters_createinstance_1f0a1bd206: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_createInstance", method: "POST",
            pathTemplate: "/v1/betaTesters",
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

    public static var op_betatesters_deleteinstance_f50d0aee14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaTesters/{id}",
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

    public static var op_betatesters_getinstance_3a3d7a78b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_getInstance", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[betaGroups]", "fields[betaTesters]", "fields[builds]", "include", "limit[apps]", "limit[betaGroups]", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betatesters_apps_gettomanyrelated_e4641ee3ad: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_apps_getToManyRelated", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/apps",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betatesters_betagroups_gettomanyrelated_4547553a67: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_betaGroups_getToManyRelated", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/betaGroups",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaGroups]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }
}

extension ASCClient {
    /// GET /v1/betaFeedbackCrashSubmissions/{id}/relationships/crashLog (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackcrashsubmissions_crashlog_gettoonerelationship_114d0b4c06(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackcrashsubmissions_crashlog_gettoonerelationship_114d0b4c06,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaFeedbackScreenshotSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackscreenshotsubmissions_deleteinstance_e5812d6b00(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackscreenshotsubmissions_deleteinstance_e5812d6b00,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaFeedbackScreenshotSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackscreenshotsubmissions_getinstance_daf379c43d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackscreenshotsubmissions_getinstance_daf379c43d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_getcollection_16cb9840d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_getcollection_16cb9840d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_createinstance_acda1c6176(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_createinstance_acda1c6176,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_deleteinstance_b9a0896583(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_deleteinstance_b9a0896583,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_getinstance_5548e599e4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_getinstance_5548e599e4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_updateinstance_9c6ca678e1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_updateinstance_9c6ca678e1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_app_gettoonerelated_0d0598e480(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_app_gettoonerelated_0d0598e480,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/betaRecruitmentCriteria (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betarecruitmentcriteria_gettoonerelated_a9dbf34bac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betarecruitmentcriteria_gettoonerelated_a9dbf34bac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/betaRecruitmentCriterionCompatibleBuildCheck (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelated_40cf5d34aa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelated_40cf5d34aa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betatesters_gettomanyrelated_5387bced6a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betatesters_gettomanyrelated_5387bced6a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_builds_gettomanyrelated_5880f24a6c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_builds_gettomanyrelated_5880f24a6c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/metrics/betaTesterUsages (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betatesterusages_getmetrics_20d4dcb8f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betatesterusages_getmetrics_20d4dcb8f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/metrics/publicLinkUsages (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_publiclinkusages_getmetrics_b2b95d0dc3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_publiclinkusages_getmetrics_b2b95d0dc3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_app_gettoonerelationship_9ec4e68782(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_app_gettoonerelationship_9ec4e68782,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/relationships/betaRecruitmentCriteria (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betarecruitmentcriteria_gettoonerelationship_848f4922bd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betarecruitmentcriteria_gettoonerelationship_848f4922bd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/relationships/betaRecruitmentCriterionCompatibleBuildCheck (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelationsh_4b396b710b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betarecruitmentcriterioncompatiblebuildcheck_gettoonerelationsh_4b396b710b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaGroups/{id}/relationships/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betatesters_deletetomanyrelationship_afa86b7dad(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betatesters_deletetomanyrelationship_afa86b7dad,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/relationships/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betatesters_gettomanyrelationship_5d695ccf4e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betatesters_gettomanyrelationship_5d695ccf4e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaGroups/{id}/relationships/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_betatesters_createtomanyrelationship_f4c17169e0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_betatesters_createtomanyrelationship_f4c17169e0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaGroups/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_builds_deletetomanyrelationship_4851008b99(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_builds_deletetomanyrelationship_4851008b99,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaGroups/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_builds_gettomanyrelationship_64987e7066(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_builds_gettomanyrelationship_64987e7066,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaGroups/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betagroups_builds_createtomanyrelationship_90523c255a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betagroups_builds_createtomanyrelationship_90523c255a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaLicenseAgreements (raw transport response; no Codable guarantee).
    public func ascGenerated_betalicenseagreements_getcollection_ec0478c358(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betalicenseagreements_getcollection_ec0478c358,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaLicenseAgreements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betalicenseagreements_getinstance_1bb21ec619(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betalicenseagreements_getinstance_1bb21ec619,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaLicenseAgreements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betalicenseagreements_updateinstance_d1c9027413(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betalicenseagreements_updateinstance_d1c9027413,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaLicenseAgreements/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betalicenseagreements_app_gettoonerelated_648868d6b2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betalicenseagreements_app_gettoonerelated_648868d6b2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaLicenseAgreements/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betalicenseagreements_app_gettoonerelationship_1d84c0d207(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betalicenseagreements_app_gettoonerelationship_1d84c0d207,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaRecruitmentCriteria (raw transport response; no Codable guarantee).
    public func ascGenerated_betarecruitmentcriteria_createinstance_588abcf9dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betarecruitmentcriteria_createinstance_588abcf9dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaRecruitmentCriteria/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betarecruitmentcriteria_deleteinstance_88ac703305(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betarecruitmentcriteria_deleteinstance_88ac703305,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaRecruitmentCriteria/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betarecruitmentcriteria_updateinstance_ce56d13b17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betarecruitmentcriteria_updateinstance_ce56d13b17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaRecruitmentCriterionOptions (raw transport response; no Codable guarantee).
    public func ascGenerated_betarecruitmentcriterionoptions_getcollection_382324971e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betarecruitmentcriterionoptions_getcollection_382324971e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaTesterInvitations (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesterinvitations_createinstance_00568fa209(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesterinvitations_createinstance_00568fa209,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_getcollection_b63dc5ad90(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_getcollection_b63dc5ad90,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_createinstance_1f0a1bd206(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_createinstance_1f0a1bd206,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaTesters/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_deleteinstance_f50d0aee14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_deleteinstance_f50d0aee14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_getinstance_3a3d7a78b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_getinstance_3a3d7a78b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/apps (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_apps_gettomanyrelated_e4641ee3ad(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_apps_gettomanyrelated_e4641ee3ad,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_betagroups_gettomanyrelated_4547553a67(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_betagroups_gettomanyrelated_4547553a67,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
