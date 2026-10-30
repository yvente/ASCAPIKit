// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_appevents_createinstance_25b1c2cf67: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_createInstance", method: "POST",
            pathTemplate: "/v1/appEvents",
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

    public static var op_appevents_deleteinstance_d5337e4b6d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appEvents/{id}",
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

    public static var op_appevents_getinstance_46353f336a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_getInstance", method: "GET",
            pathTemplate: "/v1/appEvents/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEvents]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appevents_updateinstance_6c782a3e09: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appEvents/{id}",
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

    public static var op_appevents_localizations_gettomanyrelated_2223f573de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appEvents/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appEventLocalizations]", "fields[appEventScreenshots]", "fields[appEventVideoClips]", "fields[appEvents]", "include", "limit", "limit[appEventScreenshots]", "limit[appEventVideoClips]", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appevents_localizations_gettomanyrelationship_e59c14fac0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEvents_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appEvents/{id}/relationships/localizations",
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

    public static var op_appinfolocalizations_createinstance_318c6d663c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfoLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appInfoLocalizations",
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

    public static var op_appinfolocalizations_deleteinstance_33985b583a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfoLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appInfoLocalizations/{id}",
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

    public static var op_appinfolocalizations_getinstance_acdd29436b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfoLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appInfoLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appInfoLocalizations]", "fields[appInfos]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfolocalizations_updateinstance_ef7a6ac43e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfoLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appInfoLocalizations/{id}",
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

    public static var op_appinfos_getinstance_be000969d1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_getInstance", method: "GET",
            pathTemplate: "/v1/appInfos/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ageRatingDeclarations]", "fields[appCategories]", "fields[appInfoLocalizations]", "fields[appInfos]", "fields[apps]", "include", "limit[appInfoLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_updateinstance_634306d39c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appInfos/{id}",
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

    public static var op_appinfos_ageratingdeclaration_gettoonerelated_6b835f6c71: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_ageRatingDeclaration_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/ageRatingDeclaration",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ageRatingDeclarations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_appinfolocalizations_gettomanyrelated_b15757d719: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_appInfoLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/appInfoLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appInfoLocalizations]", "fields[appInfos]", "filter[locale]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_primarycategory_gettoonerelated_ff9212aa4a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primaryCategory_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/primaryCategory",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_primarysubcategoryone_gettoonerelated_ecb8beb08c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primarySubcategoryOne_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/primarySubcategoryOne",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_primarysubcategorytwo_gettoonerelated_889e60f8d2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primarySubcategoryTwo_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/primarySubcategoryTwo",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_ageratingdeclaration_gettoonerelationship_812fa87b11: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_ageRatingDeclaration_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/ageRatingDeclaration",
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

    public static var op_appinfos_appinfolocalizations_gettomanyrelationship_255243f420: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_appInfoLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/appInfoLocalizations",
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

    public static var op_appinfos_primarycategory_gettoonerelationship_33fe76e4ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primaryCategory_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/primaryCategory",
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

    public static var op_appinfos_primarysubcategoryone_gettoonerelationship_99cae4062d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primarySubcategoryOne_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/primarySubcategoryOne",
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

    public static var op_appinfos_primarysubcategorytwo_gettoonerelationship_91422517d5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_primarySubcategoryTwo_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/primarySubcategoryTwo",
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

    public static var op_appinfos_secondarycategory_gettoonerelationship_942217018f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondaryCategory_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/secondaryCategory",
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

    public static var op_appinfos_secondarysubcategoryone_gettoonerelationship_6d05c5b6ad: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondarySubcategoryOne_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/secondarySubcategoryOne",
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

    public static var op_appinfos_secondarysubcategorytwo_gettoonerelationship_1196190fcb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondarySubcategoryTwo_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/secondarySubcategoryTwo",
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

    public static var op_appinfos_territoryageratings_gettomanyrelationship_bee44cb7ab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_territoryAgeRatings_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/relationships/territoryAgeRatings",
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

    public static var op_appinfos_secondarycategory_gettoonerelated_9580a11f17: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondaryCategory_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/secondaryCategory",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_secondarysubcategoryone_gettoonerelated_4e819a856f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondarySubcategoryOne_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/secondarySubcategoryOne",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_secondarysubcategorytwo_gettoonerelated_2fce876925: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_secondarySubcategoryTwo_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/secondarySubcategoryTwo",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "include", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appinfos_territoryageratings_gettomanyrelated_d8c9ca286f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appInfos_territoryAgeRatings_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appInfos/{id}/territoryAgeRatings",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]", "fields[territoryAgeRatings]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppreviewsets_createinstance_4e25cac2cd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_createInstance", method: "POST",
            pathTemplate: "/v1/appPreviewSets",
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

    public static var op_apppreviewsets_deleteinstance_dbaf024d16: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appPreviewSets/{id}",
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

    public static var op_apppreviewsets_getinstance_622cc0c77a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_getInstance", method: "GET",
            pathTemplate: "/v1/appPreviewSets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appPreviewSets]", "fields[appPreviews]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "include", "limit[appPreviews]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppreviewsets_apppreviews_gettomanyrelated_eaf29f068d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_appPreviews_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appPreviewSets/{id}/appPreviews",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPreviewSets]", "fields[appPreviews]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppreviewsets_apppreviews_gettomanyrelationship_aa41e14c10: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_appPreviews_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appPreviewSets/{id}/relationships/appPreviews",
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

    public static var op_apppreviewsets_apppreviews_replacetomanyrelationship_428f706ef4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviewSets_appPreviews_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/appPreviewSets/{id}/relationships/appPreviews",
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

    public static var op_apppreviews_createinstance_e07a47b796: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviews_createInstance", method: "POST",
            pathTemplate: "/v1/appPreviews",
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

    public static var op_apppreviews_deleteinstance_e7566764ef: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviews_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appPreviews/{id}",
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

    public static var op_apppreviews_getinstance_20243bd9e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviews_getInstance", method: "GET",
            pathTemplate: "/v1/appPreviews/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPreviewSets]", "fields[appPreviews]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppreviews_updateinstance_b6d197932d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPreviews_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appPreviews/{id}",
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
}

