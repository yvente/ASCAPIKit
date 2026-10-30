// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_androidtoiosappmappingdetails_getinstance_3783f93574: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "androidToIosAppMappingDetails_getInstance", method: "GET",
            pathTemplate: "/v1/androidToIosAppMappingDetails/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[androidToIosAppMappingDetails]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_androidtoiosappmappingdetails_updateinstance_93b731b1fd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "androidToIosAppMappingDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/androidToIosAppMappingDetails/{id}",
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

    public static var op_appassetlibraries_getinstance_282fe81397: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraries_getInstance", method: "GET",
            pathTemplate: "/v1/appAssetLibraries/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraries]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraries_images_gettomanyrelated_9d609132da: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraries_images_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appAssetLibraries/{id}/images",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "filter[category]", "filter[id]", "filter[referenceName]", "filter[specId]", "filter[state]", "include", "limit", "limit[placements]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraries_images_gettomanyrelationship_67ed6669ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraries_images_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appAssetLibraries/{id}/relationships/images",
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

    public static var op_appassetlibraries_videos_gettomanyrelationship_6a15da3e8e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraries_videos_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appAssetLibraries/{id}/relationships/videos",
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

    public static var op_appassetlibraries_videos_gettomanyrelated_9b2ddf397e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraries_videos_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appAssetLibraries/{id}/videos",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "filter[category]", "filter[id]", "filter[referenceName]", "filter[specId]", "filter[state]", "include", "limit", "limit[placements]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryimages_createinstance_0d78503267: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_createInstance", method: "POST",
            pathTemplate: "/v1/appAssetLibraryImages",
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

    public static var op_appassetlibraryimages_deleteinstance_8663abf239: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appAssetLibraryImages/{id}",
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

    public static var op_appassetlibraryimages_getinstance_e0dd0049f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_getInstance", method: "GET",
            pathTemplate: "/v1/appAssetLibraryImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "include", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryimages_updateinstance_557d799ca7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appAssetLibraryImages/{id}",
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

    public static var op_appassetlibraryimages_placements_gettomanyrelated_8d25d65ea6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appAssetLibraryImages/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appEventLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[id]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "filter[video]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryimages_placements_gettomanyrelationship_351c65dc27: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryImages_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appAssetLibraryImages/{id}/relationships/placements",
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

    public static var op_appassetlibraryplacementorderingrequests_createinstance_f4c0d75a60: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryPlacementOrderingRequests_createInstance", method: "POST",
            pathTemplate: "/v1/appAssetLibraryPlacementOrderingRequests",
            pathParameterNames: [],
            queryParameterNames: ["fields[appAssetLibraryPlacementOrderingRequests]", "fields[appAssetLibraryPlacements]", "include", "limit[orderedPlacements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: ["application/json"],
            requestBodyRequired: true,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryplacements_createinstance_220efa8eab: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryPlacements_createInstance", method: "POST",
            pathTemplate: "/v1/appAssetLibraryPlacements",
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

    public static var op_appassetlibraryplacements_deleteinstance_fa6b3f8fc4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryPlacements_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appAssetLibraryPlacements/{id}",
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

    public static var op_appassetlibraryplacements_getinstance_644d818c70: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryPlacements_getInstance", method: "GET",
            pathTemplate: "/v1/appAssetLibraryPlacements/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryrefdata_getcollection_11156a1ff7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryRefData_getCollection", method: "GET",
            pathTemplate: "/v1/appAssetLibraryRefData",
            pathParameterNames: [],
            queryParameterNames: ["fields[appAssetLibraryRefData]", "filter[features]", "filter[placementProfileGroups]", "filter[placementTypes]", "filter[specs]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryrefdata_getinstance_db7cca106f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryRefData_getInstance", method: "GET",
            pathTemplate: "/v1/appAssetLibraryRefData/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryRefData]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryvideos_createinstance_a42edc292c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_createInstance", method: "POST",
            pathTemplate: "/v1/appAssetLibraryVideos",
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

    public static var op_appassetlibraryvideos_deleteinstance_c8bcfb626e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appAssetLibraryVideos/{id}",
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

    public static var op_appassetlibraryvideos_getinstance_d9f1055adc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_getInstance", method: "GET",
            pathTemplate: "/v1/appAssetLibraryVideos/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "include", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryvideos_updateinstance_b1b3cff12a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appAssetLibraryVideos/{id}",
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

    public static var op_appassetlibraryvideos_placements_gettomanyrelated_d1f7e8bbda: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appAssetLibraryVideos/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appEventLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[id]", "filter[image]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appassetlibraryvideos_placements_gettomanyrelationship_d7924c1a01: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAssetLibraryVideos_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appAssetLibraryVideos/{id}/relationships/placements",
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

    public static var op_appcategories_getcollection_a7f273e5df: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_getCollection", method: "GET",
            pathTemplate: "/v1/appCategories",
            pathParameterNames: [],
            queryParameterNames: ["exists[parent]", "fields[appCategories]", "filter[platforms]", "include", "limit", "limit[subcategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcategories_getinstance_438a904554: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_getInstance", method: "GET",
            pathTemplate: "/v1/appCategories/{id}",
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

    public static var op_appcategories_parent_gettoonerelated_7f798eb3c5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_parent_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appCategories/{id}/parent",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcategories_parent_gettoonerelationship_9e9bc52ac1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_parent_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appCategories/{id}/relationships/parent",
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

    public static var op_appcategories_subcategories_gettomanyrelationship_940e7afbc9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_subcategories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCategories/{id}/relationships/subcategories",
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

    public static var op_appcategories_subcategories_gettomanyrelated_039a326f69: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCategories_subcategories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCategories/{id}/subcategories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCategories]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipadvancedexperienceimages_createinstance_73f0b94843: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperienceImages_createInstance", method: "POST",
            pathTemplate: "/v1/appClipAdvancedExperienceImages",
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

    public static var op_appclipadvancedexperienceimages_getinstance_9416b54f41: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperienceImages_getInstance", method: "GET",
            pathTemplate: "/v1/appClipAdvancedExperienceImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipAdvancedExperienceImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipadvancedexperienceimages_updateinstance_0d6fa69c54: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperienceImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipAdvancedExperienceImages/{id}",
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

    public static var op_appclipadvancedexperiences_createinstance_89a454ccca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperiences_createInstance", method: "POST",
            pathTemplate: "/v1/appClipAdvancedExperiences",
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

    public static var op_appclipadvancedexperiences_getinstance_bb49008899: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperiences_getInstance", method: "GET",
            pathTemplate: "/v1/appClipAdvancedExperiences/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipAdvancedExperienceImages]", "fields[appClipAdvancedExperienceLocalizations]", "fields[appClipAdvancedExperiences]", "fields[appClips]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipadvancedexperiences_updateinstance_f658503e01: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAdvancedExperiences_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipAdvancedExperiences/{id}",
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

    public static var op_appclipappstorereviewdetails_createinstance_d92ce251e4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAppStoreReviewDetails_createInstance", method: "POST",
            pathTemplate: "/v1/appClipAppStoreReviewDetails",
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

    public static var op_appclipappstorereviewdetails_getinstance_bc4777f10d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAppStoreReviewDetails_getInstance", method: "GET",
            pathTemplate: "/v1/appClipAppStoreReviewDetails/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipAppStoreReviewDetails]", "fields[appClipDefaultExperiences]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipappstorereviewdetails_updateinstance_7fdea1326a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipAppStoreReviewDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipAppStoreReviewDetails/{id}",
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
    /// GET /v1/androidToIosAppMappingDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_androidtoiosappmappingdetails_getinstance_3783f93574(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_androidtoiosappmappingdetails_getinstance_3783f93574,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/androidToIosAppMappingDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_androidtoiosappmappingdetails_updateinstance_93b731b1fd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_androidtoiosappmappingdetails_updateinstance_93b731b1fd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraries/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraries_getinstance_282fe81397(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraries_getinstance_282fe81397,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraries/{id}/images (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraries_images_gettomanyrelated_9d609132da(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraries_images_gettomanyrelated_9d609132da,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraries/{id}/relationships/images (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraries_images_gettomanyrelationship_67ed6669ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraries_images_gettomanyrelationship_67ed6669ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraries/{id}/relationships/videos (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraries_videos_gettomanyrelationship_6a15da3e8e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraries_videos_gettomanyrelationship_6a15da3e8e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraries/{id}/videos (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraries_videos_gettomanyrelated_9b2ddf397e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraries_videos_gettomanyrelated_9b2ddf397e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appAssetLibraryImages (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_createinstance_0d78503267(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_createinstance_0d78503267,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appAssetLibraryImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_deleteinstance_8663abf239(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_deleteinstance_8663abf239,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_getinstance_e0dd0049f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_getinstance_e0dd0049f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appAssetLibraryImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_updateinstance_557d799ca7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_updateinstance_557d799ca7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryImages/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_placements_gettomanyrelated_8d25d65ea6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_placements_gettomanyrelated_8d25d65ea6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryImages/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryimages_placements_gettomanyrelationship_351c65dc27(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryimages_placements_gettomanyrelationship_351c65dc27,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appAssetLibraryPlacementOrderingRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryplacementorderingrequests_createinstance_f4c0d75a60(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryplacementorderingrequests_createinstance_f4c0d75a60,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appAssetLibraryPlacements (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryplacements_createinstance_220efa8eab(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryplacements_createinstance_220efa8eab,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appAssetLibraryPlacements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryplacements_deleteinstance_fa6b3f8fc4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryplacements_deleteinstance_fa6b3f8fc4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryPlacements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryplacements_getinstance_644d818c70(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryplacements_getinstance_644d818c70,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryRefData (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryrefdata_getcollection_11156a1ff7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryrefdata_getcollection_11156a1ff7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryRefData/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryrefdata_getinstance_db7cca106f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryrefdata_getinstance_db7cca106f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appAssetLibraryVideos (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_createinstance_a42edc292c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_createinstance_a42edc292c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appAssetLibraryVideos/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_deleteinstance_c8bcfb626e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_deleteinstance_c8bcfb626e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryVideos/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_getinstance_d9f1055adc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_getinstance_d9f1055adc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appAssetLibraryVideos/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_updateinstance_b1b3cff12a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_updateinstance_b1b3cff12a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryVideos/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_placements_gettomanyrelated_d1f7e8bbda(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_placements_gettomanyrelated_d1f7e8bbda,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appAssetLibraryVideos/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appassetlibraryvideos_placements_gettomanyrelationship_d7924c1a01(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appassetlibraryvideos_placements_gettomanyrelationship_d7924c1a01,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_getcollection_a7f273e5df(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_getcollection_a7f273e5df,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_getinstance_438a904554(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_getinstance_438a904554,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories/{id}/parent (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_parent_gettoonerelated_7f798eb3c5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_parent_gettoonerelated_7f798eb3c5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories/{id}/relationships/parent (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_parent_gettoonerelationship_9e9bc52ac1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_parent_gettoonerelationship_9e9bc52ac1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories/{id}/relationships/subcategories (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_subcategories_gettomanyrelationship_940e7afbc9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_subcategories_gettomanyrelationship_940e7afbc9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCategories/{id}/subcategories (raw transport response; no Codable guarantee).
    public func ascGenerated_appcategories_subcategories_gettomanyrelated_039a326f69(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcategories_subcategories_gettomanyrelated_039a326f69,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appClipAdvancedExperienceImages (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperienceimages_createinstance_73f0b94843(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperienceimages_createinstance_73f0b94843,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipAdvancedExperienceImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperienceimages_getinstance_9416b54f41(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperienceimages_getinstance_9416b54f41,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipAdvancedExperienceImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperienceimages_updateinstance_0d6fa69c54(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperienceimages_updateinstance_0d6fa69c54,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appClipAdvancedExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperiences_createinstance_89a454ccca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperiences_createinstance_89a454ccca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipAdvancedExperiences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperiences_getinstance_bb49008899(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperiences_getinstance_bb49008899,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipAdvancedExperiences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipadvancedexperiences_updateinstance_f658503e01(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipadvancedexperiences_updateinstance_f658503e01,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appClipAppStoreReviewDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipappstorereviewdetails_createinstance_d92ce251e4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipappstorereviewdetails_createinstance_d92ce251e4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipAppStoreReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipappstorereviewdetails_getinstance_bc4777f10d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipappstorereviewdetails_getinstance_bc4777f10d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipAppStoreReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipappstorereviewdetails_updateinstance_7fdea1326a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipappstorereviewdetails_updateinstance_7fdea1326a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
