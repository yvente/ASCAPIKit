// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_appcustomproductpageversions_createinstance_8693d61f1e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageVersions_createInstance", method: "POST",
            pathTemplate: "/v1/appCustomProductPageVersions",
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

    public static var op_appcustomproductpageversions_getinstance_f673834258: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageVersions_getInstance", method: "GET",
            pathTemplate: "/v1/appCustomProductPageVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appCustomProductPageVersions]", "fields[appCustomProductPages]", "include", "limit[appCustomProductPageLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpageversions_updateinstance_26e4e902ab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageVersions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appCustomProductPageVersions/{id}",
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

    public static var op_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_3db9e1778f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageVersions_appCustomProductPageLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appCustomProductPageLocalizations]", "fields[appCustomProductPageVersions]", "fields[appKeywords]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "filter[locale]", "include", "limit", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]", "limit[searchKeywords]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_a182c44a23: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageVersions_appCustomProductPageLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPageVersions/{id}/relationships/appCustomProductPageLocalizations",
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

    public static var op_appcustomproductpages_createinstance_3a54d91bbc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_createInstance", method: "POST",
            pathTemplate: "/v1/appCustomProductPages",
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

    public static var op_appcustomproductpages_deleteinstance_3f3deb3aee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appCustomProductPages/{id}",
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

    public static var op_appcustomproductpages_getinstance_faf1a72e52: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_getInstance", method: "GET",
            pathTemplate: "/v1/appCustomProductPages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageVersions]", "fields[appCustomProductPages]", "fields[apps]", "include", "limit[appCustomProductPageVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpages_updateinstance_01e1e4dc6d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appCustomProductPages/{id}",
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

    public static var op_appcustomproductpages_appcustomproductpageversions_gettomanyrelated_6e26bdf7d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_appCustomProductPageVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPages/{id}/appCustomProductPageVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appCustomProductPageVersions]", "fields[appCustomProductPages]", "filter[state]", "include", "limit", "limit[appCustomProductPageLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpages_appcustomproductpageversions_gettomanyrelationship_5bc94ed3fd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPages_appCustomProductPageVersions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPages/{id}/relationships/appCustomProductPageVersions",
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

    public static var op_appencryptiondeclarationdocuments_createinstance_d121ef6c0d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarationDocuments_createInstance", method: "POST",
            pathTemplate: "/v1/appEncryptionDeclarationDocuments",
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

    public static var op_appencryptiondeclarationdocuments_getinstance_4af21d59f7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarationDocuments_getInstance", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarationDocuments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarationDocuments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appencryptiondeclarationdocuments_updateinstance_dae1d15285: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarationDocuments_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appEncryptionDeclarationDocuments/{id}",
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

    public static var op_appencryptiondeclarations_getcollection_b115f46a4b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_getCollection", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations",
            pathParameterNames: [],
            queryParameterNames: ["fields[appEncryptionDeclarationDocuments]", "fields[appEncryptionDeclarations]", "fields[apps]", "fields[builds]", "filter[app]", "filter[builds]", "filter[platform]", "include", "limit", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appencryptiondeclarations_createinstance_d4a0e53dfd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_createInstance", method: "POST",
            pathTemplate: "/v1/appEncryptionDeclarations",
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

    public static var op_appencryptiondeclarations_getinstance_484e3f73b2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_getInstance", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarationDocuments]", "fields[appEncryptionDeclarations]", "fields[apps]", "fields[builds]", "include", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appencryptiondeclarations_app_gettoonerelated_2eb53bc0da: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}/app",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelated_c6effd0fe0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_appEncryptionDeclarationDocument_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}/appEncryptionDeclarationDocument",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarationDocuments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appencryptiondeclarations_app_gettoonerelationship_59cb67f5a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}/relationships/app",
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

    public static var op_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelatio_bc4a57dd7b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_appEncryptionDeclarationDocument_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}/relationships/appEncryptionDeclarationDocument",
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

    public static var op_appencryptiondeclarations_builds_createtomanyrelationship_43294292d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEncryptionDeclarations_builds_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/appEncryptionDeclarations/{id}/relationships/builds",
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

    public static var op_appeventlocalizations_createinstance_5c97719714: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appEventLocalizations",
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

    public static var op_appeventlocalizations_deleteinstance_556b72d31e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appEventLocalizations/{id}",
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

    public static var op_appeventlocalizations_getinstance_19c5f7ca36: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appEventLocalizations]", "fields[appEventScreenshots]", "fields[appEventVideoClips]", "fields[appEvents]", "include", "limit[appEventScreenshots]", "limit[appEventVideoClips]", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventlocalizations_updateinstance_014dab60eb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appEventLocalizations/{id}",
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

    public static var op_appeventlocalizations_appeventscreenshots_gettomanyrelated_30d8729d14: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_appEventScreenshots_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/appEventScreenshots",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEventScreenshots]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventlocalizations_appeventvideoclips_gettomanyrelated_bbc6a7ff21: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_appEventVideoClips_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/appEventVideoClips",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEventVideoClips]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventlocalizations_placements_gettomanyrelated_842ac7f991: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[id]", "filter[image]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "filter[video]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventlocalizations_appeventscreenshots_gettomanyrelationship_5bd4360a5d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_appEventScreenshots_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/relationships/appEventScreenshots",
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

    public static var op_appeventlocalizations_appeventvideoclips_gettomanyrelationship_50164253c9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_appEventVideoClips_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/relationships/appEventVideoClips",
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

    public static var op_appeventlocalizations_placements_gettomanyrelationship_e172ff6082: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventLocalizations_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appEventLocalizations/{id}/relationships/placements",
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

    public static var op_appeventscreenshots_createinstance_72652a8b7a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventScreenshots_createInstance", method: "POST",
            pathTemplate: "/v1/appEventScreenshots",
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

    public static var op_appeventscreenshots_deleteinstance_3773a1cc69: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventScreenshots_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appEventScreenshots/{id}",
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

    public static var op_appeventscreenshots_getinstance_fe390eb4f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventScreenshots_getInstance", method: "GET",
            pathTemplate: "/v1/appEventScreenshots/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEventScreenshots]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventscreenshots_updateinstance_4de6c8cc47: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventScreenshots_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appEventScreenshots/{id}",
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

    public static var op_appeventvideoclips_createinstance_8fd7f5c362: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventVideoClips_createInstance", method: "POST",
            pathTemplate: "/v1/appEventVideoClips",
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

    public static var op_appeventvideoclips_deleteinstance_898edc1d65: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventVideoClips_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appEventVideoClips/{id}",
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

    public static var op_appeventvideoclips_getinstance_0a11075cff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventVideoClips_getInstance", method: "GET",
            pathTemplate: "/v1/appEventVideoClips/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEventVideoClips]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appeventvideoclips_updateinstance_cea29ab802: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appEventVideoClips_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appEventVideoClips/{id}",
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
    /// POST /v1/appCustomProductPageVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpageversions_createinstance_8693d61f1e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpageversions_createinstance_8693d61f1e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpageversions_getinstance_f673834258(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpageversions_getinstance_f673834258,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appCustomProductPageVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpageversions_updateinstance_26e4e902ab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpageversions_updateinstance_26e4e902ab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_3db9e1778f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_3db9e1778f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageVersions/{id}/relationships/appCustomProductPageLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_a182c44a23(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpageversions_appcustomproductpagelocalizations_gettomanyre_a182c44a23,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appCustomProductPages (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_createinstance_3a54d91bbc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_createinstance_3a54d91bbc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appCustomProductPages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_deleteinstance_3f3deb3aee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_deleteinstance_3f3deb3aee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_getinstance_faf1a72e52(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_getinstance_faf1a72e52,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appCustomProductPages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_updateinstance_01e1e4dc6d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_updateinstance_01e1e4dc6d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPages/{id}/appCustomProductPageVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_appcustomproductpageversions_gettomanyrelated_6e26bdf7d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_appcustomproductpageversions_gettomanyrelated_6e26bdf7d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPages/{id}/relationships/appCustomProductPageVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpages_appcustomproductpageversions_gettomanyrelationship_5bc94ed3fd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpages_appcustomproductpageversions_gettomanyrelationship_5bc94ed3fd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEncryptionDeclarationDocuments (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarationdocuments_createinstance_d121ef6c0d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarationdocuments_createinstance_d121ef6c0d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarationDocuments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarationdocuments_getinstance_4af21d59f7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarationdocuments_getinstance_4af21d59f7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appEncryptionDeclarationDocuments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarationdocuments_updateinstance_dae1d15285(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarationdocuments_updateinstance_dae1d15285,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_getcollection_b115f46a4b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_getcollection_b115f46a4b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEncryptionDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_createinstance_d4a0e53dfd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_createinstance_d4a0e53dfd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_getinstance_484e3f73b2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_getinstance_484e3f73b2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_app_gettoonerelated_2eb53bc0da(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_app_gettoonerelated_2eb53bc0da,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations/{id}/appEncryptionDeclarationDocument (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelated_c6effd0fe0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelated_c6effd0fe0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_app_gettoonerelationship_59cb67f5a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_app_gettoonerelationship_59cb67f5a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEncryptionDeclarations/{id}/relationships/appEncryptionDeclarationDocument (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelatio_bc4a57dd7b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_appencryptiondeclarationdocument_gettoonerelatio_bc4a57dd7b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEncryptionDeclarations/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_appencryptiondeclarations_builds_createtomanyrelationship_43294292d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appencryptiondeclarations_builds_createtomanyrelationship_43294292d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEventLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_createinstance_5c97719714(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_createinstance_5c97719714,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appEventLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_deleteinstance_556b72d31e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_deleteinstance_556b72d31e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_getinstance_19c5f7ca36(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_getinstance_19c5f7ca36,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appEventLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_updateinstance_014dab60eb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_updateinstance_014dab60eb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/appEventScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_appeventscreenshots_gettomanyrelated_30d8729d14(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_appeventscreenshots_gettomanyrelated_30d8729d14,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/appEventVideoClips (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_appeventvideoclips_gettomanyrelated_bbc6a7ff21(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_appeventvideoclips_gettomanyrelated_bbc6a7ff21,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_placements_gettomanyrelated_842ac7f991(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_placements_gettomanyrelated_842ac7f991,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/relationships/appEventScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_appeventscreenshots_gettomanyrelationship_5bd4360a5d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_appeventscreenshots_gettomanyrelationship_5bd4360a5d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/relationships/appEventVideoClips (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_appeventvideoclips_gettomanyrelationship_50164253c9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_appeventvideoclips_gettomanyrelationship_50164253c9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventLocalizations/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventlocalizations_placements_gettomanyrelationship_e172ff6082(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventlocalizations_placements_gettomanyrelationship_e172ff6082,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEventScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventscreenshots_createinstance_72652a8b7a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventscreenshots_createinstance_72652a8b7a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appEventScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventscreenshots_deleteinstance_3773a1cc69(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventscreenshots_deleteinstance_3773a1cc69,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventscreenshots_getinstance_fe390eb4f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventscreenshots_getinstance_fe390eb4f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appEventScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventscreenshots_updateinstance_4de6c8cc47(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventscreenshots_updateinstance_4de6c8cc47,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appEventVideoClips (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventvideoclips_createinstance_8fd7f5c362(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventvideoclips_createinstance_8fd7f5c362,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appEventVideoClips/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventvideoclips_deleteinstance_898edc1d65(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventvideoclips_deleteinstance_898edc1d65,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appEventVideoClips/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventvideoclips_getinstance_0a11075cff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventvideoclips_getinstance_0a11075cff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appEventVideoClips/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appeventvideoclips_updateinstance_cea29ab802(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appeventvideoclips_updateinstance_cea29ab802,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
