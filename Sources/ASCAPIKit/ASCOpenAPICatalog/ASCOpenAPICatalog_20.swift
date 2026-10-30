// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecentergroups_gamecenterleaderboardsetsv2_replacetomanyrelationship_3e4123c27c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardSetsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSetsV2",
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

    public static var op_gamecentergroups_gamecenterleaderboards_gettomanyrelationship_79805f5d5b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboards_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecentergroups_gamecenterleaderboards_replacetomanyrelationship_6e2dd933ea: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboards_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards",
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

    public static var op_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelationship_508e7eea94: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardsV2",
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

    public static var op_gamecentergroups_gamecenterleaderboardsv2_replacetomanyrelationship_a770cc8d96: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterGroups_gameCenterLeaderboardsV2_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardsV2",
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

    public static var op_gamecenterleaderboardentrysubmissions_createinstance_449dee0ab0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardEntrySubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardEntrySubmissions",
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

    public static var op_gamecenterleaderboardimages_createinstance_eb98fe114a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImages_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardImages",
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

    public static var op_gamecenterleaderboardimages_deleteinstance_91af9c2e0e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardImages/{id}",
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

    public static var op_gamecenterleaderboardimages_getinstance_4953c72705: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImages_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardimages_updateinstance_87b49da17e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardImages/{id}",
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

    public static var op_gamecenterleaderboardlocalizations_createinstance_fb06574e17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations",
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

    public static var op_gamecenterleaderboardlocalizations_deleteinstance_bfb78f08dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations/{id}",
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

    public static var op_gamecenterleaderboardlocalizations_getinstance_9be5c387e1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "fields[gameCenterLeaderboards]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardlocalizations_updateinstance_73e3719369: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations/{id}",
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

    public static var op_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_bb37514747: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_gameCenterLeaderboardImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations/{id}/gameCenterLeaderboardImage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardImages]", "fields[gameCenterLeaderboardLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_d1a6a0c67b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardLocalizations_gameCenterLeaderboardImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardLocalizations/{id}/relationships/gameCenterLeaderboardImage",
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

    public static var op_gamecenterleaderboardreleases_createinstance_1bc2e3ab8f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardReleases_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardReleases",
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

    public static var op_gamecenterleaderboardreleases_deleteinstance_55dc46f3ee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardReleases/{id}",
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

    public static var op_gamecenterleaderboardreleases_getinstance_aec9997477: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardReleases_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardReleases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardReleases]", "fields[gameCenterLeaderboards]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetimages_createinstance_f64e026748: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImages_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSetImages",
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

    public static var op_gamecenterleaderboardsetimages_deleteinstance_9ed1357759: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSetImages/{id}",
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

    public static var op_gamecenterleaderboardsetimages_getinstance_2ae713356f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImages_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetimages_updateinstance_0fbd83c8a5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSetImages/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizations_createinstance_afc9b0835f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations",
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

    public static var op_gamecenterleaderboardsetlocalizations_deleteinstance_d5e3e03946: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizations_getinstance_90d043139b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "fields[gameCenterLeaderboardSets]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetlocalizations_updateinstance_6914f14ab9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_ef3180dbc3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterLeaderboardSetImages]", "fields[gameCenterLeaderboardSetLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_43b103b293: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetLocalizations/{id}/relationships/gameCenterLeaderboardSetImage",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_getcollection_a90a310ba1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_getCollection", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations",
            pathParameterNames: [],
            queryParameterNames: ["fields[gameCenterLeaderboardSetMemberLocalizations]", "fields[gameCenterLeaderboardSets]", "fields[gameCenterLeaderboards]", "filter[gameCenterLeaderboardSet]", "filter[gameCenterLeaderboard]", "include", "limit"],
            requiredQueryParameterNames: ["filter[gameCenterLeaderboardSet]", "filter[gameCenterLeaderboard]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterleaderboardsetmemberlocalizations_createinstance_e4d3971c51: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_deleteinstance_a4ed69f173: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_updateinstance_3a70084cf2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_82a9193599: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboard_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboard",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_7159b7d554: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboardSet_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboardSet",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_eb74f1b93a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboard_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/relationships/gameCenterLeaderboard",
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

    public static var op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_da5e8b4921: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboardSet_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/relationships/gameCenterLeaderboardSet",
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

    public static var op_gamecenterleaderboardsetreleases_createinstance_98056cf120: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetReleases_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterLeaderboardSetReleases",
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

    public static var op_gamecenterleaderboardsetreleases_deleteinstance_095586bb13: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterLeaderboardSetReleases/{id}",
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

    public static var op_gamecenterleaderboardsetreleases_getinstance_5f9d567b7f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterLeaderboardSetReleases_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterLeaderboardSetReleases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterDetails]", "fields[gameCenterLeaderboardSetReleases]", "fields[gameCenterLeaderboardSets]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }
}