extension ASCClient {
    /// POST /v1/appEvents (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_createinstance_25b1c2cf67(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_createinstance_25b1c2cf67,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appEvents/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_deleteinstance_d5337e4b6d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_deleteinstance_d5337e4b6d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEvents/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_getinstance_46353f336a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_getinstance_46353f336a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appEvents/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_updateinstance_6c782a3e09(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_updateinstance_6c782a3e09,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEvents/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_localizations_gettomanyrelated_2223f573de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_localizations_gettomanyrelated_2223f573de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEvents/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appevents_localizations_gettomanyrelationship_e59c14fac0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appevents_localizations_gettomanyrelationship_e59c14fac0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appInfoLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfolocalizations_createinstance_318c6d663c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfolocalizations_createinstance_318c6d663c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appInfoLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfolocalizations_deleteinstance_33985b583a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfolocalizations_deleteinstance_33985b583a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfoLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfolocalizations_getinstance_acdd29436b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfolocalizations_getinstance_acdd29436b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appInfoLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfolocalizations_updateinstance_ef7a6ac43e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfolocalizations_updateinstance_ef7a6ac43e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_getinstance_be000969d1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_getinstance_be000969d1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appInfos/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_updateinstance_634306d39c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_updateinstance_634306d39c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/ageRatingDeclaration (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_ageratingdeclaration_gettoonerelated_6b835f6c71(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_ageratingdeclaration_gettoonerelated_6b835f6c71,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/appInfoLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_appinfolocalizations_gettomanyrelated_b15757d719(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_appinfolocalizations_gettomanyrelated_b15757d719,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/primaryCategory (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarycategory_gettoonerelated_ff9212aa4a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarycategory_gettoonerelated_ff9212aa4a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/primarySubcategoryOne (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarysubcategoryone_gettoonerelated_ecb8beb08c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarysubcategoryone_gettoonerelated_ecb8beb08c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/primarySubcategoryTwo (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarysubcategorytwo_gettoonerelated_889e60f8d2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarysubcategorytwo_gettoonerelated_889e60f8d2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/ageRatingDeclaration (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_ageratingdeclaration_gettoonerelationship_812fa87b11(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_ageratingdeclaration_gettoonerelationship_812fa87b11,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/appInfoLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_appinfolocalizations_gettomanyrelationship_255243f420(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_appinfolocalizations_gettomanyrelationship_255243f420,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/primaryCategory (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarycategory_gettoonerelationship_33fe76e4ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarycategory_gettoonerelationship_33fe76e4ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/primarySubcategoryOne (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarysubcategoryone_gettoonerelationship_99cae4062d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarysubcategoryone_gettoonerelationship_99cae4062d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/primarySubcategoryTwo (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_primarysubcategorytwo_gettoonerelationship_91422517d5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_primarysubcategorytwo_gettoonerelationship_91422517d5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/secondaryCategory (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarycategory_gettoonerelationship_942217018f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarycategory_gettoonerelationship_942217018f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/secondarySubcategoryOne (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarysubcategoryone_gettoonerelationship_6d05c5b6ad(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarysubcategoryone_gettoonerelationship_6d05c5b6ad,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/secondarySubcategoryTwo (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarysubcategorytwo_gettoonerelationship_1196190fcb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarysubcategorytwo_gettoonerelationship_1196190fcb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/relationships/territoryAgeRatings (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_territoryageratings_gettomanyrelationship_bee44cb7ab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_territoryageratings_gettomanyrelationship_bee44cb7ab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/secondaryCategory (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarycategory_gettoonerelated_9580a11f17(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarycategory_gettoonerelated_9580a11f17,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/secondarySubcategoryOne (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarysubcategoryone_gettoonerelated_4e819a856f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarysubcategoryone_gettoonerelated_4e819a856f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/secondarySubcategoryTwo (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_secondarysubcategorytwo_gettoonerelated_2fce876925(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_secondarysubcategorytwo_gettoonerelated_2fce876925,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appInfos/{id}/territoryAgeRatings (raw transport response; no Codable guarantee).
    public func ascGenerated_appinfos_territoryageratings_gettomanyrelated_d8c9ca286f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appinfos_territoryageratings_gettomanyrelated_d8c9ca286f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_createinstance_4e25cac2cd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_createinstance_4e25cac2cd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appPreviewSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_deleteinstance_dbaf024d16(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_deleteinstance_dbaf024d16,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPreviewSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_getinstance_622cc0c77a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_getinstance_622cc0c77a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPreviewSets/{id}/appPreviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_apppreviews_gettomanyrelated_eaf29f068d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_apppreviews_gettomanyrelated_eaf29f068d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPreviewSets/{id}/relationships/appPreviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_apppreviews_gettomanyrelationship_aa41e14c10(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_apppreviews_gettomanyrelationship_aa41e14c10,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appPreviewSets/{id}/relationships/appPreviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviewsets_apppreviews_replacetomanyrelationship_428f706ef4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviewsets_apppreviews_replacetomanyrelationship_428f706ef4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appPreviews (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviews_createinstance_e07a47b796(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviews_createinstance_e07a47b796,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appPreviews/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviews_deleteinstance_e7566764ef(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviews_deleteinstance_e7566764ef,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPreviews/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviews_getinstance_20243bd9e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviews_getinstance_20243bd9e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appPreviews/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppreviews_updateinstance_b6d197932d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppreviews_updateinstance_b6d197932d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
