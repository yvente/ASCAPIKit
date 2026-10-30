// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_0e8c1e8b14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizations_gameCenterAchievementImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievementImage",
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

    public static var op_gamecenterachievementreleases_createinstance_2a4ddecae7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementReleases_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterAchievementReleases",
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

    public static var op_gamecenterachievementreleases_deleteinstance_b026be788b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterAchievementReleases/{id}",
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

    public static var op_gamecenterachievementreleases_getinstance_42bf9e47ee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementReleases_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterAchievementReleases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterDetails]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievements_createinstance_bff725979d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterAchievements",
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

    public static var op_gamecenterachievements_deleteinstance_59dc2a06f4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterAchievements/{id}",
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

    public static var op_gamecenterachievements_getinstance_97f1ff46c2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "include", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievements_updateinstance_8e6f2acd3d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterAchievements/{id}",
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

    public static var op_gamecenterachievements_groupachievement_gettoonerelated_39c0ba92b6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_groupAchievement_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/groupAchievement",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "include", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievements_localizations_gettomanyrelated_f088884966: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievements]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievements_activity_updatetoonerelationship_964fe37cca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_activity_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterAchievements/{id}/relationships/activity",
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

    public static var op_gamecenterachievements_groupachievement_gettoonerelationship_168fb93c93: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_groupAchievement_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/relationships/groupAchievement",
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

    public static var op_gamecenterachievements_groupachievement_updatetoonerelationship_7a638159e2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_groupAchievement_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterAchievements/{id}/relationships/groupAchievement",
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

    public static var op_gamecenterachievements_localizations_gettomanyrelationship_4d61b1b3b2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/relationships/localizations",
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

    public static var op_gamecenterachievements_releases_gettomanyrelationship_db28ccb0da: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_releases_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/relationships/releases",
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

    public static var op_gamecenterachievements_releases_gettomanyrelated_0b0754b185: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievements_releases_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAchievements/{id}/releases",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementReleases]", "fields[gameCenterAchievements]", "fields[gameCenterDetails]", "filter[gameCenterDetail]", "filter[live]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivities_createinstance_4586e0a434: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterActivities",
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

    public static var op_gamecenteractivities_deleteinstance_e3c6246ef2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivities/{id}",
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

    public static var op_gamecenteractivities_getinstance_70ee795923: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterActivities/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterActivityVersions]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboards]", "include", "limit[achievementsV2]", "limit[achievements]", "limit[leaderboardsV2]", "limit[leaderboards]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivities_updateinstance_d53aeaa302: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterActivities/{id}",
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

    public static var op_gamecenteractivities_achievements_deletetomanyrelationship_947f60617e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_achievements_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/achievements",
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

    public static var op_gamecenteractivities_achievements_createtomanyrelationship_327d27c969: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_achievements_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/achievements",
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

    public static var op_gamecenteractivities_achievementsv2_deletetomanyrelationship_0a57da9024: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_achievementsV2_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/achievementsV2",
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

    public static var op_gamecenteractivities_achievementsv2_createtomanyrelationship_996b4b8a42: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_achievementsV2_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/achievementsV2",
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

    public static var op_gamecenteractivities_leaderboards_deletetomanyrelationship_53cf32c63c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_leaderboards_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/leaderboards",
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

    public static var op_gamecenteractivities_leaderboards_createtomanyrelationship_1a87e62a0e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_leaderboards_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/leaderboards",
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

    public static var op_gamecenteractivities_leaderboardsv2_deletetomanyrelationship_f35dca7f11: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_leaderboardsV2_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/leaderboardsV2",
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

    public static var op_gamecenteractivities_leaderboardsv2_createtomanyrelationship_6cf6430917: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_leaderboardsV2_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/leaderboardsV2",
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

    public static var op_gamecenteractivities_versions_gettomanyrelationship_bb99420fb5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterActivities/{id}/relationships/versions",
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

    public static var op_gamecenteractivities_versions_gettomanyrelated_b5c1887451: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivities_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterActivities/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterActivityImages]", "fields[gameCenterActivityLocalizations]", "fields[gameCenterActivityVersionReleases]", "fields[gameCenterActivityVersions]", "include", "limit", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivityimages_createinstance_643acf996f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityImages_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterActivityImages",
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

    public static var op_gamecenteractivityimages_deleteinstance_f828151eff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivityImages/{id}",
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

    public static var op_gamecenteractivityimages_getinstance_6d0cebbf17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityImages_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterActivityImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivityimages_updateinstance_37b0d3c6be: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterActivityImages/{id}",
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

    public static var op_gamecenteractivitylocalizations_createinstance_573d54d6dc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterActivityLocalizations",
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

    public static var op_gamecenteractivitylocalizations_deleteinstance_35012cdd18: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivityLocalizations/{id}",
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

    public static var op_gamecenteractivitylocalizations_getinstance_201f8eafb6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterActivityLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityImages]", "fields[gameCenterActivityLocalizations]", "fields[gameCenterActivityVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivitylocalizations_updateinstance_e9fe2c79b7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterActivityLocalizations/{id}",
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

    public static var op_gamecenteractivitylocalizations_image_gettoonerelated_c82208d00b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_image_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterActivityLocalizations/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivitylocalizations_image_gettoonerelationship_9394c1db58: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityLocalizations_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterActivityLocalizations/{id}/relationships/image",
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
}

