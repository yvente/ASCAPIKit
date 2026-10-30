// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_betatesters_builds_gettomanyrelated_8db07855e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_builds_getToManyRelated", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/builds",
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

    public static var op_betatesters_betatesterusages_getmetrics_3345eaeac9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_betaTesterUsages_getMetrics", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/metrics/betaTesterUsages",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[apps]", "limit", "period"],
            requiredQueryParameterNames: ["filter[apps]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_betatesters_apps_deletetomanyrelationship_296b2629de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_apps_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/betaTesters/{id}/relationships/apps",
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

    public static var op_betatesters_apps_gettomanyrelationship_59c94f08d2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_apps_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/relationships/apps",
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

    public static var op_betatesters_betagroups_deletetomanyrelationship_54ac82ec5a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_betaGroups_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/betaTesters/{id}/relationships/betaGroups",
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

    public static var op_betatesters_betagroups_gettomanyrelationship_1d9c753727: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_betaGroups_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/relationships/betaGroups",
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

    public static var op_betatesters_betagroups_createtomanyrelationship_e0f36e5854: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_betaGroups_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/betaTesters/{id}/relationships/betaGroups",
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

    public static var op_betatesters_builds_deletetomanyrelationship_a8d180d173: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_builds_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/betaTesters/{id}/relationships/builds",
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

    public static var op_betatesters_builds_gettomanyrelationship_98a80a868d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_builds_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/betaTesters/{id}/relationships/builds",
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

    public static var op_betatesters_builds_createtomanyrelationship_877fb0244d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "betaTesters_builds_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/betaTesters/{id}/relationships/builds",
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

    public static var op_buildbetadetails_getcollection_0e8f49b4d2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaDetails_getCollection", method: "GET",
            pathTemplate: "/v1/buildBetaDetails",
            pathParameterNames: [],
            queryParameterNames: ["fields[buildBetaDetails]", "fields[builds]", "filter[build]", "filter[id]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbetadetails_getinstance_8c5a08ae5f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaDetails_getInstance", method: "GET",
            pathTemplate: "/v1/buildBetaDetails/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildBetaDetails]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbetadetails_updateinstance_c5e07b974d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/buildBetaDetails/{id}",
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

    public static var op_buildbetadetails_build_gettoonerelated_95f80b8881: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaDetails_build_getToOneRelated", method: "GET",
            pathTemplate: "/v1/buildBetaDetails/{id}/build",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarations]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppReviewSubmissions]", "fields[betaBuildLocalizations]", "fields[betaGroups]", "fields[betaTesters]", "fields[buildBetaDetails]", "fields[buildBundles]", "fields[buildIcons]", "fields[buildUploads]", "fields[builds]", "fields[preReleaseVersions]", "include", "limit[betaBuildLocalizations]", "limit[betaGroups]", "limit[buildBundles]", "limit[icons]", "limit[individualTesters]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbetadetails_build_gettoonerelationship_db6211c68c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaDetails_build_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/buildBetaDetails/{id}/relationships/build",
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

    public static var op_buildbetanotifications_createinstance_ac60aae3dc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBetaNotifications_createInstance", method: "POST",
            pathTemplate: "/v1/buildBetaNotifications",
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

    public static var op_buildbundles_appclipdomaincachestatus_gettoonerelated_1cfbdefa65: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_appClipDomainCacheStatus_getToOneRelated", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/appClipDomainCacheStatus",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDomainStatuses]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbundles_appclipdomaindebugstatus_gettoonerelated_ec3b1e9e1e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_appClipDomainDebugStatus_getToOneRelated", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/appClipDomainDebugStatus",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDomainStatuses]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbundles_betaappclipinvocations_gettomanyrelated_86770e4db0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_betaAppClipInvocations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/betaAppClipInvocations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppClipInvocationLocalizations]", "fields[betaAppClipInvocations]", "include", "limit", "limit[betaAppClipInvocationLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbundles_buildbundlefilesizes_gettomanyrelated_c6db543750: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_buildBundleFileSizes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/buildBundleFileSizes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildBundleFileSizes]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_buildbundles_appclipdomaincachestatus_gettoonerelationship_b0e677e9ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_appClipDomainCacheStatus_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/relationships/appClipDomainCacheStatus",
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

    public static var op_buildbundles_appclipdomaindebugstatus_gettoonerelationship_58f9d18bde: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_appClipDomainDebugStatus_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/relationships/appClipDomainDebugStatus",
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

    public static var op_buildbundles_betaappclipinvocations_gettomanyrelationship_27762502e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_betaAppClipInvocations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/relationships/betaAppClipInvocations",
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

    public static var op_buildbundles_buildbundlefilesizes_gettomanyrelationship_ed40228d07: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildBundles_buildBundleFileSizes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/buildBundles/{id}/relationships/buildBundleFileSizes",
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

    public static var op_builduploadfiles_createinstance_f69f518938: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploadFiles_createInstance", method: "POST",
            pathTemplate: "/v1/buildUploadFiles",
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

    public static var op_builduploadfiles_getinstance_74c13fe3ed: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploadFiles_getInstance", method: "GET",
            pathTemplate: "/v1/buildUploadFiles/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildUploadFiles]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builduploadfiles_updateinstance_6c30ec94e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploadFiles_updateInstance", method: "PATCH",
            pathTemplate: "/v1/buildUploadFiles/{id}",
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

    public static var op_builduploads_createinstance_19dd19f5a8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploads_createInstance", method: "POST",
            pathTemplate: "/v1/buildUploads",
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

    public static var op_builduploads_deleteinstance_43f957766c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploads_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/buildUploads/{id}",
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

    public static var op_builduploads_getinstance_41544a4c14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploads_getInstance", method: "GET",
            pathTemplate: "/v1/buildUploads/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildUploadFiles]", "fields[buildUploads]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builduploads_builduploadfiles_gettomanyrelated_860a02b7c5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploads_buildUploadFiles_getToManyRelated", method: "GET",
            pathTemplate: "/v1/buildUploads/{id}/buildUploadFiles",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildUploadFiles]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builduploads_builduploadfiles_gettomanyrelationship_3205495b08: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "buildUploads_buildUploadFiles_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/buildUploads/{id}/relationships/buildUploadFiles",
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

    public static var op_builds_getcollection_61105ba4d9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_getCollection", method: "GET",
            pathTemplate: "/v1/builds",
            pathParameterNames: [],
            queryParameterNames: ["exists[usesNonExemptEncryption]", "fields[appEncryptionDeclarations]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppReviewSubmissions]", "fields[betaBuildLocalizations]", "fields[betaGroups]", "fields[betaTesters]", "fields[buildBetaDetails]", "fields[buildBundles]", "fields[buildIcons]", "fields[buildUploads]", "fields[builds]", "fields[preReleaseVersions]", "filter[appStoreVersion]", "filter[app]", "filter[betaAppReviewSubmission.betaReviewState]", "filter[betaGroups]", "filter[buildAudienceType]", "filter[expired]", "filter[id]", "filter[preReleaseVersion.platform]", "filter[preReleaseVersion.version]", "filter[preReleaseVersion]", "filter[processingState]", "filter[usesNonExemptEncryption]", "filter[version]", "include", "limit", "limit[betaBuildLocalizations]", "limit[betaGroups]", "limit[buildBundles]", "limit[icons]", "limit[individualTesters]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_getinstance_7dc1abefc9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_getInstance", method: "GET",
            pathTemplate: "/v1/builds/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarations]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppReviewSubmissions]", "fields[betaBuildLocalizations]", "fields[betaGroups]", "fields[betaTesters]", "fields[buildBetaDetails]", "fields[buildBundles]", "fields[buildIcons]", "fields[buildUploads]", "fields[builds]", "fields[preReleaseVersions]", "include", "limit[betaBuildLocalizations]", "limit[betaGroups]", "limit[buildBundles]", "limit[icons]", "limit[individualTesters]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_updateinstance_f9f0cc74a5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_updateInstance", method: "PATCH",
            pathTemplate: "/v1/builds/{id}",
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

    public static var op_builds_app_gettoonerelated_6d8e08eca6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/app",
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

    public static var op_builds_appencryptiondeclaration_gettoonerelated_058487f237: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_appEncryptionDeclaration_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/appEncryptionDeclaration",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_appstoreversion_gettoonerelated_c5640416e6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_appStoreVersion_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/appStoreVersion",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackages]", "fields[appClipDefaultExperiences]", "fields[appStoreReviewDetails]", "fields[appStoreVersionExperiments]", "fields[appStoreVersionLocalizations]", "fields[appStoreVersionPhasedReleases]", "fields[appStoreVersionSubmissions]", "fields[appStoreVersions]", "fields[apps]", "fields[builds]", "fields[gameCenterAppVersions]", "fields[routingAppCoverages]", "include", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersionExperiments]", "limit[appStoreVersionLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_betaappreviewsubmission_gettoonerelated_427b48384c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaAppReviewSubmission_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/betaAppReviewSubmission",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppReviewSubmissions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_betabuildlocalizations_gettomanyrelated_018876d41b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaBuildLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/betaBuildLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaBuildLocalizations]", "limit"],
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
    /// GET /v1/betaTesters/{id}/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_builds_gettomanyrelated_8db07855e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_builds_gettomanyrelated_8db07855e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/metrics/betaTesterUsages (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_betatesterusages_getmetrics_3345eaeac9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_betatesterusages_getmetrics_3345eaeac9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaTesters/{id}/relationships/apps (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_apps_deletetomanyrelationship_296b2629de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_apps_deletetomanyrelationship_296b2629de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/relationships/apps (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_apps_gettomanyrelationship_59c94f08d2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_apps_gettomanyrelationship_59c94f08d2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaTesters/{id}/relationships/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_betagroups_deletetomanyrelationship_54ac82ec5a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_betagroups_deletetomanyrelationship_54ac82ec5a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/relationships/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_betagroups_gettomanyrelationship_1d9c753727(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_betagroups_gettomanyrelationship_1d9c753727,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaTesters/{id}/relationships/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_betagroups_createtomanyrelationship_e0f36e5854(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_betagroups_createtomanyrelationship_e0f36e5854,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/betaTesters/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_builds_deletetomanyrelationship_a8d180d173(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_builds_deletetomanyrelationship_a8d180d173,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/betaTesters/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_builds_gettomanyrelationship_98a80a868d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_builds_gettomanyrelationship_98a80a868d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/betaTesters/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_betatesters_builds_createtomanyrelationship_877fb0244d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_betatesters_builds_createtomanyrelationship_877fb0244d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBetaDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetadetails_getcollection_0e8f49b4d2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetadetails_getcollection_0e8f49b4d2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBetaDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetadetails_getinstance_8c5a08ae5f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetadetails_getinstance_8c5a08ae5f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/buildBetaDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetadetails_updateinstance_c5e07b974d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetadetails_updateinstance_c5e07b974d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBetaDetails/{id}/build (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetadetails_build_gettoonerelated_95f80b8881(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetadetails_build_gettoonerelated_95f80b8881,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBetaDetails/{id}/relationships/build (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetadetails_build_gettoonerelationship_db6211c68c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetadetails_build_gettoonerelationship_db6211c68c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/buildBetaNotifications (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbetanotifications_createinstance_ac60aae3dc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbetanotifications_createinstance_ac60aae3dc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/appClipDomainCacheStatus (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_appclipdomaincachestatus_gettoonerelated_1cfbdefa65(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_appclipdomaincachestatus_gettoonerelated_1cfbdefa65,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/appClipDomainDebugStatus (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_appclipdomaindebugstatus_gettoonerelated_ec3b1e9e1e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_appclipdomaindebugstatus_gettoonerelated_ec3b1e9e1e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/betaAppClipInvocations (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_betaappclipinvocations_gettomanyrelated_86770e4db0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_betaappclipinvocations_gettomanyrelated_86770e4db0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/buildBundleFileSizes (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_buildbundlefilesizes_gettomanyrelated_c6db543750(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_buildbundlefilesizes_gettomanyrelated_c6db543750,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/relationships/appClipDomainCacheStatus (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_appclipdomaincachestatus_gettoonerelationship_b0e677e9ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_appclipdomaincachestatus_gettoonerelationship_b0e677e9ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/relationships/appClipDomainDebugStatus (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_appclipdomaindebugstatus_gettoonerelationship_58f9d18bde(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_appclipdomaindebugstatus_gettoonerelationship_58f9d18bde,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/relationships/betaAppClipInvocations (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_betaappclipinvocations_gettomanyrelationship_27762502e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_betaappclipinvocations_gettomanyrelationship_27762502e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildBundles/{id}/relationships/buildBundleFileSizes (raw transport response; no Codable guarantee).
    public func ascGenerated_buildbundles_buildbundlefilesizes_gettomanyrelationship_ed40228d07(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_buildbundles_buildbundlefilesizes_gettomanyrelationship_ed40228d07,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/buildUploadFiles (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploadfiles_createinstance_f69f518938(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploadfiles_createinstance_f69f518938,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildUploadFiles/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploadfiles_getinstance_74c13fe3ed(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploadfiles_getinstance_74c13fe3ed,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/buildUploadFiles/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploadfiles_updateinstance_6c30ec94e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploadfiles_updateinstance_6c30ec94e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/buildUploads (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploads_createinstance_19dd19f5a8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploads_createinstance_19dd19f5a8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/buildUploads/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploads_deleteinstance_43f957766c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploads_deleteinstance_43f957766c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildUploads/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploads_getinstance_41544a4c14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploads_getinstance_41544a4c14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildUploads/{id}/buildUploadFiles (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploads_builduploadfiles_gettomanyrelated_860a02b7c5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploads_builduploadfiles_gettomanyrelated_860a02b7c5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/buildUploads/{id}/relationships/buildUploadFiles (raw transport response; no Codable guarantee).
    public func ascGenerated_builduploads_builduploadfiles_gettomanyrelationship_3205495b08(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builduploads_builduploadfiles_gettomanyrelationship_3205495b08,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_getcollection_61105ba4d9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_getcollection_61105ba4d9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_getinstance_7dc1abefc9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_getinstance_7dc1abefc9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/builds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_updateinstance_f9f0cc74a5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_updateinstance_f9f0cc74a5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_app_gettoonerelated_6d8e08eca6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_app_gettoonerelated_6d8e08eca6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/appEncryptionDeclaration (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_appencryptiondeclaration_gettoonerelated_058487f237(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_appencryptiondeclaration_gettoonerelated_058487f237,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/appStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_appstoreversion_gettoonerelated_c5640416e6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_appstoreversion_gettoonerelated_c5640416e6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/betaAppReviewSubmission (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betaappreviewsubmission_gettoonerelated_427b48384c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betaappreviewsubmission_gettoonerelated_427b48384c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/betaBuildLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betabuildlocalizations_gettomanyrelated_018876d41b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betabuildlocalizations_gettomanyrelated_018876d41b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
