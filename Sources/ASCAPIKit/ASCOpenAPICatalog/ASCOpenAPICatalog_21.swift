// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterleaderboardsets_createinstance_af8a8274fd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSets",
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

    public static var op_gamecenterleaderboardsets_deleteinstance_fec254bb63: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}",
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

    public static var op_gamecenterleaderboardsets_getinstance_c1d7ce34a1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboards]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_updateinstance_b13a0c4f6f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}",
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

    public static var op_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelated_5c60b87372: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_gameCenterLeaderboards_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/gameCenterLeaderboards",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[archived]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[gameCenterLeaderboardSets]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_groupleaderboardset_gettoonerelated_7f1d4f7627: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_groupLeaderboardSet_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/groupLeaderboardSet",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboards]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_localizations_gettomanyrelated_fbb150be79: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSets]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_gamecenterleaderboards_deletetomanyrelationship_15e5947382: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_gameCenterLeaderboards_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelationship_b4aa0a955a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_gameCenterLeaderboards_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsets_gamecenterleaderboards_replacetomanyrelationship_47fa6e6360: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_gameCenterLeaderboards_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_gamecenterleaderboards_createtomanyrelationship_c0ce880f7f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_gameCenterLeaderboards_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_groupleaderboardset_gettoonerelationship_398ef57289: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_groupLeaderboardSet_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet",
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

    public static var op_gamecenterleaderboardsets_groupleaderboardset_updatetoonerelationship_7c4d345570: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_groupLeaderboardSet_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsets_localizations_gettomanyrelationship_9414793023: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/localizations",
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

    public static var op_gamecenterleaderboardsets_releases_gettomanyrelationship_ef6c3537d9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_releases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/relationships/releases",
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

    public static var op_gamecenterleaderboardsets_releases_gettomanyrelated_636265ff98: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSets_releases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSets/{id}/releases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "filter[gameCenterDetail]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_createinstance_a5799d5c81: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboards_deleteinstance_8cf3cc3801: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}",
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

    public static var op_gamecenterleaderboards_getinstance_7a06e09ed7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboardSets]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_updateinstance_0765e42b99: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}",
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

    public static var op_gamecenterleaderboards_groupleaderboard_gettoonerelated_d4c7dafac4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_groupLeaderboard_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/groupLeaderboard",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboardSets]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_localizations_gettomanyrelated_0e764113c5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboards]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_activity_updatetoonerelationship_851e0bb428: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_activity_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/activity",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_challenge_updatetoonerelationship_d4b68e51f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_challenge_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/challenge",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_groupleaderboard_gettoonerelationship_a262c1cf0c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_groupLeaderboard_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard",
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

    public static var op_gamecenterleaderboards_groupleaderboard_updatetoonerelationship_63b0309248: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_groupLeaderboard_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: [],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboards_localizations_gettomanyrelationship_29df978a77: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/localizations",
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

    public static var op_gamecenterleaderboards_releases_gettomanyrelationship_9c1d9f4063: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_releases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/relationships/releases",
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

    public static var op_gamecenterleaderboards_releases_gettomanyrelated_c7e13a7ee0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboards_releases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboards/{id}/releases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboards]", "filter[gameCenterDetail]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_getcollection_796ac6664a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_getCollection", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues",
            pathParameterNames: [],
            queryParameterNames: ["fields[gameCenterMatchmakingQueues]", "fields[gameCenterMatchmakingRuleSets]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_createinstance_092628ce72: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterMatchmakingQueues",
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

    public static var op_gamecentermatchmakingqueues_deleteinstance_0d249325ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}",
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

    public static var op_gamecentermatchmakingqueues_getinstance_bfbc4edee9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterMatchmakingQueues]", "fields[gameCenterMatchmakingRuleSets]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_updateinstance_55d7e658bb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}",
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

    public static var op_gamecentermatchmakingqueues_experimentmatchmakingqueuesizes_getmetrics_549cd6e075: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_experimentMatchmakingQueueSizes_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingQueueSizes",
            pathParameterNames: ["id"],
            queryParameterNames: ["granularity", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_experimentmatchmakingrequests_getmetrics_405ce84f86: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_experimentMatchmakingRequests_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[gameCenterDetail]", "filter[result]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_matchmakingqueuesizes_getmetrics_0a357d3042: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_matchmakingQueueSizes_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingQueueSizes",
            pathParameterNames: ["id"],
            queryParameterNames: ["granularity", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_matchmakingrequests_getmetrics_3405f2a8af: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_matchmakingRequests_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[gameCenterDetail]", "filter[result]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingqueues_matchmakingsessions_getmetrics_4e913dd0c8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingQueues_matchmakingSessions_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingSessions",
            pathParameterNames: ["id"],
            queryParameterNames: ["granularity", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentermatchmakingrulesettests_createinstance_521739226c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterMatchmakingRuleSetTests_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterMatchmakingRuleSetTests",
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
    /// POST /v1/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_createinstance_af8a8274fd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_createinstance_af8a8274fd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_deleteinstance_fec254bb63(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_deleteinstance_fec254bb63,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_getinstance_c1d7ce34a1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_getinstance_c1d7ce34a1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_updateinstance_b13a0c4f6f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_updateinstance_b13a0c4f6f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelated_5c60b87372(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelated_5c60b87372,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/groupLeaderboardSet (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_groupleaderboardset_gettoonerelated_7f1d4f7627(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_groupleaderboardset_gettoonerelated_7f1d4f7627,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_localizations_gettomanyrelated_fbb150be79(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_localizations_gettomanyrelated_fbb150be79,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_gamecenterleaderboards_deletetomanyrelationship_15e5947382(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_gamecenterleaderboards_deletetomanyrelationship_15e5947382,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelationship_b4aa0a955a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_gamecenterleaderboards_gettomanyrelationship_b4aa0a955a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_gamecenterleaderboards_replacetomanyrelationship_47fa6e6360(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_gamecenterleaderboards_replacetomanyrelationship_47fa6e6360,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_gamecenterleaderboards_createtomanyrelationship_c0ce880f7f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_gamecenterleaderboards_createtomanyrelationship_c0ce880f7f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_groupleaderboardset_gettoonerelationship_398ef57289(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_groupleaderboardset_gettoonerelationship_398ef57289,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSets/{id}/relationships/groupLeaderboardSet (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_groupleaderboardset_updatetoonerelationship_7c4d345570(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_groupleaderboardset_updatetoonerelationship_7c4d345570,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_localizations_gettomanyrelationship_9414793023(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_localizations_gettomanyrelationship_9414793023,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/relationships/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_releases_gettomanyrelationship_ef6c3537d9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_releases_gettomanyrelationship_ef6c3537d9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSets/{id}/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsets_releases_gettomanyrelated_636265ff98(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsets_releases_gettomanyrelated_636265ff98,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_createinstance_a5799d5c81(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_createinstance_a5799d5c81,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_deleteinstance_8cf3cc3801(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_deleteinstance_8cf3cc3801,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_getinstance_7a06e09ed7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_getinstance_7a06e09ed7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboards/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_updateinstance_0765e42b99(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_updateinstance_0765e42b99,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/groupLeaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_groupleaderboard_gettoonerelated_d4c7dafac4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_groupleaderboard_gettoonerelated_d4c7dafac4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_localizations_gettomanyrelated_0e764113c5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_localizations_gettomanyrelated_0e764113c5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboards/{id}/relationships/activity (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_activity_updatetoonerelationship_851e0bb428(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_activity_updatetoonerelationship_851e0bb428,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboards/{id}/relationships/challenge (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_challenge_updatetoonerelationship_d4b68e51f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_challenge_updatetoonerelationship_d4b68e51f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_groupleaderboard_gettoonerelationship_a262c1cf0c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_groupleaderboard_gettoonerelationship_a262c1cf0c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboards/{id}/relationships/groupLeaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_groupleaderboard_updatetoonerelationship_63b0309248(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_groupleaderboard_updatetoonerelationship_63b0309248,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_localizations_gettomanyrelationship_29df978a77(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_localizations_gettomanyrelationship_29df978a77,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/relationships/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_releases_gettomanyrelationship_9c1d9f4063(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_releases_gettomanyrelationship_9c1d9f4063,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboards/{id}/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboards_releases_gettomanyrelated_c7e13a7ee0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboards_releases_gettomanyrelated_c7e13a7ee0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_getcollection_796ac6664a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_getcollection_796ac6664a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterMatchmakingQueues (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_createinstance_092628ce72(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_createinstance_092628ce72,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterMatchmakingQueues/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_deleteinstance_0d249325ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_deleteinstance_0d249325ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_getinstance_bfbc4edee9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_getinstance_bfbc4edee9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterMatchmakingQueues/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_updateinstance_55d7e658bb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_updateinstance_55d7e658bb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingQueueSizes (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_experimentmatchmakingqueuesizes_getmetrics_549cd6e075(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_experimentmatchmakingqueuesizes_getmetrics_549cd6e075,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id}/metrics/experimentMatchmakingRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_experimentmatchmakingrequests_getmetrics_405ce84f86(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_experimentmatchmakingrequests_getmetrics_405ce84f86,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingQueueSizes (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_matchmakingqueuesizes_getmetrics_0a357d3042(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_matchmakingqueuesizes_getmetrics_0a357d3042,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_matchmakingrequests_getmetrics_3405f2a8af(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_matchmakingrequests_getmetrics_3405f2a8af,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingSessions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingqueues_matchmakingsessions_getmetrics_4e913dd0c8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingqueues_matchmakingsessions_getmetrics_4e913dd0c8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterMatchmakingRuleSetTests (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentermatchmakingrulesettests_createinstance_521739226c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentermatchmakingrulesettests_createinstance_521739226c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
