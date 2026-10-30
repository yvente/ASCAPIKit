// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_appclipdefaultexperiencelocalizations_createinstance_db02295a9f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations",
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

    public static var op_appclipdefaultexperiencelocalizations_deleteinstance_147cca9a4a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations/{id}",
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

    public static var op_appclipdefaultexperiencelocalizations_getinstance_1b7f8e177a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperienceLocalizations]", "fields[appClipDefaultExperiences]", "fields[appClipHeaderImages]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipdefaultexperiencelocalizations_updateinstance_e3d44d8c8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations/{id}",
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

    public static var op_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelated_ee79ae788c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_appClipHeaderImage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperienceLocalizations]", "fields[appClipHeaderImages]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelations_4ce211cdac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperienceLocalizations_appClipHeaderImage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperienceLocalizations/{id}/relationships/appClipHeaderImage",
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

    public static var op_appclipdefaultexperiences_createinstance_3f4959556b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_createInstance", method: "POST",
            pathTemplate: "/v1/appClipDefaultExperiences",
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

    public static var op_appclipdefaultexperiences_deleteinstance_287da81bf6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}",
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

    public static var op_appclipdefaultexperiences_getinstance_21406058f7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_getInstance", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipAppStoreReviewDetails]", "fields[appClipDefaultExperienceLocalizations]", "fields[appClipDefaultExperiences]", "fields[appClips]", "fields[appStoreVersions]", "include", "limit[appClipDefaultExperienceLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipdefaultexperiences_updateinstance_b757bf5499: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}",
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

    public static var op_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelated_8becd2d28e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_appClipAppStoreReviewDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/appClipAppStoreReviewDetail",
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

    public static var op_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_ae7fed1350: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_appClipDefaultExperienceLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/appClipDefaultExperienceLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperienceLocalizations]", "fields[appClipDefaultExperiences]", "fields[appClipHeaderImages]", "filter[locale]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelationship_44e98df28f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_appClipAppStoreReviewDetail_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/relationships/appClipAppStoreReviewDetail",
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

    public static var op_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_f9a2a102cb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_appClipDefaultExperienceLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/relationships/appClipDefaultExperienceLocalizations",
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

    public static var op_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelationship_338fc727c2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_releaseWithAppStoreVersion_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion",
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

    public static var op_appclipdefaultexperiences_releasewithappstoreversion_updatetoonerelationsh_4d2432a0a8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_releaseWithAppStoreVersion_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion",
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

    public static var op_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelated_ed2bfc9ad4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipDefaultExperiences_releaseWithAppStoreVersion_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appClipDefaultExperiences/{id}/releaseWithAppStoreVersion",
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

    public static var op_appclipheaderimages_createinstance_76f80ff8b3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipHeaderImages_createInstance", method: "POST",
            pathTemplate: "/v1/appClipHeaderImages",
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

    public static var op_appclipheaderimages_deleteinstance_476b54b341: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipHeaderImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appClipHeaderImages/{id}",
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

    public static var op_appclipheaderimages_getinstance_85b6f8557b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipHeaderImages_getInstance", method: "GET",
            pathTemplate: "/v1/appClipHeaderImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperienceLocalizations]", "fields[appClipHeaderImages]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclipheaderimages_updateinstance_134a80ada1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClipHeaderImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appClipHeaderImages/{id}",
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

    public static var op_appclips_getinstance_d4f0e27587: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClips_getInstance", method: "GET",
            pathTemplate: "/v1/appClips/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperiences]", "fields[appClips]", "fields[apps]", "include", "limit[appClipDefaultExperiences]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclips_appclipadvancedexperiences_gettomanyrelated_60b27310ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClips_appClipAdvancedExperiences_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appClips/{id}/appClipAdvancedExperiences",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipAdvancedExperienceImages]", "fields[appClipAdvancedExperienceLocalizations]", "fields[appClipAdvancedExperiences]", "fields[appClips]", "filter[action]", "filter[placeStatus]", "filter[status]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclips_appclipdefaultexperiences_gettomanyrelated_24a1afc1c3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClips_appClipDefaultExperiences_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appClips/{id}/appClipDefaultExperiences",
            pathParameterNames: ["id"],
            queryParameterNames: ["exists[releaseWithAppStoreVersion]", "fields[appClipAppStoreReviewDetails]", "fields[appClipDefaultExperienceLocalizations]", "fields[appClipDefaultExperiences]", "fields[appClips]", "fields[appStoreVersions]", "include", "limit", "limit[appClipDefaultExperienceLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appclips_appclipadvancedexperiences_gettomanyrelationship_1e48412fa8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClips_appClipAdvancedExperiences_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appClips/{id}/relationships/appClipAdvancedExperiences",
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

    public static var op_appclips_appclipdefaultexperiences_gettomanyrelationship_a1e8578e4e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appClips_appClipDefaultExperiences_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appClips/{id}/relationships/appClipDefaultExperiences",
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

    public static var op_appcustomproductpagelocalizations_createinstance_50661ac6a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appCustomProductPageLocalizations",
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

    public static var op_appcustomproductpagelocalizations_deleteinstance_68cb700afb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}",
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

    public static var op_appcustomproductpagelocalizations_getinstance_fbbc6032bb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appCustomProductPageLocalizations]", "fields[appCustomProductPageVersions]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "include", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]", "limit[searchKeywords]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpagelocalizations_updateinstance_fcf07190e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}",
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

    public static var op_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelated_e53ff94f81: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_appPreviewSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/appPreviewSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appPreviewSets]", "fields[appPreviews]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[previewType]", "include", "limit", "limit[appPreviews]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelated_cf6eff73f5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_appScreenshotSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/appScreenshotSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appScreenshotSets]", "fields[appScreenshots]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[screenshotDisplayType]", "include", "limit", "limit[appScreenshots]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpagelocalizations_placements_gettomanyrelated_a68199c574: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appEventLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[appStoreVersionLocalization]", "filter[id]", "filter[image]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "filter[video]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelationship_c7693aa468: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_appPreviewSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/appPreviewSets",
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

    public static var op_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelationship_ad6cf984f7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_appScreenshotSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/appScreenshotSets",
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

    public static var op_appcustomproductpagelocalizations_placements_gettomanyrelationship_1f6b404a99: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/placements",
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

    public static var op_appcustomproductpagelocalizations_searchkeywords_deletetomanyrelationship_3de69c620f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_searchKeywords_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appcustomproductpagelocalizations_searchkeywords_gettomanyrelationship_adc8a7abc0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_searchKeywords_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appcustomproductpagelocalizations_searchkeywords_createtomanyrelationship_c1b5537c97: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_searchKeywords_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appcustomproductpagelocalizations_searchkeywords_gettomanyrelated_974f1401b9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appCustomProductPageLocalizations_searchKeywords_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appCustomProductPageLocalizations/{id}/searchKeywords",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appKeywords]", "filter[locale]", "filter[platform]", "limit"],
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
    /// POST /v1/appClipDefaultExperienceLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_createinstance_db02295a9f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_createinstance_db02295a9f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appClipDefaultExperienceLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_deleteinstance_147cca9a4a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_deleteinstance_147cca9a4a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperienceLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_getinstance_1b7f8e177a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_getinstance_1b7f8e177a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipDefaultExperienceLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_updateinstance_e3d44d8c8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_updateinstance_e3d44d8c8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelated_ee79ae788c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelated_ee79ae788c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperienceLocalizations/{id}/relationships/appClipHeaderImage (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelations_4ce211cdac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiencelocalizations_appclipheaderimage_gettoonerelations_4ce211cdac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appClipDefaultExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_createinstance_3f4959556b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_createinstance_3f4959556b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appClipDefaultExperiences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_deleteinstance_287da81bf6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_deleteinstance_287da81bf6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_getinstance_21406058f7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_getinstance_21406058f7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipDefaultExperiences/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_updateinstance_b757bf5499(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_updateinstance_b757bf5499,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/appClipAppStoreReviewDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelated_8becd2d28e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelated_8becd2d28e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/appClipDefaultExperienceLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_ae7fed1350(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_ae7fed1350,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/relationships/appClipAppStoreReviewDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelationship_44e98df28f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_appclipappstorereviewdetail_gettoonerelationship_44e98df28f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/relationships/appClipDefaultExperienceLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_f9a2a102cb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_appclipdefaultexperiencelocalizations_gettomanyr_f9a2a102cb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelationship_338fc727c2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelationship_338fc727c2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipDefaultExperiences/{id}/relationships/releaseWithAppStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_releasewithappstoreversion_updatetoonerelationsh_4d2432a0a8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_releasewithappstoreversion_updatetoonerelationsh_4d2432a0a8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipDefaultExperiences/{id}/releaseWithAppStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelated_ed2bfc9ad4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipdefaultexperiences_releasewithappstoreversion_gettoonerelated_ed2bfc9ad4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appClipHeaderImages (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipheaderimages_createinstance_76f80ff8b3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipheaderimages_createinstance_76f80ff8b3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appClipHeaderImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipheaderimages_deleteinstance_476b54b341(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipheaderimages_deleteinstance_476b54b341,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClipHeaderImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipheaderimages_getinstance_85b6f8557b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipheaderimages_getinstance_85b6f8557b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appClipHeaderImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclipheaderimages_updateinstance_134a80ada1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclipheaderimages_updateinstance_134a80ada1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClips/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appclips_getinstance_d4f0e27587(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclips_getinstance_d4f0e27587,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClips/{id}/appClipAdvancedExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclips_appclipadvancedexperiences_gettomanyrelated_60b27310ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclips_appclipadvancedexperiences_gettomanyrelated_60b27310ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClips/{id}/appClipDefaultExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclips_appclipdefaultexperiences_gettomanyrelated_24a1afc1c3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclips_appclipdefaultexperiences_gettomanyrelated_24a1afc1c3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClips/{id}/relationships/appClipAdvancedExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclips_appclipadvancedexperiences_gettomanyrelationship_1e48412fa8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclips_appclipadvancedexperiences_gettomanyrelationship_1e48412fa8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appClips/{id}/relationships/appClipDefaultExperiences (raw transport response; no Codable guarantee).
    public func ascGenerated_appclips_appclipdefaultexperiences_gettomanyrelationship_a1e8578e4e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appclips_appclipdefaultexperiences_gettomanyrelationship_a1e8578e4e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appCustomProductPageLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_createinstance_50661ac6a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_createinstance_50661ac6a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appCustomProductPageLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_deleteinstance_68cb700afb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_deleteinstance_68cb700afb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_getinstance_fbbc6032bb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_getinstance_fbbc6032bb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appCustomProductPageLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_updateinstance_fcf07190e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_updateinstance_fcf07190e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelated_e53ff94f81(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelated_e53ff94f81,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelated_cf6eff73f5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelated_cf6eff73f5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_placements_gettomanyrelated_a68199c574(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_placements_gettomanyrelated_a68199c574,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/relationships/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelationship_c7693aa468(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_apppreviewsets_gettomanyrelationship_c7693aa468,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/relationships/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelationship_ad6cf984f7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_appscreenshotsets_gettomanyrelationship_ad6cf984f7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_placements_gettomanyrelationship_1f6b404a99(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_placements_gettomanyrelationship_1f6b404a99,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_searchkeywords_deletetomanyrelationship_3de69c620f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_searchkeywords_deletetomanyrelationship_3de69c620f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_searchkeywords_gettomanyrelationship_adc8a7abc0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_searchkeywords_gettomanyrelationship_adc8a7abc0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appCustomProductPageLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_searchkeywords_createtomanyrelationship_c1b5537c97(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_searchkeywords_createtomanyrelationship_c1b5537c97,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appCustomProductPageLocalizations/{id}/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appcustomproductpagelocalizations_searchkeywords_gettomanyrelated_974f1401b9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appcustomproductpagelocalizations_searchkeywords_gettomanyrelated_974f1401b9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
