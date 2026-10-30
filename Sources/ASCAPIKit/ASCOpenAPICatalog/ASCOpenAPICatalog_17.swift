// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_gamecenteractivityversionreleases_createinstance_03705172a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersionReleases_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterActivityVersionReleases",
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

    public static var op_gamecenteractivityversionreleases_deleteinstance_d1e5ba85e2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersionReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterActivityVersionReleases/{id}",
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

    public static var op_gamecenteractivityversionreleases_getinstance_d59cc8ec9f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersionReleases_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersionReleases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityVersionReleases]", "fields[gameCenterActivityVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivityversions_createinstance_aab557b165: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterActivityVersions",
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

    public static var op_gamecenteractivityversions_getinstance_8a6bf3c462: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivities]", "fields[gameCenterActivityImages]", "fields[gameCenterActivityLocalizations]", "fields[gameCenterActivityVersionReleases]", "fields[gameCenterActivityVersions]", "include", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivityversions_updateinstance_018b87c4de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}",
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

    public static var op_gamecenteractivityversions_defaultimage_gettoonerelated_4cc4060912: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_defaultImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}/defaultImage",
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

    public static var op_gamecenteractivityversions_localizations_gettomanyrelated_56e7b21dcc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterActivityImages]", "fields[gameCenterActivityLocalizations]", "fields[gameCenterActivityVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenteractivityversions_defaultimage_gettoonerelationship_8fb83bb2a9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_defaultImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}/relationships/defaultImage",
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

    public static var op_gamecenteractivityversions_localizations_gettomanyrelationship_41f7a2f6ae: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterActivityVersions_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterActivityVersions/{id}/relationships/localizations",
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

    public static var op_gamecenterappversions_createinstance_b46706419d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterAppVersions",
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

    public static var op_gamecenterappversions_getinstance_0419c13ff0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterAppVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[gameCenterAppVersions]", "include", "limit[compatibilityVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterappversions_updateinstance_85c8e73e44: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterAppVersions/{id}",
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

    public static var op_gamecenterappversions_appstoreversion_gettoonerelated_49d5b3799a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_appStoreVersion_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/appStoreVersion",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackages]", "fields[appClipDefaultExperiences]", "fields[appStoreReviewDetails]", "fields[appStoreVersionExperiments]", "fields[appStoreVersionLocalizations]", "fields[appStoreVersionPhasedReleases]", "fields[appStoreVersionSubmissions]", "fields[appStoreVersions]", "fields[apps]", "fields[builds]", "fields[gameCenterAppVersions]", "fields[routingAppCoverages]", "include", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersionExperiments]", "limit[appStoreVersionLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterappversions_compatibilityversions_gettomanyrelated_efe185e068: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_compatibilityVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/compatibilityVersions",
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

    public static var op_gamecenterappversions_appstoreversion_gettoonerelationship_97b936856b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_appStoreVersion_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/relationships/appStoreVersion",
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

    public static var op_gamecenterappversions_compatibilityversions_deletetomanyrelationship_525a49748c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_compatibilityVersions_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions",
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

    public static var op_gamecenterappversions_compatibilityversions_gettomanyrelationship_09206fb989: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_compatibilityVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions",
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

    public static var op_gamecenterappversions_compatibilityversions_createtomanyrelationship_b0366dde57: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAppVersions_compatibilityVersions_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions",
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

    public static var op_gamecenterchallengeimages_createinstance_359520af14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeImages_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterChallengeImages",
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

    public static var op_gamecenterchallengeimages_deleteinstance_1faa10424c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterChallengeImages/{id}",
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

    public static var op_gamecenterchallengeimages_getinstance_0094cb2077: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeImages_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengeimages_updateinstance_bfc13a47e0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterChallengeImages/{id}",
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

    public static var op_gamecenterchallengelocalizations_createinstance_c68eca6a7a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterChallengeLocalizations",
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

    public static var op_gamecenterchallengelocalizations_deleteinstance_6352b904ca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterChallengeLocalizations/{id}",
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

    public static var op_gamecenterchallengelocalizations_getinstance_74a5f47e1e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]", "fields[gameCenterChallengeLocalizations]", "fields[gameCenterChallengeVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengelocalizations_updateinstance_40ccc38541: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/gameCenterChallengeLocalizations/{id}",
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

    public static var op_gamecenterchallengelocalizations_image_gettoonerelated_7926db39c3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_image_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeLocalizations/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengelocalizations_image_gettoonerelationship_0d3f1a7a44: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeLocalizations_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeLocalizations/{id}/relationships/image",
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

    public static var op_gamecenterchallengeversionreleases_createinstance_6ada07deff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersionReleases_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterChallengeVersionReleases",
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

    public static var op_gamecenterchallengeversionreleases_deleteinstance_4459e050a8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersionReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterChallengeVersionReleases/{id}",
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

    public static var op_gamecenterchallengeversionreleases_getinstance_c35128b70e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersionReleases_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersionReleases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallengeVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengeversions_createinstance_051afe62cf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterChallengeVersions",
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

    public static var op_gamecenterchallengeversions_getinstance_749cb7c615: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_getInstance", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]", "fields[gameCenterChallengeLocalizations]", "fields[gameCenterChallengeVersionReleases]", "fields[gameCenterChallengeVersions]", "fields[gameCenterChallenges]", "include", "limit[localizations]", "limit[releases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengeversions_defaultimage_gettoonerelated_653d16a097: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_defaultImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersions/{id}/defaultImage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengeversions_localizations_gettomanyrelated_2dbd28c383: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterChallengeImages]", "fields[gameCenterChallengeLocalizations]", "fields[gameCenterChallengeVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterchallengeversions_defaultimage_gettoonerelationship_89a2b6db4c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_defaultImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersions/{id}/relationships/defaultImage",
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

    public static var op_gamecenterchallengeversions_localizations_gettomanyrelationship_357ee7b6b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallengeVersions_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/gameCenterChallengeVersions/{id}/relationships/localizations",
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

    public static var op_gamecenterchallenges_createinstance_90aa1556df: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_createInstance", method: "POST",
            pathTemplate: "/v1/gameCenterChallenges",
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

    public static var op_gamecenterchallenges_deleteinstance_9efd56a172: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterChallenges_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/gameCenterChallenges/{id}",
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
}

