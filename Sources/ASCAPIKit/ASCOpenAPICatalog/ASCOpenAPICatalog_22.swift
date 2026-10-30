// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecentermatchmakingrulesets_getcollection_d261dbfff1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_getCollection", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets",
            pathParameterNames: [],
            queryParameterNames: ["fields[gameCenterMatchmakingQueues]", "fields[gameCenterMatchmakingRuleSets]", "fields[gameCenterMatchmakingRules]", "fields[gameCenterMatchmakingTeams]", "include", "limit", "limit[matchmakingQueues]", "limit[rules]", "limit[teams]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrulesets_createinstance_9b012539b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets",
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

    public static var op_gamecentermatchmakingrulesets_deleteinstance_b63933ea5e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}",
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

    public static var op_gamecentermatchmakingrulesets_getinstance_069cdbf184: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterMatchmakingQueues]", "fields[gameCenterMatchmakingRuleSets]", "fields[gameCenterMatchmakingRules]", "fields[gameCenterMatchmakingTeams]", "include", "limit[matchmakingQueues]", "limit[rules]", "limit[teams]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrulesets_updateinstance_7f55ef09e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}",
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

    public static var op_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelated_d0b994309a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_matchmakingQueues_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/matchmakingQueues",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterMatchmakingQueues]", "fields[gameCenterMatchmakingRuleSets]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelationship_c7f22fdde5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_matchmakingQueues_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/relationships/matchmakingQueues",
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

    public static var op_gamecentermatchmakingrulesets_rules_gettomanyrelationship_b3cbf01b8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_rules_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/relationships/rules",
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

    public static var op_gamecentermatchmakingrulesets_teams_gettomanyrelationship_8cc4273425: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_teams_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/relationships/teams",
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

    public static var op_gamecentermatchmakingrulesets_rules_gettomanyrelated_2915d554f3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_rules_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/rules",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterMatchmakingRules]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrulesets_teams_gettomanyrelated_bb0ff45fec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSets_teams_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSets/{id}/teams",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterMatchmakingTeams]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrules_createinstance_0b2ad98423: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterMatchmakingRules",
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

    public static var op_gamecentermatchmakingrules_deleteinstance_4bcfd87347: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterMatchmakingRules/{id}",
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

    public static var op_gamecentermatchmakingrules_updateinstance_76bbcfd9f5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterMatchmakingRules/{id}",
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

    public static var op_gamecentermatchmakingrules_matchmakingbooleanruleresults_getmetrics_c84c1f2cc5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_matchmakingBooleanRuleResults_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[gameCenterMatchmakingQueue]", "filter[result]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrules_matchmakingnumberruleresults_getmetrics_0aaf01bc80: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_matchmakingNumberRuleResults_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[gameCenterMatchmakingQueue]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrules_matchmakingruleerrors_getmetrics_cb4f7dd4d1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRules_matchmakingRuleErrors_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[gameCenterMatchmakingQueue]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingteams_createinstance_921795cd05: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingTeams_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterMatchmakingTeams",
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

    public static var op_gamecentermatchmakingteams_deleteinstance_c01a4af5d2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingTeams_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterMatchmakingTeams/{id}",
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

    public static var op_gamecentermatchmakingteams_updateinstance_6529b21616: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingTeams_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterMatchmakingTeams/{id}",
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

    public static var op_gamecenterplayerachievementsubmissions_createinstance_fefabed24d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterPlayerAchievementSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterPlayerAchievementSubmissions",
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

    public static var op_gamecenterscoremoderations_updateinstance_7215f0b5ed: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterScoreModerations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterScoreModerations/{id}",
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

    public static var op_inapppurchaseappstorereviewscreenshots_createinstance_42f275251b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAppStoreReviewScreenshots_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseAppStoreReviewScreenshots",
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

    public static var op_inapppurchaseappstorereviewscreenshots_deleteinstance_1910c950ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAppStoreReviewScreenshots_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}",
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

    public static var op_inapppurchaseappstorereviewscreenshots_getinstance_fb720ac81f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAppStoreReviewScreenshots_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}",
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

    public static var op_inapppurchaseappstorereviewscreenshots_updateinstance_6156809007: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAppStoreReviewScreenshots_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseAppStoreReviewScreenshots/{id}",
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

    public static var op_inapppurchaseavailabilities_createinstance_e8c09c66fd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAvailabilities_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseAvailabilities",
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

    public static var op_inapppurchaseavailabilities_getinstance_0271c860fe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAvailabilities_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseAvailabilities/{id}",
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

    public static var op_inapppurchaseavailabilities_availableterritories_gettomanyrelated_6b62ccb10b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAvailabilities_availableTerritories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseAvailabilities/{id}/availableTerritories",
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

    public static var op_inapppurchaseavailabilities_availableterritories_gettomanyrelationship_2960f3118f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseAvailabilities_availableTerritories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseAvailabilities/{id}/relationships/availableTerritories",
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

    public static var op_inapppurchasecontents_getinstance_edd04f457e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseContents_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseContents/{id}",
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

    public static var op_inapppurchaseimages_createinstance_fa6b3d1a43: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImages_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseImages",
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

    public static var op_inapppurchaseimages_deleteinstance_bec3155a89: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/inAppPurchaseImages/{id}",
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

    public static var op_inapppurchaseimages_getinstance_cae41b9a2f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImages_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]", "fields[inAppPurchases]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseimages_updateinstance_7c412f3249: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseImages/{id}",
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

    public static var op_inapppurchaselocalizations_createinstance_19a52e7055: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseLocalizations",
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

    public static var op_inapppurchaselocalizations_deleteinstance_f0dfce6e8e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/inAppPurchaseLocalizations/{id}",
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

    public static var op_inapppurchaselocalizations_getinstance_ddb2319e96: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseLocalizations]", "fields[inAppPurchases]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaselocalizations_updateinstance_d09bcdec67: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseLocalizations/{id}",
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

    public static var op_inapppurchaseoffercodecustomcodes_createinstance_4f7d4761d9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeCustomCodes_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseOfferCodeCustomCodes",
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
}

