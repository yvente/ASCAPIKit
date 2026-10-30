// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_certificates_updateinstance_e7eea968aa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_updateInstance", method: "PATCH",
            pathTemplate: "/v1/certificates/{id}",
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

    public static var op_certificates_passtypeid_gettoonerelated_e24d4ba5c1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_passTypeId_getToOneRelated", method: "GET",
            pathTemplate: "/v1/certificates/{id}/passTypeId",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "include", "limit[certificates]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_certificates_passtypeid_gettoonerelationship_0c2261a5cc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_passTypeId_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/certificates/{id}/relationships/passTypeId",
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

    public static var op_ciartifacts_getinstance_43c24d1db2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciArtifacts_getInstance", method: "GET",
            pathTemplate: "/v1/ciArtifacts/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciArtifacts]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildactions_getinstance_fdd97206f9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_getInstance", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciBuildActions]", "fields[ciBuildRuns]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildactions_artifacts_gettomanyrelated_d11265a691: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_artifacts_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/artifacts",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciArtifacts]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildactions_buildrun_gettoonerelated_d30128f98a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_buildRun_getToOneRelated", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/buildRun",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]", "fields[ciBuildRuns]", "fields[ciProducts]", "fields[ciWorkflows]", "fields[scmGitReferences]", "fields[scmPullRequests]", "include", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildactions_issues_gettomanyrelated_45ddcd3830: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_issues_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/issues",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciIssues]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildactions_artifacts_gettomanyrelationship_7a13e7410f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_artifacts_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/relationships/artifacts",
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

    public static var op_cibuildactions_buildrun_gettoonerelationship_7835408c1a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_buildRun_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/relationships/buildRun",
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

    public static var op_cibuildactions_issues_gettomanyrelationship_7ccb65e69d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_issues_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/relationships/issues",
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

    public static var op_cibuildactions_testresults_gettomanyrelationship_77f5f6393e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_testResults_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/relationships/testResults",
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

    public static var op_cibuildactions_testresults_gettomanyrelated_8952fdd2db: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildActions_testResults_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciBuildActions/{id}/testResults",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciTestResults]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildruns_createinstance_bb06a97cb8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_createInstance", method: "POST",
            pathTemplate: "/v1/ciBuildRuns",
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

    public static var op_cibuildruns_getinstance_fb26335823: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_getInstance", method: "GET",
            pathTemplate: "/v1/ciBuildRuns/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]", "fields[ciBuildRuns]", "fields[ciProducts]", "fields[ciWorkflows]", "fields[scmGitReferences]", "fields[scmPullRequests]", "include", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildruns_actions_gettomanyrelated_44c99a23f9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_actions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciBuildRuns/{id}/actions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciBuildActions]", "fields[ciBuildRuns]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildruns_builds_gettomanyrelated_d531b94765: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_builds_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciBuildRuns/{id}/builds",
            pathParameterNames: ["id"],
            queryParameterNames: ["exists[usesNonExemptEncryption]", "fields[appEncryptionDeclarations]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppReviewSubmissions]", "fields[betaBuildLocalizations]", "fields[betaGroups]", "fields[betaTesters]", "fields[buildBetaDetails]", "fields[buildBundles]", "fields[buildIcons]", "fields[buildUploads]", "fields[builds]", "fields[preReleaseVersions]", "filter[appStoreVersion]", "filter[app]", "filter[betaAppReviewSubmission.betaReviewState]", "filter[betaGroups]", "filter[buildAudienceType]", "filter[expired]", "filter[id]", "filter[preReleaseVersion.platform]", "filter[preReleaseVersion.version]", "filter[preReleaseVersion]", "filter[processingState]", "filter[usesNonExemptEncryption]", "filter[version]", "include", "limit", "limit[betaBuildLocalizations]", "limit[betaGroups]", "limit[buildBundles]", "limit[icons]", "limit[individualTesters]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cibuildruns_actions_gettomanyrelationship_2e66ad4fe1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_actions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildRuns/{id}/relationships/actions",
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

    public static var op_cibuildruns_builds_gettomanyrelationship_c7432049bf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciBuildRuns_builds_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciBuildRuns/{id}/relationships/builds",
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

    public static var op_ciissues_getinstance_4ca827bb50: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciIssues_getInstance", method: "GET",
            pathTemplate: "/v1/ciIssues/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciIssues]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cimacosversions_getcollection_4d34fb86cc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciMacOsVersions_getCollection", method: "GET",
            pathTemplate: "/v1/ciMacOsVersions",
            pathParameterNames: [],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit", "limit[xcodeVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cimacosversions_getinstance_f2d2a40ecd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciMacOsVersions_getInstance", method: "GET",
            pathTemplate: "/v1/ciMacOsVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit[xcodeVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_cimacosversions_xcodeversions_gettomanyrelationship_cb24f59c38: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciMacOsVersions_xcodeVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciMacOsVersions/{id}/relationships/xcodeVersions",
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

    public static var op_cimacosversions_xcodeversions_gettomanyrelated_01118e505e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciMacOsVersions_xcodeVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciMacOsVersions/{id}/xcodeVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciXcodeVersions]", "include", "limit", "limit[macOsVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_getcollection_be453f1756: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_getCollection", method: "GET",
            pathTemplate: "/v1/ciProducts",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[bundleIds]", "fields[ciProducts]", "fields[scmRepositories]", "filter[app]", "filter[productType]", "include", "limit", "limit[primaryRepositories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_deleteinstance_114e78aa47: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/ciProducts/{id}",
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

    public static var op_ciproducts_getinstance_b7cb123b8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_getInstance", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[bundleIds]", "fields[ciProducts]", "fields[scmRepositories]", "include", "limit[primaryRepositories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_additionalrepositories_gettomanyrelated_5870f8325e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_additionalRepositories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/additionalRepositories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmProviders]", "fields[scmRepositories]", "filter[id]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_app_gettoonerelated_54f0efdff0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/app",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[androidToIosAppMappingDetails]", "fields[appClips]", "fields[appCustomProductPages]", "fields[appEncryptionDeclarations]", "fields[appEvents]", "fields[appInfos]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppLocalizations]", "fields[betaAppReviewDetails]", "fields[betaGroups]", "fields[betaLicenseAgreements]", "fields[buildIcons]", "fields[builds]", "fields[ciProducts]", "fields[endUserLicenseAgreements]", "fields[gameCenterDetails]", "fields[gameCenterEnabledVersions]", "fields[inAppPurchases]", "fields[preReleaseVersions]", "fields[promotedPurchases]", "fields[reviewSubmissions]", "fields[subscriptionGracePeriods]", "fields[subscriptionGroups]", "include", "limit[androidToIosAppMappingDetails]", "limit[appClips]", "limit[appCustomProductPages]", "limit[appEncryptionDeclarations]", "limit[appEvents]", "limit[appInfos]", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersions]", "limit[betaAppLocalizations]", "limit[betaGroups]", "limit[builds]", "limit[gameCenterEnabledVersions]", "limit[inAppPurchasesV2]", "limit[inAppPurchases]", "limit[preReleaseVersions]", "limit[promotedPurchases]", "limit[reviewSubmissions]", "limit[subscriptionGroups]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_buildruns_gettomanyrelated_429c656bba: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_buildRuns_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/buildRuns",
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

    public static var op_ciproducts_primaryrepositories_gettomanyrelated_56b8c59d20: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_primaryRepositories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/primaryRepositories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmProviders]", "fields[scmRepositories]", "filter[id]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciproducts_additionalrepositories_gettomanyrelationship_0b3cc220c6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_additionalRepositories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/relationships/additionalRepositories",
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

    public static var op_ciproducts_app_gettoonerelationship_1d8c997e5e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/relationships/app",
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

    public static var op_ciproducts_buildruns_gettomanyrelationship_552949e8d8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_buildRuns_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/relationships/buildRuns",
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

    public static var op_ciproducts_primaryrepositories_gettomanyrelationship_386c97e69d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_primaryRepositories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/relationships/primaryRepositories",
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

    public static var op_ciproducts_workflows_gettomanyrelationship_c123fde155: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_workflows_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/relationships/workflows",
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

    public static var op_ciproducts_workflows_gettomanyrelated_1b1bfdf70c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciProducts_workflows_getToManyRelated", method: "GET",
            pathTemplate: "/v1/ciProducts/{id}/workflows",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciMacOsVersions]", "fields[ciProducts]", "fields[ciWorkflows]", "fields[ciXcodeVersions]", "fields[scmRepositories]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_citestresults_getinstance_a81e808fe4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciTestResults_getInstance", method: "GET",
            pathTemplate: "/v1/ciTestResults/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ciTestResults]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_ciworkflows_createinstance_f5d876adc6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_createInstance", method: "POST",
            pathTemplate: "/v1/ciWorkflows",
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

    public static var op_ciworkflows_deleteinstance_7280ee3790: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "ciWorkflows_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/ciWorkflows/{id}",
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
    /// PATCH /v1/certificates/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_updateinstance_e7eea968aa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_updateinstance_e7eea968aa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/certificates/{id}/passTypeId (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_passtypeid_gettoonerelated_e24d4ba5c1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_passtypeid_gettoonerelated_e24d4ba5c1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/certificates/{id}/relationships/passTypeId (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_passtypeid_gettoonerelationship_0c2261a5cc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_passtypeid_gettoonerelationship_0c2261a5cc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciArtifacts/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciartifacts_getinstance_43c24d1db2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciartifacts_getinstance_43c24d1db2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_getinstance_fdd97206f9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_getinstance_fdd97206f9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/artifacts (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_artifacts_gettomanyrelated_d11265a691(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_artifacts_gettomanyrelated_d11265a691,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/buildRun (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_buildrun_gettoonerelated_d30128f98a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_buildrun_gettoonerelated_d30128f98a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/issues (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_issues_gettomanyrelated_45ddcd3830(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_issues_gettomanyrelated_45ddcd3830,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/relationships/artifacts (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_artifacts_gettomanyrelationship_7a13e7410f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_artifacts_gettomanyrelationship_7a13e7410f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/relationships/buildRun (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_buildrun_gettoonerelationship_7835408c1a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_buildrun_gettoonerelationship_7835408c1a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/relationships/issues (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_issues_gettomanyrelationship_7ccb65e69d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_issues_gettomanyrelationship_7ccb65e69d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/relationships/testResults (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_testresults_gettomanyrelationship_77f5f6393e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_testresults_gettomanyrelationship_77f5f6393e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildActions/{id}/testResults (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildactions_testresults_gettomanyrelated_8952fdd2db(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildactions_testresults_gettomanyrelated_8952fdd2db,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/ciBuildRuns (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_createinstance_bb06a97cb8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_createinstance_bb06a97cb8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildRuns/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_getinstance_fb26335823(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_getinstance_fb26335823,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildRuns/{id}/actions (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_actions_gettomanyrelated_44c99a23f9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_actions_gettomanyrelated_44c99a23f9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildRuns/{id}/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_builds_gettomanyrelated_d531b94765(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_builds_gettomanyrelated_d531b94765,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildRuns/{id}/relationships/actions (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_actions_gettomanyrelationship_2e66ad4fe1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_actions_gettomanyrelationship_2e66ad4fe1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciBuildRuns/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_cibuildruns_builds_gettomanyrelationship_c7432049bf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cibuildruns_builds_gettomanyrelationship_c7432049bf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciIssues/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciissues_getinstance_4ca827bb50(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciissues_getinstance_4ca827bb50,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciMacOsVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cimacosversions_getcollection_4d34fb86cc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cimacosversions_getcollection_4d34fb86cc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciMacOsVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_cimacosversions_getinstance_f2d2a40ecd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cimacosversions_getinstance_f2d2a40ecd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciMacOsVersions/{id}/relationships/xcodeVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cimacosversions_xcodeversions_gettomanyrelationship_cb24f59c38(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cimacosversions_xcodeversions_gettomanyrelationship_cb24f59c38,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciMacOsVersions/{id}/xcodeVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_cimacosversions_xcodeversions_gettomanyrelated_01118e505e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_cimacosversions_xcodeversions_gettomanyrelated_01118e505e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_getcollection_be453f1756(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_getcollection_be453f1756,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/ciProducts/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_deleteinstance_114e78aa47(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_deleteinstance_114e78aa47,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_getinstance_b7cb123b8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_getinstance_b7cb123b8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/additionalRepositories (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_additionalrepositories_gettomanyrelated_5870f8325e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_additionalrepositories_gettomanyrelated_5870f8325e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_app_gettoonerelated_54f0efdff0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_app_gettoonerelated_54f0efdff0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/buildRuns (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_buildruns_gettomanyrelated_429c656bba(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_buildruns_gettomanyrelated_429c656bba,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/primaryRepositories (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_primaryrepositories_gettomanyrelated_56b8c59d20(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_primaryrepositories_gettomanyrelated_56b8c59d20,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/relationships/additionalRepositories (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_additionalrepositories_gettomanyrelationship_0b3cc220c6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_additionalrepositories_gettomanyrelationship_0b3cc220c6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_app_gettoonerelationship_1d8c997e5e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_app_gettoonerelationship_1d8c997e5e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/relationships/buildRuns (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_buildruns_gettomanyrelationship_552949e8d8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_buildruns_gettomanyrelationship_552949e8d8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/relationships/primaryRepositories (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_primaryrepositories_gettomanyrelationship_386c97e69d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_primaryrepositories_gettomanyrelationship_386c97e69d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/relationships/workflows (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_workflows_gettomanyrelationship_c123fde155(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_workflows_gettomanyrelationship_c123fde155,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciProducts/{id}/workflows (raw transport response; no Codable guarantee).
    public func ascGenerated_ciproducts_workflows_gettomanyrelated_1b1bfdf70c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciproducts_workflows_gettomanyrelated_1b1bfdf70c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/ciTestResults/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_citestresults_getinstance_a81e808fe4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_citestresults_getinstance_a81e808fe4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/ciWorkflows (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_createinstance_f5d876adc6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_createinstance_f5d876adc6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/ciWorkflows/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_ciworkflows_deleteinstance_7280ee3790(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_ciworkflows_deleteinstance_7280ee3790,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