extension ASCClient {
    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardSetsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsetsv2_replacetomanyrelationship_3e4123c27c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsetsv2_replacetomanyrelationship_3e4123c27c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboards_gettomanyrelationship_79805f5d5b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboards_gettomanyrelationship_79805f5d5b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboards_replacetomanyrelationship_6e2dd933ea(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboards_replacetomanyrelationship_6e2dd933ea,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelationship_508e7eea94(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsv2_gettomanyrelationship_508e7eea94,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboardsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecentergroups_gamecenterleaderboardsv2_replacetomanyrelationship_a770cc8d96(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecentergroups_gamecenterleaderboardsv2_replacetomanyrelationship_a770cc8d96,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardEntrySubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardentrysubmissions_createinstance_449dee0ab0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardentrysubmissions_createinstance_449dee0ab0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimages_createinstance_eb98fe114a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimages_createinstance_eb98fe114a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimages_deleteinstance_91af9c2e0e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimages_deleteinstance_91af9c2e0e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimages_getinstance_4953c72705(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimages_getinstance_4953c72705,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardimages_updateinstance_87b49da17e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardimages_updateinstance_87b49da17e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_createinstance_fb06574e17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_createinstance_fb06574e17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_deleteinstance_bfb78f08dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_deleteinstance_bfb78f08dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_getinstance_9be5c387e1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_getinstance_9be5c387e1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_updateinstance_73e3719369(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_updateinstance_73e3719369,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardLocalizations/{id}/gameCenterLeaderboardImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_bb37514747(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_bb37514747,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardLocalizations/{id}/relationships/gameCenterLeaderboardImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_d1a6a0c67b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardlocalizations_gamecenterleaderboardimage_gettoonerela_d1a6a0c67b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardreleases_createinstance_1bc2e3ab8f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardreleases_createinstance_1bc2e3ab8f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardreleases_deleteinstance_55dc46f3ee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardreleases_deleteinstance_55dc46f3ee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardreleases_getinstance_aec9997477(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardreleases_getinstance_aec9997477,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardSetImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimages_createinstance_f64e026748(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimages_createinstance_f64e026748,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimages_deleteinstance_9ed1357759(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimages_deleteinstance_9ed1357759,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimages_getinstance_2ae713356f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimages_getinstance_2ae713356f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSetImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetimages_updateinstance_0fbd83c8a5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetimages_updateinstance_0fbd83c8a5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardSetLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_createinstance_afc9b0835f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_createinstance_afc9b0835f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_deleteinstance_d5e3e03946(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_deleteinstance_d5e3e03946,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_getinstance_90d043139b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_getinstance_90d043139b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSetLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_updateinstance_6914f14ab9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_updateinstance_6914f14ab9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_ef3180dbc3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_ef3180dbc3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetLocalizations/{id}/relationships/gameCenterLeaderboardSetImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_43b103b293(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetlocalizations_gamecenterleaderboardsetimage_gettoo_43b103b293,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetMemberLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_getcollection_a90a310ba1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_getcollection_a90a310ba1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardSetMemberLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_createinstance_e4d3971c51(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_createinstance_e4d3971c51,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSetMemberLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_deleteinstance_a4ed69f173(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_deleteinstance_a4ed69f173,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterLeaderboardSetMemberLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_updateinstance_3a70084cf2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_updateinstance_3a70084cf2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_82a9193599(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_82a9193599,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboardSet (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_7159b7d554(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_7159b7d554,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/relationships/gameCenterLeaderboard (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_eb74f1b93a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboard_gettoone_eb74f1b93a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetMemberLocalizations/{id}/relationships/gameCenterLeaderboardSet (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_da5e8b4921(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetmemberlocalizations_gamecenterleaderboardset_getto_da5e8b4921,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterLeaderboardSetReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetreleases_createinstance_98056cf120(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetreleases_createinstance_98056cf120,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterLeaderboardSetReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetreleases_deleteinstance_095586bb13(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetreleases_deleteinstance_095586bb13,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterLeaderboardSetReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterleaderboardsetreleases_getinstance_5f9d567b7f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterleaderboardsetreleases_getinstance_5f9d567b7f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