extension ASCClient {
    /// POST /v1/gameCenterActivityVersionReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversionreleases_createinstance_03705172a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversionreleases_createinstance_03705172a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterActivityVersionReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversionreleases_deleteinstance_d1e5ba85e2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversionreleases_deleteinstance_d1e5ba85e2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersionReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversionreleases_getinstance_d59cc8ec9f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversionreleases_getinstance_d59cc8ec9f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterActivityVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_createinstance_aab557b165(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_createinstance_aab557b165,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_getinstance_8a6bf3c462(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_getinstance_8a6bf3c462,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterActivityVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_updateinstance_018b87c4de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_updateinstance_018b87c4de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersions/{id}/defaultImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_defaultimage_gettoonerelated_4cc4060912(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_defaultimage_gettoonerelated_4cc4060912,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_localizations_gettomanyrelated_56e7b21dcc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_localizations_gettomanyrelated_56e7b21dcc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersions/{id}/relationships/defaultImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_defaultimage_gettoonerelationship_8fb83bb2a9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_defaultimage_gettoonerelationship_8fb83bb2a9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterActivityVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenteractivityversions_localizations_gettomanyrelationship_41f7a2f6ae(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenteractivityversions_localizations_gettomanyrelationship_41f7a2f6ae,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAppVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_createinstance_b46706419d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_createinstance_b46706419d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAppVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_getinstance_0419c13ff0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_getinstance_0419c13ff0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterAppVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_updateinstance_85c8e73e44(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_updateinstance_85c8e73e44,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAppVersions/{id}/appStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_appstoreversion_gettoonerelated_49d5b3799a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_appstoreversion_gettoonerelated_49d5b3799a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAppVersions/{id}/compatibilityVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_compatibilityversions_gettomanyrelated_efe185e068(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_compatibilityversions_gettomanyrelated_efe185e068,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAppVersions/{id}/relationships/appStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_appstoreversion_gettoonerelationship_97b936856b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_appstoreversion_gettoonerelationship_97b936856b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_compatibilityversions_deletetomanyrelationship_525a49748c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_compatibilityversions_deletetomanyrelationship_525a49748c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_compatibilityversions_gettomanyrelationship_09206fb989(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_compatibilityversions_gettomanyrelationship_09206fb989,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterAppVersions/{id}/relationships/compatibilityVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterappversions_compatibilityversions_createtomanyrelationship_b0366dde57(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterappversions_compatibilityversions_createtomanyrelationship_b0366dde57,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterChallengeImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeimages_createinstance_359520af14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeimages_createinstance_359520af14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterChallengeImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeimages_deleteinstance_1faa10424c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeimages_deleteinstance_1faa10424c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeimages_getinstance_0094cb2077(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeimages_getinstance_0094cb2077,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterChallengeImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeimages_updateinstance_bfc13a47e0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeimages_updateinstance_bfc13a47e0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterChallengeLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_createinstance_c68eca6a7a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_createinstance_c68eca6a7a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterChallengeLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_deleteinstance_6352b904ca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_deleteinstance_6352b904ca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_getinstance_74a5f47e1e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_getinstance_74a5f47e1e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/gameCenterChallengeLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_updateinstance_40ccc38541(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_updateinstance_40ccc38541,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeLocalizations/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_image_gettoonerelated_7926db39c3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_image_gettoonerelated_7926db39c3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeLocalizations/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengelocalizations_image_gettoonerelationship_0d3f1a7a44(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengelocalizations_image_gettoonerelationship_0d3f1a7a44,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterChallengeVersionReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversionreleases_createinstance_6ada07deff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversionreleases_createinstance_6ada07deff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterChallengeVersionReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversionreleases_deleteinstance_4459e050a8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversionreleases_deleteinstance_4459e050a8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersionReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversionreleases_getinstance_c35128b70e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversionreleases_getinstance_c35128b70e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterChallengeVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_createinstance_051afe62cf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_createinstance_051afe62cf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_getinstance_749cb7c615(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_getinstance_749cb7c615,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersions/{id}/defaultImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_defaultimage_gettoonerelated_653d16a097(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_defaultimage_gettoonerelated_653d16a097,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_localizations_gettomanyrelated_2dbd28c383(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_localizations_gettomanyrelated_2dbd28c383,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersions/{id}/relationships/defaultImage (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_defaultimage_gettoonerelationship_89a2b6db4c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_defaultimage_gettoonerelationship_89a2b6db4c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/gameCenterChallengeVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallengeversions_localizations_gettomanyrelationship_357ee7b6b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallengeversions_localizations_gettomanyrelationship_357ee7b6b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/gameCenterChallenges (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_createinstance_90aa1556df(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_createinstance_90aa1556df,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/gameCenterChallenges/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterchallenges_deleteinstance_9efd56a172(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterchallenges_deleteinstance_9efd56a172,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
