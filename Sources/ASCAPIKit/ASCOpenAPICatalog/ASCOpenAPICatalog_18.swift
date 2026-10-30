// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterchallenges_getinstance_db19d583a5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterChallenges/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeVersions]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboards]", "include", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallenges_updateinstance_0fe1e8c4fc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterChallenges/{id}",
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

    public static var op_gamecenterchallenges_leaderboard_updatetoonerelationship_38908f8ad1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_leaderboard_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterChallenges/{id}/relationships/leaderboard",
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

    public static var op_gamecenterchallenges_leaderboardv2_updatetoonerelationship_01fbca922a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_leaderboardV2_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterChallenges/{id}/relationships/leaderboardV2",
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

    public static var op_gamecenterchallenges_versions_gettomanyrelationship_87228592a7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterChallenges/{id}/relationships/versions",
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

    public static var op_gamecenterchallenges_versions_gettomanyrelated_0b9b2d7f45: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterChallenges/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]", "fields[gameCenterChallengeLocalizations]", "fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallengeVersions]", "fields[gameCenterChallenges]", "include", "limit", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetailplayers_updateinstance_4233aa7de4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetailPlayers_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetailPlayers/{id}",
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

    public static var op_gamecenterdetails_createinstance_2a8d7a52f2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterDetails",
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

    public static var op_gamecenterdetails_getinstance_0bee36a163: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}",
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

    public static var op_gamecenterdetails_updateinstance_19b25a0f8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}",
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

    public static var op_gamecenterdetails_achievementreleases_gettomanyrelated_72ccde4d28: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_achievementReleases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/achievementReleases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterDetails]", "filter[gameCenterAchievement]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_activityreleases_gettomanyrelated_16a82a9763: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_activityReleases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/activityReleases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityVersionReleases]", "fields[gameCenterActivityVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_blockedplayers_gettomanyrelated_96ba10b855: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_blockedPlayers_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/blockedPlayers",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetailPlayers]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_challengereleases_gettomanyrelated_c4125723e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_challengeReleases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/challengeReleases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallengeVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterachievements_gettomanyrelated_a63314fdd5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterAchievements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "filter[archived]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterachievementsv2_gettomanyrelated_6b690770ca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievementsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterAchievementsV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementVersions]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "filter[archived]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenteractivities_gettomanyrelated_dfad12b826: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterActivities_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterActivities",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterActivityVersions]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboards]", "include", "limit", "limit[achievementsV2]", "limit[achievements]", "limit[leaderboardsV2]", "limit[leaderboards]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterappversions_gettomanyrelated_09483a9b41: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAppVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterAppVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[gameCenterAppVersions]", "filter[enabled]", "include", "limit", "limit[compatibilityVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterchallenges_gettomanyrelated_7c2f210502: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterChallenges_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterChallenges",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeVersions]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboards]", "filter[archived]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecentergroup_gettoonerelated_dd4bb50450: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterGroup_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterGroup",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterAchievementsV2]", "limit[gameCenterAchievements]", "limit[gameCenterActivities]", "limit[gameCenterChallenges]", "limit[gameCenterDetails]", "limit[gameCenterLeaderboardSetsV2]", "limit[gameCenterLeaderboardSets]", "limit[gameCenterLeaderboardsV2]", "limit[gameCenterLeaderboards]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelated_5265be94e5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterLeaderboardSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[gameCenterLeaderboards]", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelated_1171e7213e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSetsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterLeaderboardSetsV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSetVersions]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[gameCenterLeaderboards]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_gamecenterleaderboards_gettomanyrelated_66b09c5f4b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboards_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterLeaderboards",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelated_d5fcf056e5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/gameCenterLeaderboardsV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboardVersions]", "fields[gameCenterLeaderboards]", "filter[archived]", "filter[id]", "filter[referenceName]", "include", "limit", "limit[gameCenterLeaderboardSets]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_leaderboardreleases_gettomanyrelated_6d8cfb6caa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_leaderboardReleases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/leaderboardReleases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboards]", "filter[gameCenterLeaderboard]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_leaderboardsetreleases_gettomanyrelated_b39f4dfbe7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_leaderboardSetReleases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/leaderboardSetReleases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "filter[gameCenterLeaderboardSet]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_classicmatchmakingrequests_getmetrics_b4195996dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_classicMatchmakingRequests_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/metrics/classicMatchmakingRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[result]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_rulebasedmatchmakingrequests_getmetrics_f54dd05568: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_ruleBasedMatchmakingRequests_getMetrics", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[result]", "granularity", "groupBy", "limit", "sort"],
            requiredQueryParameterNames: ["granularity"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterdetails_achievementreleases_gettomanyrelationship_3fa803da86: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_achievementReleases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/achievementReleases",
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

    public static var op_gamecenterdetails_activityreleases_gettomanyrelationship_80e5ab9dab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_activityReleases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/activityReleases",
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

    public static var op_gamecenterdetails_blockedplayers_gettomanyrelationship_884fff70be: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_blockedPlayers_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/blockedPlayers",
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

    public static var op_gamecenterdetails_challengereleases_gettomanyrelationship_9d203a7fa6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_challengeReleases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/challengeReleases",
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

    public static var op_gamecenterdetails_challengesminimumplatformversions_replacetomanyrelations_e73bda9aa1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_challengesMinimumPlatformVersions_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/challengesMinimumPlatformVersions",
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

    public static var op_gamecenterdetails_gamecenterachievements_gettomanyrelationship_6d3c06dbfd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterAchievements",
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

    public static var op_gamecenterdetails_gamecenterachievements_replacetomanyrelationship_f92bee490e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievements_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterAchievements",
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

    public static var op_gamecenterdetails_gamecenterachievementsv2_gettomanyrelationship_8e1bef54ca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievementsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterAchievementsV2",
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

    public static var op_gamecenterdetails_gamecenterachievementsv2_replacetomanyrelationship_083c771f1e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAchievementsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterAchievementsV2",
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

    public static var op_gamecenterdetails_gamecenteractivities_gettomanyrelationship_be7c615896: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterActivities_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterActivities",
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

    public static var op_gamecenterdetails_gamecenterappversions_gettomanyrelationship_6f38be0991: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterAppVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterAppVersions",
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

    public static var op_gamecenterdetails_gamecenterchallenges_gettomanyrelationship_39798b182d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterChallenges_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterChallenges",
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
    /// GET /v1/gameCenterChallenges/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_getinstance_db19d583a5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_getinstance_db19d583a5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterChallenges/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_updateinstance_0fe1e8c4fc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_updateinstance_0fe1e8c4fc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterChallenges/{id}/relationships/leaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_leaderboard_updatetoonerelationship_38908f8ad1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_leaderboard_updatetoonerelationship_38908f8ad1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterChallenges/{id}/relationships/leaderboardV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_leaderboardv2_updatetoonerelationship_01fbca922a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_leaderboardv2_updatetoonerelationship_01fbca922a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallenges/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_versions_gettomanyrelationship_87228592a7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_versions_gettomanyrelationship_87228592a7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallenges/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_versions_gettomanyrelated_0b9b2d7f45(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_versions_gettomanyrelated_0b9b2d7f45,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetailPlayers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetailplayers_updateinstance_4233aa7de4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetailplayers_updateinstance_4233aa7de4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_createinstance_2a8d7a52f2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_createinstance_2a8d7a52f2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_getinstance_0bee36a163(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_getinstance_0bee36a163,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_updateinstance_19b25a0f8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_updateinstance_19b25a0f8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/achievementReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_achievementreleases_gettomanyrelated_72ccde4d28(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_achievementreleases_gettomanyrelated_72ccde4d28,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/activityReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_activityreleases_gettomanyrelated_16a82a9763(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_activityreleases_gettomanyrelated_16a82a9763,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/blockedPlayers (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_blockedplayers_gettomanyrelated_96ba10b855(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_blockedplayers_gettomanyrelated_96ba10b855,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/challengeReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_challengereleases_gettomanyrelated_c4125723e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_challengereleases_gettomanyrelated_c4125723e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievements_gettomanyrelated_a63314fdd5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievements_gettomanyrelated_a63314fdd5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievementsv2_gettomanyrelated_6b690770ca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievementsv2_gettomanyrelated_6b690770ca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterActivities (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenteractivities_gettomanyrelated_dfad12b826(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenteractivities_gettomanyrelated_dfad12b826,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterAppVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterappversions_gettomanyrelated_09483a9b41(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterappversions_gettomanyrelated_09483a9b41,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterChallenges (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterchallenges_gettomanyrelated_7c2f210502(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterchallenges_gettomanyrelated_7c2f210502,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterGroup (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecentergroup_gettoonerelated_dd4bb50450(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecentergroup_gettoonerelated_dd4bb50450,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelated_5265be94e5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelated_5265be94e5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelated_1171e7213e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelated_1171e7213e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboards_gettomanyrelated_66b09c5f4b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboards_gettomanyrelated_66b09c5f4b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelated_d5fcf056e5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelated_d5fcf056e5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/leaderboardReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_leaderboardreleases_gettomanyrelated_6d8cfb6caa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_leaderboardreleases_gettomanyrelated_6d8cfb6caa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/leaderboardSetReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_leaderboardsetreleases_gettomanyrelated_b39f4dfbe7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_leaderboardsetreleases_gettomanyrelated_b39f4dfbe7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/metrics/classicMatchmakingRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_classicmatchmakingrequests_getmetrics_b4195996dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_classicmatchmakingrequests_getmetrics_b4195996dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_rulebasedmatchmakingrequests_getmetrics_f54dd05568(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_rulebasedmatchmakingrequests_getmetrics_f54dd05568,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/achievementReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_achievementreleases_gettomanyrelationship_3fa803da86(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_achievementreleases_gettomanyrelationship_3fa803da86,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/activityReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_activityreleases_gettomanyrelationship_80e5ab9dab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_activityreleases_gettomanyrelationship_80e5ab9dab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/blockedPlayers (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_blockedplayers_gettomanyrelationship_884fff70be(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_blockedplayers_gettomanyrelationship_884fff70be,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/challengeReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_challengereleases_gettomanyrelationship_9d203a7fa6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_challengereleases_gettomanyrelationship_9d203a7fa6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/challengesMinimumPlatformVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_challengesminimumplatformversions_replacetomanyrelations_e73bda9aa1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_challengesminimumplatformversions_replacetomanyrelations_e73bda9aa1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievements_gettomanyrelationship_6d3c06dbfd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievements_gettomanyrelationship_6d3c06dbfd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievements_replacetomanyrelationship_f92bee490e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievements_replacetomanyrelationship_f92bee490e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievementsv2_gettomanyrelationship_8e1bef54ca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievementsv2_gettomanyrelationship_8e1bef54ca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterachievementsv2_replacetomanyrelationship_083c771f1e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterachievementsv2_replacetomanyrelationship_083c771f1e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterActivities (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenteractivities_gettomanyrelationship_be7c615896(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenteractivities_gettomanyrelationship_be7c615896,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterAppVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterappversions_gettomanyrelationship_6f38be0991(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterappversions_gettomanyrelationship_6f38be0991,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterChallenges (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterchallenges_gettomanyrelationship_39798b182d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterchallenges_gettomanyrelationship_39798b182d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
