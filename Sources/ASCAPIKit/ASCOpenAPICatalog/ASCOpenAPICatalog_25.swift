// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_promotedpurchases_updateinstance_05328fbeac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "promotedPurchases_updateInstance", method: "PATCH",
            pathTemplate: "/v1/promotedPurchases/{id}",
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

    public static var op_reviewsubmissionitems_createinstance_1d717d24f9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissionItems_createInstance", method: "POST",
            pathTemplate: "/v1/reviewSubmissionItems",
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

    public static var op_reviewsubmissionitems_deleteinstance_b97019b007: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissionItems_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/reviewSubmissionItems/{id}",
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

    public static var op_reviewsubmissionitems_updateinstance_fd71656081: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissionItems_updateInstance", method: "PATCH",
            pathTemplate: "/v1/reviewSubmissionItems/{id}",
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

    public static var op_reviewsubmissions_getcollection_0fdf9d6477: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_getCollection", method: "GET",
            pathTemplate: "/v1/reviewSubmissions",
            pathParameterNames: [],
            queryParameterNames: ["fields[actors]", "fields[appStoreVersions]", "fields[apps]", "fields[reviewSubmissionItems]", "fields[reviewSubmissions]", "filter[app]", "filter[platform]", "filter[state]", "include", "limit", "limit[items]"],
            requiredQueryParameterNames: ["filter[app]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_reviewsubmissions_createinstance_ae49f77e3d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/reviewSubmissions",
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

    public static var op_reviewsubmissions_getinstance_edec51576a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_getInstance", method: "GET",
            pathTemplate: "/v1/reviewSubmissions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[appStoreVersions]", "fields[apps]", "fields[reviewSubmissionItems]", "fields[reviewSubmissions]", "include", "limit[items]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_reviewsubmissions_updateinstance_c0413bd41a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/reviewSubmissions/{id}",
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

    public static var op_reviewsubmissions_items_gettomanyrelated_94978ac54d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_items_getToManyRelated", method: "GET",
            pathTemplate: "/v1/reviewSubmissions/{id}/items",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageVersions]", "fields[appEvents]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[backgroundAssetVersions]", "fields[gameCenterAchievementVersions]", "fields[gameCenterActivityVersions]", "fields[gameCenterChallengeVersions]", "fields[gameCenterLeaderboardSetVersions]", "fields[gameCenterLeaderboardVersions]", "fields[inAppPurchaseVersions]", "fields[reviewSubmissionItems]", "fields[subscriptionGroupVersions]", "fields[subscriptionVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_reviewsubmissions_items_gettomanyrelationship_899521cfbd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "reviewSubmissions_items_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/reviewSubmissions/{id}/relationships/items",
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

    public static var op_routingappcoverages_createinstance_4910c6801d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "routingAppCoverages_createInstance", method: "POST",
            pathTemplate: "/v1/routingAppCoverages",
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

    public static var op_routingappcoverages_deleteinstance_cbde2d1618: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "routingAppCoverages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/routingAppCoverages/{id}",
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

    public static var op_routingappcoverages_getinstance_0c67a595bf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "routingAppCoverages_getInstance", method: "GET",
            pathTemplate: "/v1/routingAppCoverages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[routingAppCoverages]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_routingappcoverages_updateinstance_4e845dd5b0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "routingAppCoverages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/routingAppCoverages/{id}",
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

    public static var op_salesreports_getcollection_786d3ef473: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "salesReports_getCollection", method: "GET",
            pathTemplate: "/v1/salesReports",
            pathParameterNames: [],
            queryParameterNames: ["filter[frequency]", "filter[reportDate]", "filter[reportSubType]", "filter[reportType]", "filter[vendorNumber]", "filter[version]"],
            requiredQueryParameterNames: ["filter[frequency]", "filter[reportSubType]", "filter[reportType]", "filter[vendorNumber]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/a-gzip"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmgitreferences_getinstance_11658dbf7b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmGitReferences_getInstance", method: "GET",
            pathTemplate: "/v1/scmGitReferences/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmRepositories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmproviders_getcollection_a0449a47f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmProviders_getCollection", method: "GET",
            pathTemplate: "/v1/scmProviders",
            pathParameterNames: [],
            queryParameterNames: ["fields[scmProviders]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmproviders_getinstance_e16bd38ece: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmProviders_getInstance", method: "GET",
            pathTemplate: "/v1/scmProviders/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmProviders]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmproviders_repositories_gettomanyrelationship_af0c66ad04: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmProviders_repositories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/scmProviders/{id}/relationships/repositories",
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

    public static var op_scmproviders_repositories_gettomanyrelated_8050a2d01f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmProviders_repositories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/scmProviders/{id}/repositories",
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

    public static var op_scmpullrequests_getinstance_85283c3a4e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmPullRequests_getInstance", method: "GET",
            pathTemplate: "/v1/scmPullRequests/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmPullRequests]", "fields[scmRepositories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmrepositories_getcollection_b6f0ec46a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_getCollection", method: "GET",
            pathTemplate: "/v1/scmRepositories",
            pathParameterNames: [],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmProviders]", "fields[scmRepositories]", "filter[id]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmrepositories_getinstance_7ea0f17699: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_getInstance", method: "GET",
            pathTemplate: "/v1/scmRepositories/{id}",
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

    public static var op_scmrepositories_gitreferences_gettomanyrelated_1cde13afb8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_gitReferences_getToManyRelated", method: "GET",
            pathTemplate: "/v1/scmRepositories/{id}/gitReferences",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmGitReferences]", "fields[scmRepositories]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmrepositories_pullrequests_gettomanyrelated_896934e84a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_pullRequests_getToManyRelated", method: "GET",
            pathTemplate: "/v1/scmRepositories/{id}/pullRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[scmPullRequests]", "fields[scmRepositories]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_scmrepositories_gitreferences_gettomanyrelationship_82e43b4db9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_gitReferences_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/scmRepositories/{id}/relationships/gitReferences",
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

    public static var op_scmrepositories_pullrequests_gettomanyrelationship_d70e3a5d3e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "scmRepositories_pullRequests_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/scmRepositories/{id}/relationships/pullRequests",
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

    public static var op_subscriptionappstorereviewscreenshots_createinstance_23e961ea18: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAppStoreReviewScreenshots_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionAppStoreReviewScreenshots",
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

    public static var op_subscriptionappstorereviewscreenshots_deleteinstance_b5342be85e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAppStoreReviewScreenshots_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionAppStoreReviewScreenshots/{id}",
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

    public static var op_subscriptionappstorereviewscreenshots_getinstance_2b2fc22c4e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAppStoreReviewScreenshots_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionAppStoreReviewScreenshots/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionAppStoreReviewScreenshots]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionappstorereviewscreenshots_updateinstance_bac10f3cca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAppStoreReviewScreenshots_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionAppStoreReviewScreenshots/{id}",
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

    public static var op_subscriptionavailabilities_createinstance_9e4c10f6c8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAvailabilities_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionAvailabilities",
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

    public static var op_subscriptionavailabilities_getinstance_85e50813ea: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAvailabilities_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionAvailabilities/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionAvailabilities]", "fields[territories]", "include", "limit[availableTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionavailabilities_availableterritories_gettomanyrelated_001dd94de1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAvailabilities_availableTerritories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionAvailabilities/{id}/availableTerritories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionavailabilities_availableterritories_gettomanyrelationship_3cdf1ceb82: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionAvailabilities_availableTerritories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionAvailabilities/{id}/relationships/availableTerritories",
            pathParameterNames: ["id"],
            queryParameterNames: ["limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongraceperiods_getinstance_7363c05a71: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGracePeriods_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionGracePeriods/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGracePeriods]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongraceperiods_updateinstance_ee614049e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGracePeriods_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionGracePeriods/{id}",
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

    public static var op_subscriptiongrouplocalizations_createinstance_4c7bee7414: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionGroupLocalizations",
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

    public static var op_subscriptiongrouplocalizations_deleteinstance_110142f31e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionGroupLocalizations/{id}",
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

    public static var op_subscriptiongrouplocalizations_getinstance_7fd7b9060a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionGroupLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroups]", "include"],
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
    /// PATCH /v1/promotedPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_promotedpurchases_updateinstance_05328fbeac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_promotedpurchases_updateinstance_05328fbeac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/reviewSubmissionItems (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissionitems_createinstance_1d717d24f9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissionitems_createinstance_1d717d24f9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/reviewSubmissionItems/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissionitems_deleteinstance_b97019b007(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissionitems_deleteinstance_b97019b007,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/reviewSubmissionItems/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissionitems_updateinstance_fd71656081(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissionitems_updateinstance_fd71656081,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/reviewSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_getcollection_0fdf9d6477(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_getcollection_0fdf9d6477,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/reviewSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_createinstance_ae49f77e3d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_createinstance_ae49f77e3d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/reviewSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_getinstance_edec51576a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_getinstance_edec51576a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/reviewSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_updateinstance_c0413bd41a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_updateinstance_c0413bd41a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/reviewSubmissions/{id}/items (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_items_gettomanyrelated_94978ac54d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_items_gettomanyrelated_94978ac54d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/reviewSubmissions/{id}/relationships/items (raw transport response; no Codable guarantee).
    public func ascGenerated_reviewsubmissions_items_gettomanyrelationship_899521cfbd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_reviewsubmissions_items_gettomanyrelationship_899521cfbd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/routingAppCoverages (raw transport response; no Codable guarantee).
    public func ascGenerated_routingappcoverages_createinstance_4910c6801d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_routingappcoverages_createinstance_4910c6801d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/routingAppCoverages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_routingappcoverages_deleteinstance_cbde2d1618(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_routingappcoverages_deleteinstance_cbde2d1618,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/routingAppCoverages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_routingappcoverages_getinstance_0c67a595bf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_routingappcoverages_getinstance_0c67a595bf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/routingAppCoverages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_routingappcoverages_updateinstance_4e845dd5b0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_routingappcoverages_updateinstance_4e845dd5b0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/salesReports (raw transport response; no Codable guarantee).
    public func ascGenerated_salesreports_getcollection_786d3ef473(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_salesreports_getcollection_786d3ef473,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmGitReferences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_scmgitreferences_getinstance_11658dbf7b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmgitreferences_getinstance_11658dbf7b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmProviders (raw transport response; no Codable guarantee).
    public func ascGenerated_scmproviders_getcollection_a0449a47f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmproviders_getcollection_a0449a47f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmProviders/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_scmproviders_getinstance_e16bd38ece(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmproviders_getinstance_e16bd38ece,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmProviders/{id}/relationships/repositories (raw transport response; no Codable guarantee).
    public func ascGenerated_scmproviders_repositories_gettomanyrelationship_af0c66ad04(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmproviders_repositories_gettomanyrelationship_af0c66ad04,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmProviders/{id}/repositories (raw transport response; no Codable guarantee).
    public func ascGenerated_scmproviders_repositories_gettomanyrelated_8050a2d01f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmproviders_repositories_gettomanyrelated_8050a2d01f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmPullRequests/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_scmpullrequests_getinstance_85283c3a4e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmpullrequests_getinstance_85283c3a4e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_getcollection_b6f0ec46a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_getcollection_b6f0ec46a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_getinstance_7ea0f17699(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_getinstance_7ea0f17699,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories/{id}/gitReferences (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_gitreferences_gettomanyrelated_1cde13afb8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_gitreferences_gettomanyrelated_1cde13afb8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories/{id}/pullRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_pullrequests_gettomanyrelated_896934e84a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_pullrequests_gettomanyrelated_896934e84a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories/{id}/relationships/gitReferences (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_gitreferences_gettomanyrelationship_82e43b4db9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_gitreferences_gettomanyrelationship_82e43b4db9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/scmRepositories/{id}/relationships/pullRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_scmrepositories_pullrequests_gettomanyrelationship_d70e3a5d3e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_scmrepositories_pullrequests_gettomanyrelationship_d70e3a5d3e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionAppStoreReviewScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionappstorereviewscreenshots_createinstance_23e961ea18(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionappstorereviewscreenshots_createinstance_23e961ea18,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionappstorereviewscreenshots_deleteinstance_b5342be85e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionappstorereviewscreenshots_deleteinstance_b5342be85e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionappstorereviewscreenshots_getinstance_2b2fc22c4e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionappstorereviewscreenshots_getinstance_2b2fc22c4e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionappstorereviewscreenshots_updateinstance_bac10f3cca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionappstorereviewscreenshots_updateinstance_bac10f3cca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionavailabilities_createinstance_9e4c10f6c8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionavailabilities_createinstance_9e4c10f6c8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionavailabilities_getinstance_85e50813ea(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionavailabilities_getinstance_85e50813ea,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionAvailabilities/{id}/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionavailabilities_availableterritories_gettomanyrelated_001dd94de1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionavailabilities_availableterritories_gettomanyrelated_001dd94de1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionAvailabilities/{id}/relationships/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionavailabilities_availableterritories_gettomanyrelationship_3cdf1ceb82(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionavailabilities_availableterritories_gettomanyrelationship_3cdf1ceb82,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGracePeriods/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongraceperiods_getinstance_7363c05a71(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongraceperiods_getinstance_7363c05a71,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionGracePeriods/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongraceperiods_updateinstance_ee614049e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongraceperiods_updateinstance_ee614049e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionGroupLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizations_createinstance_4c7bee7414(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizations_createinstance_4c7bee7414,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizations_deleteinstance_110142f31e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizations_deleteinstance_110142f31e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizations_getinstance_7fd7b9060a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizations_getinstance_7fd7b9060a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