extension ASCClient {
    /// GET /v1/gameCenterMatchmakingRuleSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_getcollection_d261dbfff1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_getcollection_d261dbfff1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterMatchmakingRuleSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_createinstance_9b012539b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_createinstance_9b012539b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterMatchmakingRuleSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_deleteinstance_b63933ea5e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_deleteinstance_b63933ea5e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_getinstance_069cdbf184(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_getinstance_069cdbf184,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterMatchmakingRuleSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_updateinstance_7f55ef09e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_updateinstance_7f55ef09e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/matchmakingQueues (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelated_d0b994309a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelated_d0b994309a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/relationships/matchmakingQueues (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelationship_c7f22fdde5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_matchmakingqueues_gettomanyrelationship_c7f22fdde5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/relationships/rules (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_rules_gettomanyrelationship_b3cbf01b8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_rules_gettomanyrelationship_b3cbf01b8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/relationships/teams (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_teams_gettomanyrelationship_8cc4273425(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_teams_gettomanyrelationship_8cc4273425,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/rules (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_rules_gettomanyrelated_2915d554f3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_rules_gettomanyrelated_2915d554f3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRuleSets/{id}/teams (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesets_teams_gettomanyrelated_bb0ff45fec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesets_teams_gettomanyrelated_bb0ff45fec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterMatchmakingRules (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_createinstance_0b2ad98423(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_createinstance_0b2ad98423,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterMatchmakingRules/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_deleteinstance_4bcfd87347(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_deleteinstance_4bcfd87347,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterMatchmakingRules/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_updateinstance_76bbcfd9f5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_updateinstance_76bbcfd9f5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_matchmakingbooleanruleresults_getmetrics_c84c1f2cc5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_matchmakingbooleanruleresults_getmetrics_c84c1f2cc5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_matchmakingnumberruleresults_getmetrics_0aaf01bc80(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_matchmakingnumberruleresults_getmetrics_0aaf01bc80,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrules_matchmakingruleerrors_getmetrics_cb4f7dd4d1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrules_matchmakingruleerrors_getmetrics_cb4f7dd4d1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterMatchmakingTeams (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingteams_createinstance_921795cd05(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingteams_createinstance_921795cd05,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterMatchmakingTeams/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingteams_deleteinstance_c01a4af5d2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingteams_deleteinstance_c01a4af5d2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterMatchmakingTeams/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingteams_updateinstance_6529b21616(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingteams_updateinstance_6529b21616,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterPlayerAchievementSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterplayerachievementsubmissions_createinstance_fefabed24d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterplayerachievementsubmissions_createinstance_fefabed24d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterScoreModerations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterscoremoderations_updateinstance_7215f0b5ed(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterscoremoderations_updateinstance_7215f0b5ed,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseAppStoreReviewScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseappstorereviewscreenshots_createinstance_42f275251b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseappstorereviewscreenshots_createinstance_42f275251b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/inAppPurchaseAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseappstorereviewscreenshots_deleteinstance_1910c950ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseappstorereviewscreenshots_deleteinstance_1910c950ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseappstorereviewscreenshots_getinstance_fb720ac81f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseappstorereviewscreenshots_getinstance_fb720ac81f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseAppStoreReviewScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseappstorereviewscreenshots_updateinstance_6156809007(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseappstorereviewscreenshots_updateinstance_6156809007,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseavailabilities_createinstance_e8c09c66fd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseavailabilities_createinstance_e8c09c66fd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseavailabilities_getinstance_0271c860fe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseavailabilities_getinstance_0271c860fe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseAvailabilities/{id}/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseavailabilities_availableterritories_gettomanyrelated_6b62ccb10b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseavailabilities_availableterritories_gettomanyrelated_6b62ccb10b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseAvailabilities/{id}/relationships/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseavailabilities_availableterritories_gettomanyrelationship_2960f3118f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseavailabilities_availableterritories_gettomanyrelationship_2960f3118f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseContents/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasecontents_getinstance_edd04f457e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasecontents_getinstance_edd04f457e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseImages (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimages_createinstance_fa6b3d1a43(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimages_createinstance_fa6b3d1a43,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimages_deleteinstance_bec3155a89(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimages_deleteinstance_bec3155a89,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimages_getinstance_cae41b9a2f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimages_getinstance_cae41b9a2f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseimages_updateinstance_7c412f3249(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseimages_updateinstance_7c412f3249,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizations_createinstance_19a52e7055(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizations_createinstance_19a52e7055,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizations_deleteinstance_f0dfce6e8e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizations_deleteinstance_f0dfce6e8e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizations_getinstance_ddb2319e96(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizations_getinstance_ddb2319e96,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaselocalizations_updateinstance_d09bcdec67(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaselocalizations_updateinstance_d09bcdec67,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseOfferCodeCustomCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodecustomcodes_createinstance_4f7d4761d9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodecustomcodes_createinstance_4f7d4761d9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
