// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_backgroundassets_createinstance_eb9bc544b3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "backgroundAssets_createInstance", method: "POST",
            pathTemplate: "/v1/backgroundAssets",
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

    public static var op_backgroundassets_getinstance_ca461373f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "backgroundAssets_getInstance", method: "GET",
            pathTemplate: "/v1/backgroundAssets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[backgroundAssetVersions]", "fields[backgroundAssets]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_backgroundassets_updateinstance_35184a5552: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "backgroundAssets_updateInstance", method: "PATCH",
            pathTemplate: "/v1/backgroundAssets/{id}",
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

    public static var op_backgroundassets_versions_gettomanyrelationship_05c02b42fc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "backgroundAssets_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/backgroundAssets/{id}/relationships/versions",
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

    public static var op_backgroundassets_versions_gettomanyrelated_ebf819f0a7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "backgroundAssets_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/backgroundAssets/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[backgroundAssetUploadFiles]", "fields[backgroundAssetVersionAppStoreReleases]", "fields[backgroundAssetVersionExternalBetaReleases]", "fields[backgroundAssetVersionInternalBetaReleases]", "fields[backgroundAssetVersions]", "fields[backgroundAssets]", "filter[appStoreRelease.state]", "filter[externalBetaRelease.state]", "filter[internalBetaRelease.state]", "filter[locale]", "filter[platforms]", "filter[state]", "filter[version]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappclipinvocationlocalizations_createinstance_6f3fb5d2e2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocationLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/betaAppClipInvocationLocalizations",
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

    public static var op_betaappclipinvocationlocalizations_deleteinstance_df81cceebb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocationLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaAppClipInvocationLocalizations/{id}",
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

    public static var op_betaappclipinvocationlocalizations_updateinstance_7bd51a9436: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocationLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaAppClipInvocationLocalizations/{id}",
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

    public static var op_betaappclipinvocations_createinstance_95af6b36ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocations_createInstance", method: "POST",
            pathTemplate: "/v1/betaAppClipInvocations",
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

    public static var op_betaappclipinvocations_deleteinstance_c163359e56: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaAppClipInvocations/{id}",
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

    public static var op_betaappclipinvocations_getinstance_4f3759858e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocations_getInstance", method: "GET",
            pathTemplate: "/v1/betaAppClipInvocations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppClipInvocationLocalizations]", "fields[betaAppClipInvocations]", "include", "limit[betaAppClipInvocationLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappclipinvocations_updateinstance_51f3fed048: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppClipInvocations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaAppClipInvocations/{id}",
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

    public static var op_betaapplocalizations_getcollection_ad4d3d11a5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_getCollection", method: "GET",
            pathTemplate: "/v1/betaAppLocalizations",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[betaAppLocalizations]", "filter[app]", "filter[locale]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaapplocalizations_createinstance_bd5f6594dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/betaAppLocalizations",
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

    public static var op_betaapplocalizations_deleteinstance_13eb12f2ef: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaAppLocalizations/{id}",
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

    public static var op_betaapplocalizations_getinstance_d99db843d8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/betaAppLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[betaAppLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaapplocalizations_updateinstance_ec1651e992: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaAppLocalizations/{id}",
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

    public static var op_betaapplocalizations_app_gettoonerelated_5fe6b6ee4d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaAppLocalizations/{id}/app",
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

    public static var op_betaapplocalizations_app_gettoonerelationship_6b073f0a20: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppLocalizations_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaAppLocalizations/{id}/relationships/app",
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

    public static var op_betaappreviewdetails_getcollection_f0e71c3a05: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewDetails_getCollection", method: "GET",
            pathTemplate: "/v1/betaAppReviewDetails",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[betaAppReviewDetails]", "filter[app]", "include", "limit"],
            requiredQueryParameterNames: ["filter[app]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappreviewdetails_getinstance_b7c5eb7ea1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewDetails_getInstance", method: "GET",
            pathTemplate: "/v1/betaAppReviewDetails/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[betaAppReviewDetails]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappreviewdetails_updateinstance_907fd788d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaAppReviewDetails/{id}",
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

    public static var op_betaappreviewdetails_app_gettoonerelated_468ace1464: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewDetails_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaAppReviewDetails/{id}/app",
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

    public static var op_betaappreviewdetails_app_gettoonerelationship_179b25a83a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewDetails_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaAppReviewDetails/{id}/relationships/app",
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

    public static var op_betaappreviewsubmissions_getcollection_1da55bd86d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewSubmissions_getCollection", method: "GET",
            pathTemplate: "/v1/betaAppReviewSubmissions",
            pathParameterNames: [],
            queryParameterNames: ["fields[betaAppReviewSubmissions]", "fields[builds]", "filter[betaReviewState]", "filter[build]", "include", "limit"],
            requiredQueryParameterNames: ["filter[build]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappreviewsubmissions_createinstance_cb4a31f284: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/betaAppReviewSubmissions",
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

    public static var op_betaappreviewsubmissions_getinstance_1b973e196e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewSubmissions_getInstance", method: "GET",
            pathTemplate: "/v1/betaAppReviewSubmissions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppReviewSubmissions]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappreviewsubmissions_build_gettoonerelated_68283a1cd8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewSubmissions_build_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaAppReviewSubmissions/{id}/build",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betaappreviewsubmissions_build_gettoonerelationship_d97716bb2a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaAppReviewSubmissions_build_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaAppReviewSubmissions/{id}/relationships/build",
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

    public static var op_betabuildlocalizations_getcollection_d9c0729f75: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_getCollection", method: "GET",
            pathTemplate: "/v1/betaBuildLocalizations",
            pathParameterNames: [],
            queryParameterNames: ["fields[betaBuildLocalizations]", "fields[builds]", "filter[build]", "filter[locale]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betabuildlocalizations_createinstance_8a4da29229: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/betaBuildLocalizations",
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

    public static var op_betabuildlocalizations_deleteinstance_1d022e8c3d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaBuildLocalizations/{id}",
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

    public static var op_betabuildlocalizations_getinstance_8cad58fdb7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/betaBuildLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaBuildLocalizations]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betabuildlocalizations_updateinstance_352884d5d7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/betaBuildLocalizations/{id}",
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

    public static var op_betabuildlocalizations_build_gettoonerelated_db064dea41: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_build_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaBuildLocalizations/{id}/build",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betabuildlocalizations_build_gettoonerelationship_62e5421899: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaBuildLocalizations_build_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/betaBuildLocalizations/{id}/relationships/build",
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

    public static var op_betacrashlogs_getinstance_3ab0bef99c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaCrashLogs_getInstance", method: "GET",
            pathTemplate: "/v1/betaCrashLogs/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaCrashLogs]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betafeedbackcrashsubmissions_deleteinstance_3d8527acec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackCrashSubmissions_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/betaFeedbackCrashSubmissions/{id}",
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

    public static var op_betafeedbackcrashsubmissions_getinstance_e0611eeb18: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackCrashSubmissions_getInstance", method: "GET",
            pathTemplate: "/v1/betaFeedbackCrashSubmissions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaFeedbackCrashSubmissions]", "fields[betaTesters]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betafeedbackcrashsubmissions_crashlog_gettoonerelated_b1e3e5a9dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaFeedbackCrashSubmissions_crashLog_getToOneRelated", method: "GET",
            pathTemplate: "/v1/betaFeedbackCrashSubmissions/{id}/crashLog",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaCrashLogs]"],
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
    /// POST /v1/backgroundAssets (raw transport response; no Codable guarantee).
    public func ascGenerated_backgroundassets_createinstance_eb9bc544b3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_backgroundassets_createinstance_eb9bc544b3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/backgroundAssets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_backgroundassets_getinstance_ca461373f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_backgroundassets_getinstance_ca461373f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/backgroundAssets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_backgroundassets_updateinstance_35184a5552(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_backgroundassets_updateinstance_35184a5552,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/backgroundAssets/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_backgroundassets_versions_gettomanyrelationship_05c02b42fc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_backgroundassets_versions_gettomanyrelationship_05c02b42fc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/backgroundAssets/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_backgroundassets_versions_gettomanyrelated_ebf819f0a7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_backgroundassets_versions_gettomanyrelated_ebf819f0a7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaAppClipInvocationLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocationlocalizations_createinstance_6f3fb5d2e2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocationlocalizations_createinstance_6f3fb5d2e2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaAppClipInvocationLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocationlocalizations_deleteinstance_df81cceebb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocationlocalizations_deleteinstance_df81cceebb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaAppClipInvocationLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocationlocalizations_updateinstance_7bd51a9436(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocationlocalizations_updateinstance_7bd51a9436,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaAppClipInvocations (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocations_createinstance_95af6b36ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocations_createinstance_95af6b36ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaAppClipInvocations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocations_deleteinstance_c163359e56(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocations_deleteinstance_c163359e56,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppClipInvocations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocations_getinstance_4f3759858e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocations_getinstance_4f3759858e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaAppClipInvocations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappclipinvocations_updateinstance_51f3fed048(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappclipinvocations_updateinstance_51f3fed048,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_getcollection_ad4d3d11a5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_getcollection_ad4d3d11a5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaAppLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_createinstance_bd5f6594dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_createinstance_bd5f6594dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaAppLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_deleteinstance_13eb12f2ef(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_deleteinstance_13eb12f2ef,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_getinstance_d99db843d8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_getinstance_d99db843d8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaAppLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_updateinstance_ec1651e992(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_updateinstance_ec1651e992,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppLocalizations/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_app_gettoonerelated_5fe6b6ee4d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_app_gettoonerelated_5fe6b6ee4d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppLocalizations/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betaapplocalizations_app_gettoonerelationship_6b073f0a20(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaapplocalizations_app_gettoonerelationship_6b073f0a20,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewdetails_getcollection_f0e71c3a05(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewdetails_getcollection_f0e71c3a05,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewdetails_getinstance_b7c5eb7ea1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewdetails_getinstance_b7c5eb7ea1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaAppReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewdetails_updateinstance_907fd788d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewdetails_updateinstance_907fd788d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewDetails/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewdetails_app_gettoonerelated_468ace1464(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewdetails_app_gettoonerelated_468ace1464,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewDetails/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewdetails_app_gettoonerelationship_179b25a83a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewdetails_app_gettoonerelationship_179b25a83a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewsubmissions_getcollection_1da55bd86d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewsubmissions_getcollection_1da55bd86d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaAppReviewSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewsubmissions_createinstance_cb4a31f284(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewsubmissions_createinstance_cb4a31f284,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewsubmissions_getinstance_1b973e196e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewsubmissions_getinstance_1b973e196e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewSubmissions/{id}/build (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewsubmissions_build_gettoonerelated_68283a1cd8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewsubmissions_build_gettoonerelated_68283a1cd8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaAppReviewSubmissions/{id}/relationships/build (raw transport response; no Codable guarantee).
    public func ascGenerated_betaappreviewsubmissions_build_gettoonerelationship_d97716bb2a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betaappreviewsubmissions_build_gettoonerelationship_d97716bb2a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaBuildLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_getcollection_d9c0729f75(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_getcollection_d9c0729f75,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaBuildLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_createinstance_8a4da29229(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_createinstance_8a4da29229,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaBuildLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_deleteinstance_1d022e8c3d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_deleteinstance_1d022e8c3d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaBuildLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_getinstance_8cad58fdb7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_getinstance_8cad58fdb7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/betaBuildLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_updateinstance_352884d5d7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_updateinstance_352884d5d7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaBuildLocalizations/{id}/build (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_build_gettoonerelated_db064dea41(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_build_gettoonerelated_db064dea41,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaBuildLocalizations/{id}/relationships/build (raw transport response; no Codable guarantee).
    public func ascGenerated_betabuildlocalizations_build_gettoonerelationship_62e5421899(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betabuildlocalizations_build_gettoonerelationship_62e5421899,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaCrashLogs/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betacrashlogs_getinstance_3ab0bef99c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betacrashlogs_getinstance_3ab0bef99c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaFeedbackCrashSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackcrashsubmissions_deleteinstance_3d8527acec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackcrashsubmissions_deleteinstance_3d8527acec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaFeedbackCrashSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackcrashsubmissions_getinstance_e0611eeb18(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackcrashsubmissions_getinstance_e0611eeb18,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaFeedbackCrashSubmissions/{id}/crashLog (raw transport response; no Codable guarantee).
    public func ascGenerated_betafeedbackcrashsubmissions_crashlog_gettoonerelated_b1e3e5a9dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betafeedbackcrashsubmissions_crashlog_gettoonerelated_b1e3e5a9dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
