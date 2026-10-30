// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenterachievementsv2_updateinstance_03913bd3df: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterAchievements/{id}",
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

    public static var op_gamecenterachievementsv2_activity_updatetoonerelationship_f26840a634: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_activity_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v2/gameCenterAchievements/{id}/relationships/activity",
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

    public static var op_gamecenterachievementsv2_versions_gettomanyrelationship_41fe034a36: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterAchievements/{id}/relationships/versions",
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

    public static var op_gamecenterachievementsv2_versions_gettomanyrelated_975f3f767d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterAchievements/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementVersions]", "fields[gameCenterAchievements]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardimagesv2_createinstance_e08e5c3d50: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImagesV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardImages",
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

    public static var op_gamecenterleaderboardimagesv2_deleteinstance_d86ade7f58: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImagesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardImages/{id}",
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

    public static var op_gamecenterleaderboardimagesv2_getinstance_a767762c5a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImagesV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardimagesv2_updateinstance_397301e374: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImagesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardImages/{id}",
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

    public static var op_gamecenterleaderboardlocalizationsv2_createinstance_047ec438ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations",
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

    public static var op_gamecenterleaderboardlocalizationsv2_deleteinstance_14be78a6c6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations/{id}",
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

    public static var op_gamecenterleaderboardlocalizationsv2_getinstance_14a97c189a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboardVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardlocalizationsv2_updateinstance_41d24f984d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations/{id}",
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

    public static var op_gamecenterleaderboardlocalizationsv2_image_gettoonerelated_8d04fcfa3b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_image_getToOneRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardlocalizationsv2_image_gettoonerelationship_e17f280d9e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizationsV2_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardLocalizations/{id}/relationships/image",
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

    public static var op_gamecenterleaderboardsetimagesv2_createinstance_20de58b0bd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImagesV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardSetImages",
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

    public static var op_gamecenterleaderboardsetimagesv2_deleteinstance_f53dcac3ab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImagesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardSetImages/{id}",
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

    public static var op_gamecenterleaderboardsetimagesv2_getinstance_a8d692d768: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImagesV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetimagesv2_updateinstance_9877848cfa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImagesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardSetImages/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizationsv2_createinstance_97c551c7f5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations",
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

    public static var op_gamecenterleaderboardsetlocalizationsv2_deleteinstance_e52c488cd2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizationsv2_getinstance_d3c29c62f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetlocalizationsv2_updateinstance_2ac0962342: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelated_3cebf165ad: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_image_getToOneRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelationship_48e06250f3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizationsV2_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetLocalizations/{id}/relationships/image",
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

    public static var op_gamecenterleaderboardsetversionsv2_createinstance_a5c885a10c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetVersionsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardSetVersions",
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

    public static var op_gamecenterleaderboardsetversionsv2_getinstance_9424c69357: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetVersionsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetVersions]", "fields[gameCenterLeaderboardSets]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelated_4c4581465b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetVersionsV2_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelationship_d4d1fdcb25: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetVersionsV2_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSetVersions/{id}/relationships/localizations",
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

    public static var op_gamecenterleaderboardsetsv2_createinstance_2a7134549d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardSets",
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

    public static var op_gamecenterleaderboardsetsv2_deleteinstance_113e7609e5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}",
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

    public static var op_gamecenterleaderboardsetsv2_getinstance_b272e67ce3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterGroups]", "fields[gameCenterLeaderboardSetVersions]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "include", "limit[gameCenterLeaderboards]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetsv2_updateinstance_5cdd4ce4ee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}",
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

    public static var op_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelated_e61b49d598: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_gameCenterLeaderboards_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsetsv2_gamecenterleaderboards_deletetomanyrelationshi_b14d4bacda: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_gameCenterLeaderboards_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelationship_b63f4ac759: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_gameCenterLeaderboards_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsetsv2_gamecenterleaderboards_replacetomanyrelationsh_29b0b0d76d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_gameCenterLeaderboards_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsetsv2_gamecenterleaderboards_createtomanyrelationshi_4c25535a77: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_gameCenterLeaderboards_createToManyRelationship", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecenterleaderboardsetsv2_versions_gettomanyrelationship_e76006ab17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/relationships/versions",
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

    public static var op_gamecenterleaderboardsetsv2_versions_gettomanyrelated_fb4b32487d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetsV2_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterLeaderboardSets/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSetVersions]", "fields[gameCenterLeaderboardSets]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardversionsv2_createinstance_be46db33f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardVersionsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterLeaderboardVersions",
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
    /// PATCH /v2/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_updateinstance_03913bd3df(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_updateinstance_03913bd3df,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterAchievements/{id}/relationships/activity (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_activity_updatetoonerelationship_f26840a634(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_activity_updatetoonerelationship_f26840a634,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievements/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_versions_gettomanyrelationship_41fe034a36(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_versions_gettomanyrelationship_41fe034a36,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievements/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_versions_gettomanyrelated_975f3f767d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_versions_gettomanyrelated_975f3f767d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimagesv2_createinstance_e08e5c3d50(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimagesv2_createinstance_e08e5c3d50,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimagesv2_deleteinstance_d86ade7f58(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimagesv2_deleteinstance_d86ade7f58,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimagesv2_getinstance_a767762c5a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimagesv2_getinstance_a767762c5a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimagesv2_updateinstance_397301e374(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimagesv2_updateinstance_397301e374,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_createinstance_047ec438ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_createinstance_047ec438ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_deleteinstance_14be78a6c6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_deleteinstance_14be78a6c6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_getinstance_14a97c189a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_getinstance_14a97c189a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_updateinstance_41d24f984d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_updateinstance_41d24f984d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardLocalizations/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_image_gettoonerelated_8d04fcfa3b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_image_gettoonerelated_8d04fcfa3b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardLocalizations/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizationsv2_image_gettoonerelationship_e17f280d9e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizationsv2_image_gettoonerelationship_e17f280d9e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardSetImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimagesv2_createinstance_20de58b0bd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimagesv2_createinstance_20de58b0bd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimagesv2_deleteinstance_f53dcac3ab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimagesv2_deleteinstance_f53dcac3ab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimagesv2_getinstance_a8d692d768(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimagesv2_getinstance_a8d692d768,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimagesv2_updateinstance_9877848cfa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimagesv2_updateinstance_9877848cfa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardSetLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_createinstance_97c551c7f5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_createinstance_97c551c7f5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_deleteinstance_e52c488cd2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_deleteinstance_e52c488cd2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_getinstance_d3c29c62f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_getinstance_d3c29c62f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_updateinstance_2ac0962342(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_updateinstance_2ac0962342,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetLocalizations/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelated_3cebf165ad(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelated_3cebf165ad,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetLocalizations/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelationship_48e06250f3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizationsv2_image_gettoonerelationship_48e06250f3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardSetVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetversionsv2_createinstance_a5c885a10c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetversionsv2_createinstance_a5c885a10c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetversionsv2_getinstance_9424c69357(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetversionsv2_getinstance_9424c69357,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelated_4c4581465b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelated_4c4581465b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSetVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelationship_d4d1fdcb25(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetversionsv2_localizations_gettomanyrelationship_d4d1fdcb25,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardSets (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_createinstance_2a7134549d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_createinstance_2a7134549d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_deleteinstance_113e7609e5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_deleteinstance_113e7609e5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_getinstance_b272e67ce3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_getinstance_b272e67ce3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_updateinstance_5cdd4ce4ee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_updateinstance_5cdd4ce4ee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSets/{id}/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelated_e61b49d598(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelated_e61b49d598,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_gamecenterleaderboards_deletetomanyrelationshi_b14d4bacda(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_gamecenterleaderboards_deletetomanyrelationshi_b14d4bacda,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelationship_b63f4ac759(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_gamecenterleaderboards_gettomanyrelationship_b63f4ac759,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_gamecenterleaderboards_replacetomanyrelationsh_29b0b0d76d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_gamecenterleaderboards_replacetomanyrelationsh_29b0b0d76d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_gamecenterleaderboards_createtomanyrelationshi_4c25535a77(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_gamecenterleaderboards_createtomanyrelationshi_4c25535a77,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSets/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_versions_gettomanyrelationship_e76006ab17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_versions_gettomanyrelationship_e76006ab17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterLeaderboardSets/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetsv2_versions_gettomanyrelated_fb4b32487d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetsv2_versions_gettomanyrelated_fb4b32487d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterLeaderboardVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardversionsv2_createinstance_be46db33f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardversionsv2_createinstance_be46db33f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