extension ASCClient {
    /// GET /v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievementImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_0e8c1e8b14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizations_gamecenterachievementimage_gettoonerela_0e8c1e8b14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAchievementReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementreleases_createinstance_2a4ddecae7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementreleases_createinstance_2a4ddecae7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterAchievementReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementreleases_deleteinstance_b026be788b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementreleases_deleteinstance_b026be788b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievementReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementreleases_getinstance_42bf9e47ee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementreleases_getinstance_42bf9e47ee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_createinstance_bff725979d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_createinstance_bff725979d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_deleteinstance_59dc2a06f4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_deleteinstance_59dc2a06f4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_getinstance_97f1ff46c2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_getinstance_97f1ff46c2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_updateinstance_8e6f2acd3d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_updateinstance_8e6f2acd3d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/groupAchievement (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_groupachievement_gettoonerelated_39c0ba92b6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_groupachievement_gettoonerelated_39c0ba92b6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_localizations_gettomanyrelated_f088884966(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_localizations_gettomanyrelated_f088884966,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAchievements/{id}/relationships/activity (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_activity_updatetoonerelationship_964fe37cca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_activity_updatetoonerelationship_964fe37cca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/relationships/groupAchievement (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_groupachievement_gettoonerelationship_168fb93c93(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_groupachievement_gettoonerelationship_168fb93c93,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAchievements/{id}/relationships/groupAchievement (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_groupachievement_updatetoonerelationship_7a638159e2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_groupachievement_updatetoonerelationship_7a638159e2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_localizations_gettomanyrelationship_4d61b1b3b2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_localizations_gettomanyrelationship_4d61b1b3b2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/relationships/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_releases_gettomanyrelationship_db28ccb0da(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_releases_gettomanyrelationship_db28ccb0da,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAchievements/{id}/releases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievements_releases_gettomanyrelated_0b0754b185(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievements_releases_gettomanyrelated_0b0754b185,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivities (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_createinstance_4586e0a434(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_createinstance_4586e0a434,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_deleteinstance_e3c6246ef2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_deleteinstance_e3c6246ef2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_getinstance_70ee795923(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_getinstance_70ee795923,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterActivities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_updateinstance_d53aeaa302(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_updateinstance_d53aeaa302,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivities/{id}/relationships/achievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_achievements_deletetomanyrelationship_947f60617e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_achievements_deletetomanyrelationship_947f60617e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivities/{id}/relationships/achievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_achievements_createtomanyrelationship_327d27c969(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_achievements_createtomanyrelationship_327d27c969,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivities/{id}/relationships/achievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_achievementsv2_deletetomanyrelationship_0a57da9024(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_achievementsv2_deletetomanyrelationship_0a57da9024,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivities/{id}/relationships/achievementsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_achievementsv2_createtomanyrelationship_996b4b8a42(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_achievementsv2_createtomanyrelationship_996b4b8a42,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivities/{id}/relationships/leaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_leaderboards_deletetomanyrelationship_53cf32c63c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_leaderboards_deletetomanyrelationship_53cf32c63c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivities/{id}/relationships/leaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_leaderboards_createtomanyrelationship_1a87e62a0e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_leaderboards_createtomanyrelationship_1a87e62a0e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivities/{id}/relationships/leaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_leaderboardsv2_deletetomanyrelationship_f35dca7f11(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_leaderboardsv2_deletetomanyrelationship_f35dca7f11,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivities/{id}/relationships/leaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_leaderboardsv2_createtomanyrelationship_6cf6430917(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_leaderboardsv2_createtomanyrelationship_6cf6430917,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivities/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_versions_gettomanyrelationship_bb99420fb5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_versions_gettomanyrelationship_bb99420fb5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivities/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivities_versions_gettomanyrelated_b5c1887451(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivities_versions_gettomanyrelated_b5c1887451,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivityImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityimages_createinstance_643acf996f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityimages_createinstance_643acf996f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivityImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityimages_deleteinstance_f828151eff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityimages_deleteinstance_f828151eff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityimages_getinstance_6d0cebbf17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityimages_getinstance_6d0cebbf17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterActivityImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityimages_updateinstance_37b0d3c6be(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityimages_updateinstance_37b0d3c6be,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivityLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_createinstance_573d54d6dc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_createinstance_573d54d6dc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivityLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_deleteinstance_35012cdd18(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_deleteinstance_35012cdd18,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_getinstance_201f8eafb6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_getinstance_201f8eafb6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterActivityLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_updateinstance_e9fe2c79b7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_updateinstance_e9fe2c79b7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityLocalizations/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_image_gettoonerelated_c82208d00b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_image_gettoonerelated_c82208d00b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityLocalizations/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivitylocalizations_image_gettoonerelationship_9394c1db58(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivitylocalizations_image_gettoonerelationship_9394c1db58,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
