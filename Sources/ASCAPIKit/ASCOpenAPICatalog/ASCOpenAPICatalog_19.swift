// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterdetails_gamecentergroup_gettoonerelationship_839c8e050e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterGroup_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterGroup",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelationship_9aee716333: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsets_replacetomanyrelationship_dcc63bd3e1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSets_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelationship_4d4ceafa72: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSetsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSetsV2",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsetsv2_replacetomanyrelationship_226811e7f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardSetsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSetsV2",
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

    public static var op_gamecenterdetails_gamecenterleaderboards_gettomanyrelationship_e03ed27d4d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboards_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterdetails_gamecenterleaderboards_replacetomanyrelationship_b024eb3646: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboards_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelationship_14b2910015: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardsV2",
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

    public static var op_gamecenterdetails_gamecenterleaderboardsv2_replacetomanyrelationship_f63412c441: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_gameCenterLeaderboardsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardsV2",
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

    public static var op_gamecenterdetails_leaderboardreleases_gettomanyrelationship_0dad2f8f1b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_leaderboardReleases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/leaderboardReleases",
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

    public static var op_gamecenterdetails_leaderboardsetreleases_gettomanyrelationship_b3551d81df: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterDetails_leaderboardSetReleases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterDetails/{id}/relationships/leaderboardSetReleases",
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

    public static var op_gamecenterenabledversions_compatibleversions_gettomanyrelated_be32546cb8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterEnabledVersions_compatibleVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterEnabledVersions/{id}/compatibleVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[gameCenterEnabledVersions]", "filter[app]", "filter[id]", "filter[platform]", "filter[versionString]", "include", "limit", "limit[compatibleVersions]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterenabledversions_compatibleversions_deletetomanyrelationship_a25a6dcc59: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterEnabledVersions_compatibleVersions_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions",
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

    public static var op_gamecenterenabledversions_compatibleversions_gettomanyrelationship_37e72c7552: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterEnabledVersions_compatibleVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions",
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

    public static var op_gamecenterenabledversions_compatibleversions_replacetomanyrelationship_f90ea9d6c6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterEnabledVersions_compatibleVersions_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions",
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

    public static var op_gamecenterenabledversions_compatibleversions_createtomanyrelationship_ca038885a0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterEnabledVersions_compatibleVersions_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions",
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

    public static var op_gamecentergroups_getcollection_edbb11521d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_getCollection", method: "GET",
            pathTemplate: "/v1/gameCenterGroups",
            pathParameterNames: [],
            queryParameterNames: ["fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[gameCenterDetails]", "include", "limit", "limit[gameCenterAchievementsV2]", "limit[gameCenterAchievements]", "limit[gameCenterActivities]", "limit[gameCenterChallenges]", "limit[gameCenterDetails]", "limit[gameCenterLeaderboardSetsV2]", "limit[gameCenterLeaderboardSets]", "limit[gameCenterLeaderboardsV2]", "limit[gameCenterLeaderboards]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentergroups_createinstance_b5df06d229: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterGroups",
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

    public static var op_gamecentergroups_deleteinstance_430c5d64f9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterGroups/{id}",
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

    public static var op_gamecentergroups_getinstance_72edc25406: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}",
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

    public static var op_gamecentergroups_updateinstance_5acac43904: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}",
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

    public static var op_gamecentergroups_gamecenterachievements_gettomanyrelated_92d3eabf3f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterAchievements",
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

    public static var op_gamecentergroups_gamecenterachievementsv2_gettomanyrelated_2252e41703: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievementsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterAchievementsV2",
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

    public static var op_gamecentergroups_gamecenteractivities_gettomanyrelated_18a852d9a9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterActivities_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterActivities",
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

    public static var op_gamecentergroups_gamecenterchallenges_gettomanyrelated_dda7ed2af7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterChallenges_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterChallenges",
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

    public static var op_gamecentergroups_gamecenterdetails_gettomanyrelated_7d9aeda411: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterDetails_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterDetails",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[apps]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterActivityVersionReleases]", "fields[gameCenterAppVersions]", "fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallenges]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[gameCenterAppVersions.enabled]", "include", "limit", "limit[achievementReleases]", "limit[activityReleases]", "limit[challengeReleases]", "limit[challengesMinimumPlatformVersions]", "limit[gameCenterAchievementsV2]", "limit[gameCenterAchievements]", "limit[gameCenterActivities]", "limit[gameCenterAppVersions]", "limit[gameCenterChallenges]", "limit[gameCenterLeaderboardSetsV2]", "limit[gameCenterLeaderboardSets]", "limit[gameCenterLeaderboardsV2]", "limit[gameCenterLeaderboards]", "limit[leaderboardReleases]", "limit[leaderboardSetReleases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecentergroups_gamecenterleaderboardsets_gettomanyrelated_ad22193de6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterLeaderboardSets",
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

    public static var op_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelated_d7892f6bf4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSetsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterLeaderboardSetsV2",
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

    public static var op_gamecentergroups_gamecenterleaderboards_gettomanyrelated_d9f003622b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboards_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterLeaderboards",
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

    public static var op_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelated_1f9560bb0f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/gameCenterLeaderboardsV2",
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

    public static var op_gamecentergroups_gamecenterachievements_gettomanyrelationship_605f4af671: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterAchievements",
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

    public static var op_gamecentergroups_gamecenterachievements_replacetomanyrelationship_6aa1cc0e50: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievements_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterAchievements",
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

    public static var op_gamecentergroups_gamecenterachievementsv2_gettomanyrelationship_5815ce0d36: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievementsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterAchievementsV2",
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

    public static var op_gamecentergroups_gamecenterachievementsv2_replacetomanyrelationship_7d4f1a6511: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterAchievementsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterAchievementsV2",
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

    public static var op_gamecentergroups_gamecenteractivities_gettomanyrelationship_8457c39560: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterActivities_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterActivities",
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

    public static var op_gamecentergroups_gamecenterchallenges_gettomanyrelationship_0ff2f05831: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterChallenges_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterChallenges",
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

    public static var op_gamecentergroups_gamecenterdetails_gettomanyrelationship_af229453f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterDetails_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterDetails",
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

    public static var op_gamecentergroups_gamecenterleaderboardsets_gettomanyrelationship_af2f6547d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets",
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

    public static var op_gamecentergroups_gamecenterleaderboardsets_replacetomanyrelationship_14e8bdd4ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSets_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets",
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

    public static var op_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelationship_67636be7d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSetsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSetsV2",
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
    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterGroup (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecentergroup_gettoonerelationship_839c8e050e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecentergroup_gettoonerelationship_839c8e050e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelationship_9aee716333(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsets_gettomanyrelationship_9aee716333,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsets_replacetomanyrelationship_dcc63bd3e1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsets_replacetomanyrelationship_dcc63bd3e1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelationship_4d4ceafa72(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsetsv2_gettomanyrelationship_4d4ceafa72,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsetsv2_replacetomanyrelationship_226811e7f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsetsv2_replacetomanyrelationship_226811e7f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboards_gettomanyrelationship_e03ed27d4d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboards_gettomanyrelationship_e03ed27d4d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboards_replacetomanyrelationship_b024eb3646(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboards_replacetomanyrelationship_b024eb3646,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelationship_14b2910015(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsv2_gettomanyrelationship_14b2910015,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_gamecenterleaderboardsv2_replacetomanyrelationship_f63412c441(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_gamecenterleaderboardsv2_replacetomanyrelationship_f63412c441,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/leaderboardReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_leaderboardreleases_gettomanyrelationship_0dad2f8f1b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_leaderboardreleases_gettomanyrelationship_0dad2f8f1b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterDetails/{id}/relationships/leaderboardSetReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterdetails_leaderboardsetreleases_gettomanyrelationship_b3551d81df(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterdetails_leaderboardsetreleases_gettomanyrelationship_b3551d81df,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterEnabledVersions/{id}/compatibleVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterenabledversions_compatibleversions_gettomanyrelated_be32546cb8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterenabledversions_compatibleversions_gettomanyrelated_be32546cb8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterenabledversions_compatibleversions_deletetomanyrelationship_a25a6dcc59(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterenabledversions_compatibleversions_deletetomanyrelationship_a25a6dcc59,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterenabledversions_compatibleversions_gettomanyrelationship_37e72c7552(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterenabledversions_compatibleversions_gettomanyrelationship_37e72c7552,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterenabledversions_compatibleversions_replacetomanyrelationship_f90ea9d6c6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterenabledversions_compatibleversions_replacetomanyrelationship_f90ea9d6c6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterenabledversions_compatibleversions_createtomanyrelationship_ca038885a0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterenabledversions_compatibleversions_createtomanyrelationship_ca038885a0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_getcollection_edbb11521d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_getcollection_edbb11521d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_createinstance_b5df06d229(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_createinstance_b5df06d229,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_deleteinstance_430c5d64f9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_deleteinstance_430c5d64f9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_getinstance_72edc25406(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_getinstance_72edc25406,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_updateinstance_5acac43904(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_updateinstance_5acac43904,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievements_gettomanyrelated_92d3eabf3f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievements_gettomanyrelated_92d3eabf3f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievementsv2_gettomanyrelated_2252e41703(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievementsv2_gettomanyrelated_2252e41703,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterActivities (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenteractivities_gettomanyrelated_18a852d9a9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenteractivities_gettomanyrelated_18a852d9a9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterChallenges (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterchallenges_gettomanyrelated_dda7ed2af7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterchallenges_gettomanyrelated_dda7ed2af7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterdetails_gettomanyrelated_7d9aeda411(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterdetails_gettomanyrelated_7d9aeda411,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsets_gettomanyrelated_ad22193de6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsets_gettomanyrelated_ad22193de6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelated_d7892f6bf4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelated_d7892f6bf4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboards_gettomanyrelated_d9f003622b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboards_gettomanyrelated_d9f003622b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelated_1f9560bb0f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelated_1f9560bb0f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievements_gettomanyrelationship_605f4af671(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievements_gettomanyrelationship_605f4af671,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievements_replacetomanyrelationship_6aa1cc0e50(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievements_replacetomanyrelationship_6aa1cc0e50,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievementsv2_gettomanyrelationship_5815ce0d36(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievementsv2_gettomanyrelationship_5815ce0d36,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterAchievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterachievementsv2_replacetomanyrelationship_7d4f1a6511(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterachievementsv2_replacetomanyrelationship_7d4f1a6511,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterActivities (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenteractivities_gettomanyrelationship_8457c39560(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenteractivities_gettomanyrelationship_8457c39560,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterChallenges (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterchallenges_gettomanyrelationship_0ff2f05831(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterchallenges_gettomanyrelationship_0ff2f05831,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterdetails_gettomanyrelationship_af229453f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterdetails_gettomanyrelationship_af229453f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsets_gettomanyrelationship_af2f6547d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsets_gettomanyrelationship_af2f6547d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsets_replacetomanyrelationship_14e8bdd4ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsets_replacetomanyrelationship_14e8bdd4ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelationship_67636be7d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsetsv2_gettomanyrelationship_67636be7d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
