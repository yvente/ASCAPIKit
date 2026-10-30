// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_1f24676f05: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionExperimentTreatments]", "filter[locale]", "include", "limit", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_6e028ba414: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_appStoreVersionExperimentTreatmentLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments/{id}/relationships/appStoreVersionExperimentTreatmentLocalizations",
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

    public static var op_appstoreversionexperiments_createinstance_d8b40370a9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionExperiments",
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

    public static var op_appstoreversionexperiments_deleteinstance_619103d61a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionExperiments/{id}",
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

    public static var op_appstoreversionexperiments_getinstance_bdcc9b7f8e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperiments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "include", "limit[appStoreVersionExperimentTreatments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperiments_updateinstance_374d65f113: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreVersionExperiments/{id}",
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

    public static var op_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_e3e3d427e9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_appStoreVersionExperimentTreatments_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "include", "limit", "limit[appStoreVersionExperimentTreatmentLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_c2851e613f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperiments_appStoreVersionExperimentTreatments_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperiments/{id}/relationships/appStoreVersionExperimentTreatments",
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

    public static var op_appstoreversionlocalizations_createinstance_68f4dcb68d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionLocalizations",
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

    public static var op_appstoreversionlocalizations_deleteinstance_7e189840e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}",
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

    public static var op_appstoreversionlocalizations_getinstance_38a06c77f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "fields[appStoreVersionLocalizations]", "fields[appStoreVersions]", "include", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]", "limit[searchKeywords]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionlocalizations_updateinstance_0ca4436794: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}",
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

    public static var op_appstoreversionlocalizations_apppreviewsets_gettomanyrelated_e9bc76f1f6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_appPreviewSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/appPreviewSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appPreviewSets]", "fields[appPreviews]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[previewType]", "include", "limit", "limit[appPreviews]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionlocalizations_appscreenshotsets_gettomanyrelated_163d1d4fe9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_appScreenshotSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/appScreenshotSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appScreenshotSets]", "fields[appScreenshots]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[screenshotDisplayType]", "include", "limit", "limit[appScreenshots]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionlocalizations_placements_gettomanyrelated_cb1e5bf82c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appEventLocalization]", "filter[appStoreVersionExperimentTreatmentLocalization]", "filter[id]", "filter[image]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "filter[video]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionlocalizations_apppreviewsets_gettomanyrelationship_3340644a8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_appPreviewSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/appPreviewSets",
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

    public static var op_appstoreversionlocalizations_appscreenshotsets_gettomanyrelationship_f98704bf53: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_appScreenshotSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/appScreenshotSets",
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

    public static var op_appstoreversionlocalizations_placements_gettomanyrelationship_20bdcf90f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/placements",
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

    public static var op_appstoreversionlocalizations_searchkeywords_deletetomanyrelationship_03d511cd71: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_searchKeywords_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appstoreversionlocalizations_searchkeywords_gettomanyrelationship_e15d0c8512: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_searchKeywords_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appstoreversionlocalizations_searchkeywords_createtomanyrelationship_da84317e52: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_searchKeywords_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords",
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

    public static var op_appstoreversionlocalizations_searchkeywords_gettomanyrelated_2a4154350c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionLocalizations_searchKeywords_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionLocalizations/{id}/searchKeywords",
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

    public static var op_appstoreversionphasedreleases_createinstance_52308e2494: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionPhasedReleases_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionPhasedReleases",
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

    public static var op_appstoreversionphasedreleases_deleteinstance_42f0a5b41b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionPhasedReleases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionPhasedReleases/{id}",
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

    public static var op_appstoreversionphasedreleases_updateinstance_0940a708b1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionPhasedReleases_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreVersionPhasedReleases/{id}",
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

    public static var op_appstoreversionpromotions_createinstance_a63332e3da: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionPromotions_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionPromotions",
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

    public static var op_appstoreversionreleaserequests_createinstance_9c482c40a1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionReleaseRequests_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionReleaseRequests",
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

    public static var op_appstoreversionsubmissions_deleteinstance_46a0287933: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionSubmissions_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionSubmissions/{id}",
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

    public static var op_appstoreversions_createinstance_1c371594b3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersions",
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

    public static var op_appstoreversions_deleteinstance_aaf8ef3e82: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersions/{id}",
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

    public static var op_appstoreversions_getinstance_f6a8716d8d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}",
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

    public static var op_appstoreversions_updateinstance_e0d13f5f46: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreVersions/{id}",
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

    public static var op_appstoreversions_alternativedistributionpackage_gettoonerelated_fe8485799e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_alternativeDistributionPackage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/alternativeDistributionPackage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackageVersions]", "fields[alternativeDistributionPackages]", "include", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appclipdefaultexperience_gettoonerelated_44be65acf1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appClipDefaultExperience_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appClipDefaultExperience",
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

    public static var op_appstoreversions_appstorereviewdetail_gettoonerelated_3b0a294f31: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreReviewDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreReviewDetail",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreReviewAttachments]", "fields[appStoreReviewDetails]", "fields[appStoreVersions]", "include", "limit[appStoreReviewAttachments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appstoreversionexperiments_gettomanyrelated_6e219e478a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionExperiments_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreVersionExperiments",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "filter[state]", "include", "limit", "limit[appStoreVersionExperimentTreatments]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appstoreversionexperimentsv2_gettomanyrelated_9b5c8c3f61: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionExperimentsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreVersionExperimentsV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[apps]", "filter[state]", "include", "limit", "limit[appStoreVersionExperimentTreatments]", "limit[controlVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appstoreversionlocalizations_gettomanyrelated_ee4742d4cb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreVersionLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appKeywords]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "fields[appStoreVersionLocalizations]", "fields[appStoreVersions]", "filter[locale]", "include", "limit", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]", "limit[searchKeywords]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appstoreversionphasedrelease_gettoonerelated_9c63a0d061: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionPhasedRelease_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreVersionPhasedRelease",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionPhasedReleases]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_appstoreversionsubmission_gettoonerelated_63edb50cdb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionSubmission_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/appStoreVersionSubmission",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionSubmissions]", "fields[appStoreVersions]", "include"],
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
    /// GET /v1/appStoreVersionExperimentTreatments/{id}/appStoreVersionExperimentTreatmentLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_1f24676f05(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_1f24676f05,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatments/{id}/relationships/appStoreVersionExperimentTreatmentLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_6e028ba414(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_appstoreversionexperimenttreatmentloca_6e028ba414,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionExperiments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_createinstance_d8b40370a9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_createinstance_d8b40370a9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_deleteinstance_619103d61a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_deleteinstance_619103d61a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_getinstance_bdcc9b7f8e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_getinstance_bdcc9b7f8e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_updateinstance_374d65f113(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_updateinstance_374d65f113,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_e3e3d427e9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_e3e3d427e9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperiments/{id}/relationships/appStoreVersionExperimentTreatments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_c2851e613f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperiments_appstoreversionexperimenttreatments_gettomanyre_c2851e613f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_createinstance_68f4dcb68d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_createinstance_68f4dcb68d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_deleteinstance_7e189840e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_deleteinstance_7e189840e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_getinstance_38a06c77f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_getinstance_38a06c77f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_updateinstance_0ca4436794(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_updateinstance_0ca4436794,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_apppreviewsets_gettomanyrelated_e9bc76f1f6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_apppreviewsets_gettomanyrelated_e9bc76f1f6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_appscreenshotsets_gettomanyrelated_163d1d4fe9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_appscreenshotsets_gettomanyrelated_163d1d4fe9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_placements_gettomanyrelated_cb1e5bf82c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_placements_gettomanyrelated_cb1e5bf82c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/relationships/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_apppreviewsets_gettomanyrelationship_3340644a8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_apppreviewsets_gettomanyrelationship_3340644a8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/relationships/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_appscreenshotsets_gettomanyrelationship_f98704bf53(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_appscreenshotsets_gettomanyrelationship_f98704bf53,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_placements_gettomanyrelationship_20bdcf90f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_placements_gettomanyrelationship_20bdcf90f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_searchkeywords_deletetomanyrelationship_03d511cd71(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_searchkeywords_deletetomanyrelationship_03d511cd71,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_searchkeywords_gettomanyrelationship_e15d0c8512(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_searchkeywords_gettomanyrelationship_e15d0c8512,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionLocalizations/{id}/relationships/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_searchkeywords_createtomanyrelationship_da84317e52(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_searchkeywords_createtomanyrelationship_da84317e52,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionLocalizations/{id}/searchKeywords (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionlocalizations_searchkeywords_gettomanyrelated_2a4154350c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionlocalizations_searchkeywords_gettomanyrelated_2a4154350c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionPhasedReleases (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionphasedreleases_createinstance_52308e2494(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionphasedreleases_createinstance_52308e2494,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionPhasedReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionphasedreleases_deleteinstance_42f0a5b41b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionphasedreleases_deleteinstance_42f0a5b41b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersionPhasedReleases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionphasedreleases_updateinstance_0940a708b1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionphasedreleases_updateinstance_0940a708b1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionPromotions (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionpromotions_createinstance_a63332e3da(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionpromotions_createinstance_a63332e3da,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionReleaseRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionreleaserequests_createinstance_9c482c40a1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionreleaserequests_createinstance_9c482c40a1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionSubmissions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionsubmissions_deleteinstance_46a0287933(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionsubmissions_deleteinstance_46a0287933,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_createinstance_1c371594b3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_createinstance_1c371594b3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_deleteinstance_aaf8ef3e82(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_deleteinstance_aaf8ef3e82,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_getinstance_f6a8716d8d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_getinstance_f6a8716d8d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_updateinstance_e0d13f5f46(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_updateinstance_e0d13f5f46,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/alternativeDistributionPackage (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_alternativedistributionpackage_gettoonerelated_fe8485799e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_alternativedistributionpackage_gettoonerelated_fe8485799e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appClipDefaultExperience (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appclipdefaultexperience_gettoonerelated_44be65acf1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appclipdefaultexperience_gettoonerelated_44be65acf1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreReviewDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstorereviewdetail_gettoonerelated_3b0a294f31(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstorereviewdetail_gettoonerelated_3b0a294f31,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreVersionExperiments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionexperiments_gettomanyrelated_6e219e478a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionexperiments_gettomanyrelated_6e219e478a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreVersionExperimentsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionexperimentsv2_gettomanyrelated_9b5c8c3f61(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionexperimentsv2_gettomanyrelated_9b5c8c3f61,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreVersionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionlocalizations_gettomanyrelated_ee4742d4cb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionlocalizations_gettomanyrelated_ee4742d4cb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreVersionPhasedRelease (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionphasedrelease_gettoonerelated_9c63a0d061(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionphasedrelease_gettoonerelated_9c63a0d061,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/appStoreVersionSubmission (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionsubmission_gettoonerelated_63edb50cdb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionsubmission_gettoonerelated_63edb50cdb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
