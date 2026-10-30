// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterleaderboardversionsv2_getinstance_0c6fc305a0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardVersionsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardVersions]", "fields[gameCenterLeaderboards]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardversionsv2_localizations_gettomanyrelated_d9f23fca33: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardVersionsV2_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardversionsv2_localizations_gettomanyrelationship_a98b1ed02f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardVersionsV2_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardVersions/{id}/relationships/localizations",
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

    public static var op_gamecenterleaderboardsv2_createinstance_695b5dc0e1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsv2_deleteinstance_c5219643f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}",
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

    public static var op_gamecenterleaderboardsv2_getinstance_a0f8c6d561: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboardVersions]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboardSets]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsv2_updateinstance_d77415b6c9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}",
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

    public static var op_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelated_e6b4ee6cdc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_gameCenterScoreModerations_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/gameCenterScoreModerations",
            pathParameterNames: ["id"],
            queryParameterNames: ["exists[blocked]", "fields[gameCenterDetailPlayers]", "fields[gameCenterScoreModerations]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsv2_activity_updatetoonerelationship_0cf04d8cd6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_activity_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/relationships/activity",
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

    public static var op_gamecenterleaderboardsv2_challenge_updatetoonerelationship_bb73548aca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_challenge_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/relationships/challenge",
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

    public static var op_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelationship_c2cd3e6fdb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_gameCenterScoreModerations_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/relationships/gameCenterScoreModerations",
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

    public static var op_gamecenterleaderboardsv2_versions_gettomanyrelationship_aa76c1a392: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/relationships/versions",
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

    public static var op_gamecenterleaderboardsv2_versions_gettomanyrelated_9619db21e5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardsV2_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboards/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardVersions]", "fields[gameCenterLeaderboards]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseimagesv2_createinstance_e7b08bbfdd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImagesV2_createInstance", method: "POST",
            pathTemplate: "/v2/inAppPurchaseImages",
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

    public static var op_inapppurchaseimagesv2_deleteinstance_3600737451: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImagesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/inAppPurchaseImages/{id}",
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

    public static var op_inapppurchaseimagesv2_getinstance_50f70c9457: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImagesV2_getInstance", method: "GET",
            pathTemplate: "/v2/inAppPurchaseImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseimagesv2_updateinstance_e5e56614ce: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImagesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/inAppPurchaseImages/{id}",
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

    public static var op_inapppurchaselocalizationsv2_createinstance_0838053065: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/inAppPurchaseLocalizations",
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

    public static var op_inapppurchaselocalizationsv2_deleteinstance_ca0e18727f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/inAppPurchaseLocalizations/{id}",
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

    public static var op_inapppurchaselocalizationsv2_getinstance_70f820a602: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/inAppPurchaseLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaselocalizationsv2_updateinstance_be6c78f58c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/inAppPurchaseLocalizations/{id}",
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

    public static var op_inapppurchasesv2_createinstance_0564abfa0e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_createInstance", method: "POST",
            pathTemplate: "/v2/inAppPurchases",
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

    public static var op_inapppurchasesv2_deleteinstance_a6a4d3ed15: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/inAppPurchases/{id}",
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

    public static var op_inapppurchasesv2_getinstance_fef8ff88c0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_getInstance", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseAppStoreReviewScreenshots]", "fields[inAppPurchaseAvailabilities]", "fields[inAppPurchaseContents]", "fields[inAppPurchaseImages]", "fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseOfferCodes]", "fields[inAppPurchasePricePoints]", "fields[inAppPurchasePriceSchedules]", "fields[inAppPurchaseVersions]", "fields[inAppPurchases]", "fields[promotedPurchases]", "include", "limit[images]", "limit[inAppPurchaseLocalizations]", "limit[offerCodes]", "limit[pricePoints]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_updateinstance_98d4afc3fe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/inAppPurchases/{id}",
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

    public static var op_inapppurchasesv2_appstorereviewscreenshot_gettoonerelated_ac63c7ea4e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_appStoreReviewScreenshot_getToOneRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/appStoreReviewScreenshot",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseAppStoreReviewScreenshots]", "fields[inAppPurchases]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_content_gettoonerelated_a4b955d533: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_content_getToOneRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/content",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseContents]", "fields[inAppPurchases]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_iappriceschedule_gettoonerelated_852ccca0d9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_iapPriceSchedule_getToOneRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/iapPriceSchedule",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePriceSchedules]", "fields[inAppPurchasePrices]", "fields[territories]", "include", "limit[automaticPrices]", "limit[manualPrices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_images_gettomanyrelated_b3b1e03848: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_images_getToManyRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/images",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]", "fields[inAppPurchases]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_inapppurchaseavailability_gettoonerelated_1202566b66: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_inAppPurchaseAvailability_getToOneRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/inAppPurchaseAvailability",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseAvailabilities]", "fields[territories]", "include", "limit[availableTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelated_69fcab0f9f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_inAppPurchaseLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/inAppPurchaseLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseLocalizations]", "fields[inAppPurchases]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_offercodes_gettomanyrelated_aaebc450fb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_offerCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/offerCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseOfferCodeCustomCodes]", "fields[inAppPurchaseOfferCodeOneTimeUseCodes]", "fields[inAppPurchaseOfferCodes]", "fields[inAppPurchaseOfferPrices]", "filter[territory]", "include", "limit", "limit[customCodes]", "limit[oneTimeUseCodes]", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_pricepoints_gettomanyrelated_3183e64848: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_pricePoints_getToManyRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/pricePoints",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePricePoints]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_promotedpurchase_gettoonerelated_ab3ccdb015: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_promotedPurchase_getToOneRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/promotedPurchase",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchases]", "fields[promotedPurchases]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasesv2_appstorereviewscreenshot_gettoonerelationship_77b993ccd8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_appStoreReviewScreenshot_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/appStoreReviewScreenshot",
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

    public static var op_inapppurchasesv2_content_gettoonerelationship_9024d4b7fe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_content_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/content",
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

    public static var op_inapppurchasesv2_iappriceschedule_gettoonerelationship_9672068139: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_iapPriceSchedule_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/iapPriceSchedule",
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

    public static var op_inapppurchasesv2_images_gettomanyrelationship_8a8fdee96d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_images_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/images",
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

    public static var op_inapppurchasesv2_inapppurchaseavailability_gettoonerelationship_6e89a1cd11: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_inAppPurchaseAvailability_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/inAppPurchaseAvailability",
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

    public static var op_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelationship_73fb858f50: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_inAppPurchaseLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/inAppPurchaseLocalizations",
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
    /// GET /v2/gameCenterLeaderboardVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardversionsv2_getinstance_0c6fc305a0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardversionsv2_getinstance_0c6fc305a0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardversionsv2_localizations_gettomanyrelated_d9f23fca33(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardversionsv2_localizations_gettomanyrelated_d9f23fca33,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardversionsv2_localizations_gettomanyrelationship_a98b1ed02f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardversionsv2_localizations_gettomanyrelationship_a98b1ed02f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_createinstance_695b5dc0e1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_createinstance_695b5dc0e1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_deleteinstance_c5219643f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_deleteinstance_c5219643f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_getinstance_a0f8c6d561(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_getinstance_a0f8c6d561,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_updateinstance_d77415b6c9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_updateinstance_d77415b6c9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboards/{id}/gameCenterScoreModerations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelated_e6b4ee6cdc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelated_e6b4ee6cdc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboards/{id}/relationships/activity (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_activity_updatetoonerelationship_0cf04d8cd6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_activity_updatetoonerelationship_0cf04d8cd6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboards/{id}/relationships/challenge (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_challenge_updatetoonerelationship_bb73548aca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_challenge_updatetoonerelationship_bb73548aca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboards/{id}/relationships/gameCenterScoreModerations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelationship_c2cd3e6fdb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_gamecenterscoremoderations_gettomanyrelationship_c2cd3e6fdb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboards/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_versions_gettomanyrelationship_aa76c1a392(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_versions_gettomanyrelationship_aa76c1a392,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboards/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsv2_versions_gettomanyrelated_9619db21e5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsv2_versions_gettomanyrelated_9619db21e5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/inAppPurchaseImages (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimagesv2_createinstance_e7b08bbfdd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimagesv2_createinstance_e7b08bbfdd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimagesv2_deleteinstance_3600737451(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimagesv2_deleteinstance_3600737451,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimagesv2_getinstance_50f70c9457(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimagesv2_getinstance_50f70c9457,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimagesv2_updateinstance_e5e56614ce(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimagesv2_updateinstance_e5e56614ce,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/inAppPurchaseLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizationsv2_createinstance_0838053065(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizationsv2_createinstance_0838053065,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizationsv2_deleteinstance_ca0e18727f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizationsv2_deleteinstance_ca0e18727f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizationsv2_getinstance_70f820a602(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizationsv2_getinstance_70f820a602,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizationsv2_updateinstance_be6c78f58c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizationsv2_updateinstance_be6c78f58c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/inAppPurchases (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_createinstance_0564abfa0e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_createinstance_0564abfa0e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/inAppPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_deleteinstance_a6a4d3ed15(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_deleteinstance_a6a4d3ed15,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_getinstance_fef8ff88c0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_getinstance_fef8ff88c0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/inAppPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_updateinstance_98d4afc3fe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_updateinstance_98d4afc3fe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/appStoreReviewScreenshot (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_appstorereviewscreenshot_gettoonerelated_ac63c7ea4e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_appstorereviewscreenshot_gettoonerelated_ac63c7ea4e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/content (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_content_gettoonerelated_a4b955d533(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_content_gettoonerelated_a4b955d533,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/iapPriceSchedule (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_iappriceschedule_gettoonerelated_852ccca0d9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_iappriceschedule_gettoonerelated_852ccca0d9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/images (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_images_gettomanyrelated_b3b1e03848(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_images_gettomanyrelated_b3b1e03848,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/inAppPurchaseAvailability (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_inapppurchaseavailability_gettoonerelated_1202566b66(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_inapppurchaseavailability_gettoonerelated_1202566b66,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/inAppPurchaseLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelated_69fcab0f9f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelated_69fcab0f9f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/offerCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_offercodes_gettomanyrelated_aaebc450fb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_offercodes_gettomanyrelated_aaebc450fb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/pricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_pricepoints_gettomanyrelated_3183e64848(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_pricepoints_gettomanyrelated_3183e64848,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/promotedPurchase (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_promotedpurchase_gettoonerelated_ab3ccdb015(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_promotedpurchase_gettoonerelated_ab3ccdb015,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/appStoreReviewScreenshot (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_appstorereviewscreenshot_gettoonerelationship_77b993ccd8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_appstorereviewscreenshot_gettoonerelationship_77b993ccd8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/content (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_content_gettoonerelationship_9024d4b7fe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_content_gettoonerelationship_9024d4b7fe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/iapPriceSchedule (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_iappriceschedule_gettoonerelationship_9672068139(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_iappriceschedule_gettoonerelationship_9672068139,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/images (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_images_gettomanyrelationship_8a8fdee96d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_images_gettomanyrelationship_8a8fdee96d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/inAppPurchaseAvailability (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_inapppurchaseavailability_gettoonerelationship_6e89a1cd11(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_inapppurchaseavailability_gettoonerelationship_6e89a1cd11,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/inAppPurchaseLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelationship_73fb858f50(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_inapppurchaselocalizations_gettomanyrelationship_73fb858f50,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
