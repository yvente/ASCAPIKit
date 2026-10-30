// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_apps_backgroundassets_gettomanyrelated_893e253876: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_backgroundAssets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/backgroundAssets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[backgroundAssetVersions]", "fields[backgroundAssets]", "filter[archived]", "filter[assetPackIdentifier]", "filter[versions.locale]", "filter[versions.platforms]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betaapplocalizations_gettomanyrelated_0223b199a1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaAppLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaAppLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppLocalizations]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betaappreviewdetail_gettoonerelated_4d5a7129d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaAppReviewDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaAppReviewDetail",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaAppReviewDetails]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betafeedbackcrashsubmissions_gettomanyrelated_796e843465: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaFeedbackCrashSubmissions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaFeedbackCrashSubmissions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaFeedbackCrashSubmissions]", "fields[betaTesters]", "fields[builds]", "filter[appPlatform]", "filter[build.preReleaseVersion]", "filter[build]", "filter[deviceModel]", "filter[devicePlatform]", "filter[osVersion]", "filter[tester]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betafeedbackscreenshotsubmissions_gettomanyrelated_e56076267c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaFeedbackScreenshotSubmissions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaFeedbackScreenshotSubmissions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaFeedbackScreenshotSubmissions]", "fields[betaTesters]", "fields[builds]", "filter[appPlatform]", "filter[build.preReleaseVersion]", "filter[build]", "filter[deviceModel]", "filter[devicePlatform]", "filter[osVersion]", "filter[tester]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betagroups_gettomanyrelated_ddac8ca07f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaGroups_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaGroups",
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

    public static var op_apps_betalicenseagreement_gettoonerelated_40d5a4ac14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaLicenseAgreement_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/betaLicenseAgreement",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaLicenseAgreements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_builduploads_gettomanyrelated_26d1e3a4e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_buildUploads_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/buildUploads",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildUploadFiles]", "fields[buildUploads]", "fields[builds]", "filter[cfBundleShortVersionString]", "filter[cfBundleVersion]", "filter[platform]", "filter[state]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_builds_gettomanyrelated_a6235f8268: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_builds_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/builds",
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

    public static var op_apps_ciproduct_gettoonerelated_654247da2f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_ciProduct_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/ciProduct",
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

    public static var op_apps_customerreviewsummarizations_gettomanyrelated_fb479223a8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_customerReviewSummarizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/customerReviewSummarizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[customerReviewSummarizations]", "fields[territories]", "filter[platform]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: ["filter[platform]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_customerreviews_gettomanyrelated_3f55ae4076: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_customerReviews_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/customerReviews",
            pathParameterNames: ["id"],
            queryParameterNames: ["exists[publishedResponse]", "fields[customerReviewResponses]", "fields[customerReviews]", "fields[territories]", "filter[rating]", "filter[reviewTerritory]", "filter[territory]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_enduserlicenseagreement_gettoonerelated_63fed5b705: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_endUserLicenseAgreement_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/endUserLicenseAgreement",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[endUserLicenseAgreements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_gamecenterdetail_gettoonerelated_291e776766: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_gameCenterDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/gameCenterDetail",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[apps]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterActivityVersionReleases]", "fields[gameCenterAppVersions]", "fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[achievementReleases]", "limit[activityReleases]", "limit[challengeReleases]", "limit[challengesMinimumPlatformVersions]", "limit[gameCenterAchievementsV2]", "limit[gameCenterAchievements]", "limit[gameCenterActivities]", "limit[gameCenterAppVersions]", "limit[gameCenterChallenges]", "limit[gameCenterLeaderboardSetsV2]", "limit[gameCenterLeaderboardSets]", "limit[gameCenterLeaderboardsV2]", "limit[gameCenterLeaderboards]", "limit[leaderboardReleases]", "limit[leaderboardSetReleases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_gamecenterenabledversions_gettomanyrelated_edf0549d2a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_gameCenterEnabledVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/gameCenterEnabledVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[gameCenterEnabledVersions]", "filter[id]", "filter[platform]", "filter[versionString]", "include", "limit", "limit[compatibleVersions]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_apps_inapppurchases_gettomanyrelated_5f3def5085: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_inAppPurchases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/inAppPurchases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[inAppPurchases]", "filter[canBeSubmitted]", "filter[inAppPurchaseType]", "include", "limit", "limit[apps]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_apps_inapppurchasesv2_gettomanyrelated_fb85c7d29c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_inAppPurchasesV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/inAppPurchasesV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseAppStoreReviewScreenshots]", "fields[inAppPurchaseAvailabilities]", "fields[inAppPurchaseContents]", "fields[inAppPurchaseImages]", "fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseOfferCodes]", "fields[inAppPurchasePriceSchedules]", "fields[inAppPurchaseVersions]", "fields[inAppPurchases]", "fields[promotedPurchases]", "filter[inAppPurchaseType]", "filter[name]", "filter[productId]", "filter[state]", "include", "limit", "limit[images]", "limit[inAppPurchaseLocalizations]", "limit[offerCodes]", "limit[versions]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_marketplacesearchdetail_gettoonerelated_2fdb5a23ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_marketplaceSearchDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/marketplaceSearchDetail",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[marketplaceSearchDetails]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_betatesterusages_getmetrics_c34fce5e9f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_betaTesterUsages_getMetrics", method: "GET",
            pathTemplate: "/v1/apps/{id}/metrics/betaTesterUsages",
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

    public static var op_apps_perfpowermetrics_gettomanyrelated_b58ecd0f39: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_perfPowerMetrics_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/perfPowerMetrics",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[deviceType]", "filter[metricType]", "filter[platform]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/vnd.apple.xcode-metrics+json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_performanceoverviews_gettomanyrelated_5f9013c87e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_performanceOverviews_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/performanceOverviews",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[deviceType]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/vnd.apple.xcode-overview+json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_prereleaseversions_gettomanyrelated_bae2d3c5d8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_preReleaseVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/preReleaseVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[preReleaseVersions]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_promotedpurchases_gettomanyrelated_d4e9e559f4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_promotedPurchases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/promotedPurchases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchases]", "fields[promotedPurchases]", "fields[subscriptions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_accessibilitydeclarations_gettomanyrelationship_7c784739ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_accessibilityDeclarations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/accessibilityDeclarations",
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

    public static var op_apps_alternativedistributionkey_gettoonerelationship_1e944d7fcb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_alternativeDistributionKey_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/alternativeDistributionKey",
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

    public static var op_apps_analyticsreportrequests_gettomanyrelationship_17a24e0c5f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_analyticsReportRequests_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/analyticsReportRequests",
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

    public static var op_apps_androidtoiosappmappingdetails_gettomanyrelationship_f1e2af82a4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_androidToIosAppMappingDetails_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/androidToIosAppMappingDetails",
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

    public static var op_apps_appavailabilityv2_gettoonerelationship_6638789f95: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appAvailabilityV2_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appAvailabilityV2",
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

    public static var op_apps_appclips_gettomanyrelationship_ebb8b64395: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appClips_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appClips",
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

    public static var op_apps_appcustomproductpages_gettomanyrelationship_1222428bb7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appCustomProductPages_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appCustomProductPages",
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

    public static var op_apps_appencryptiondeclarations_gettomanyrelationship_fd84e2d5f5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appEncryptionDeclarations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appEncryptionDeclarations",
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

    public static var op_apps_appevents_gettomanyrelationship_c1c3ea849f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appEvents_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appEvents",
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

    public static var op_apps_appinfos_gettomanyrelationship_455541a700: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appInfos_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appInfos",
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

    public static var op_apps_apppricepoints_gettomanyrelationship_8739354ef8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appPricePoints_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appPricePoints",
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

    public static var op_apps_apppriceschedule_gettoonerelationship_36bac9d2f6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appPriceSchedule_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appPriceSchedule",
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

    public static var op_apps_appstoreversionexperimentsv2_gettomanyrelationship_b35eaa1f62: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appStoreVersionExperimentsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appStoreVersionExperimentsV2",
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

    public static var op_apps_appstoreversions_gettomanyrelationship_741641c1d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appStoreVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appStoreVersions",
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

    public static var op_apps_apptags_gettomanyrelationship_01d7e58d2b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appTags_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/appTags",
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

    public static var op_apps_assetlibrary_gettoonerelationship_1295ed7f18: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_assetLibrary_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/assetLibrary",
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

    public static var op_apps_backgroundassets_gettomanyrelationship_3e5da44a3a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_backgroundAssets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/apps/{id}/relationships/backgroundAssets",
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
}

extension ASCClient {
    /// GET /v1/apps/{id}/backgroundAssets (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_backgroundassets_gettomanyrelated_893e253876(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_backgroundassets_gettomanyrelated_893e253876,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaAppLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betaapplocalizations_gettomanyrelated_0223b199a1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betaapplocalizations_gettomanyrelated_0223b199a1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaAppReviewDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betaappreviewdetail_gettoonerelated_4d5a7129d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betaappreviewdetail_gettoonerelated_4d5a7129d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaFeedbackCrashSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betafeedbackcrashsubmissions_gettomanyrelated_796e843465(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betafeedbackcrashsubmissions_gettomanyrelated_796e843465,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaFeedbackScreenshotSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betafeedbackscreenshotsubmissions_gettomanyrelated_e56076267c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betafeedbackscreenshotsubmissions_gettomanyrelated_e56076267c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betagroups_gettomanyrelated_ddac8ca07f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betagroups_gettomanyrelated_ddac8ca07f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/betaLicenseAgreement (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betalicenseagreement_gettoonerelated_40d5a4ac14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betalicenseagreement_gettoonerelated_40d5a4ac14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/buildUploads (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_builduploads_gettomanyrelated_26d1e3a4e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_builduploads_gettomanyrelated_26d1e3a4e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_builds_gettomanyrelated_a6235f8268(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_builds_gettomanyrelated_a6235f8268,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/ciProduct (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_ciproduct_gettoonerelated_654247da2f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_ciproduct_gettoonerelated_654247da2f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/customerReviewSummarizations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_customerreviewsummarizations_gettomanyrelated_fb479223a8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_customerreviewsummarizations_gettomanyrelated_fb479223a8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/customerReviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_customerreviews_gettomanyrelated_3f55ae4076(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_customerreviews_gettomanyrelated_3f55ae4076,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/endUserLicenseAgreement (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_enduserlicenseagreement_gettoonerelated_63fed5b705(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_enduserlicenseagreement_gettoonerelated_63fed5b705,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/gameCenterDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_gamecenterdetail_gettoonerelated_291e776766(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_gamecenterdetail_gettoonerelated_291e776766,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/gameCenterEnabledVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_gamecenterenabledversions_gettomanyrelated_edf0549d2a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_gamecenterenabledversions_gettomanyrelated_edf0549d2a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/inAppPurchases (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_inapppurchases_gettomanyrelated_5f3def5085(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_inapppurchases_gettomanyrelated_5f3def5085,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/inAppPurchasesV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_inapppurchasesv2_gettomanyrelated_fb85c7d29c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_inapppurchasesv2_gettomanyrelated_fb85c7d29c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/marketplaceSearchDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_marketplacesearchdetail_gettoonerelated_2fdb5a23ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_marketplacesearchdetail_gettoonerelated_2fdb5a23ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/metrics/betaTesterUsages (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_betatesterusages_getmetrics_c34fce5e9f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_betatesterusages_getmetrics_c34fce5e9f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/perfPowerMetrics (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_perfpowermetrics_gettomanyrelated_b58ecd0f39(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_perfpowermetrics_gettomanyrelated_b58ecd0f39,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/performanceOverviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_performanceoverviews_gettomanyrelated_5f9013c87e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_performanceoverviews_gettomanyrelated_5f9013c87e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/preReleaseVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_prereleaseversions_gettomanyrelated_bae2d3c5d8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_prereleaseversions_gettomanyrelated_bae2d3c5d8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/promotedPurchases (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_promotedpurchases_gettomanyrelated_d4e9e559f4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_promotedpurchases_gettomanyrelated_d4e9e559f4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/accessibilityDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_accessibilitydeclarations_gettomanyrelationship_7c784739ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_accessibilitydeclarations_gettomanyrelationship_7c784739ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/alternativeDistributionKey (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_alternativedistributionkey_gettoonerelationship_1e944d7fcb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_alternativedistributionkey_gettoonerelationship_1e944d7fcb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/analyticsReportRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_analyticsreportrequests_gettomanyrelationship_17a24e0c5f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_analyticsreportrequests_gettomanyrelationship_17a24e0c5f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/androidToIosAppMappingDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_androidtoiosappmappingdetails_gettomanyrelationship_f1e2af82a4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_androidtoiosappmappingdetails_gettomanyrelationship_f1e2af82a4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appAvailabilityV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appavailabilityv2_gettoonerelationship_6638789f95(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appavailabilityv2_gettoonerelationship_6638789f95,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appClips (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appclips_gettomanyrelationship_ebb8b64395(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appclips_gettomanyrelationship_ebb8b64395,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appCustomProductPages (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appcustomproductpages_gettomanyrelationship_1222428bb7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appcustomproductpages_gettomanyrelationship_1222428bb7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appEncryptionDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appencryptiondeclarations_gettomanyrelationship_fd84e2d5f5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appencryptiondeclarations_gettomanyrelationship_fd84e2d5f5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appEvents (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appevents_gettomanyrelationship_c1c3ea849f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appevents_gettomanyrelationship_c1c3ea849f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appInfos (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appinfos_gettomanyrelationship_455541a700(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appinfos_gettomanyrelationship_455541a700,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appPricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apppricepoints_gettomanyrelationship_8739354ef8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apppricepoints_gettomanyrelationship_8739354ef8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appPriceSchedule (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apppriceschedule_gettoonerelationship_36bac9d2f6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apppriceschedule_gettoonerelationship_36bac9d2f6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appStoreVersionExperimentsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appstoreversionexperimentsv2_gettomanyrelationship_b35eaa1f62(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appstoreversionexperimentsv2_gettomanyrelationship_b35eaa1f62,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appStoreVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appstoreversions_gettomanyrelationship_741641c1d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appstoreversions_gettomanyrelationship_741641c1d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/appTags (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apptags_gettomanyrelationship_01d7e58d2b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apptags_gettomanyrelationship_01d7e58d2b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/assetLibrary (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_assetlibrary_gettoonerelationship_1295ed7f18(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_assetlibrary_gettoonerelationship_1295ed7f18,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/relationships/backgroundAssets (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_backgroundassets_gettomanyrelationship_3e5da44a3a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_backgroundassets_gettomanyrelationship_3e5da44a3a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
