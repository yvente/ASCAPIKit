// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_apppriceschedules_createinstance_de36fe3c66: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_createInstance", method: "POST",
            pathTemplate: "/v1/appPriceSchedules",
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

    public static var op_apppriceschedules_getinstance_9ca06c5cd4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_getInstance", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPriceSchedules]", "fields[appPrices]", "fields[apps]", "fields[territories]", "include", "limit[automaticPrices]", "limit[manualPrices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppriceschedules_automaticprices_gettomanyrelated_0ba1943719: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_automaticPrices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/automaticPrices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPricePoints]", "fields[appPrices]", "fields[territories]", "filter[endDate]", "filter[startDate]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppriceschedules_baseterritory_gettoonerelated_8878fed0b8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_baseTerritory_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/baseTerritory",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppriceschedules_manualprices_gettomanyrelated_ab06fb4a83: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_manualPrices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/manualPrices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPricePoints]", "fields[appPrices]", "fields[territories]", "filter[endDate]", "filter[startDate]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppriceschedules_automaticprices_gettomanyrelationship_93c2cca541: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_automaticPrices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/relationships/automaticPrices",
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

    public static var op_apppriceschedules_baseterritory_gettoonerelationship_b5df81736b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_baseTerritory_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/relationships/baseTerritory",
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

    public static var op_apppriceschedules_manualprices_gettomanyrelationship_f175959e5d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPriceSchedules_manualPrices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appPriceSchedules/{id}/relationships/manualPrices",
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

    public static var op_appscreenshotsets_createinstance_fd19041d54: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_createInstance", method: "POST",
            pathTemplate: "/v1/appScreenshotSets",
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

    public static var op_appscreenshotsets_deleteinstance_dddb0b5414: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appScreenshotSets/{id}",
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

    public static var op_appscreenshotsets_getinstance_7edfff4f11: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_getInstance", method: "GET",
            pathTemplate: "/v1/appScreenshotSets/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appScreenshotSets]", "fields[appScreenshots]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "include", "limit[appScreenshots]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appscreenshotsets_appscreenshots_gettomanyrelated_a2f9ad4e9e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_appScreenshots_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appScreenshotSets/{id}/appScreenshots",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appScreenshotSets]", "fields[appScreenshots]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appscreenshotsets_appscreenshots_gettomanyrelationship_68d921c5e1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_appScreenshots_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appScreenshotSets/{id}/relationships/appScreenshots",
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

    public static var op_appscreenshotsets_appscreenshots_replacetomanyrelationship_1850266165: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshotSets_appScreenshots_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/appScreenshotSets/{id}/relationships/appScreenshots",
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

    public static var op_appscreenshots_createinstance_6e727438b9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshots_createInstance", method: "POST",
            pathTemplate: "/v1/appScreenshots",
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

    public static var op_appscreenshots_deleteinstance_53ca7915e6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshots_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appScreenshots/{id}",
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

    public static var op_appscreenshots_getinstance_cea14fd1df: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshots_getInstance", method: "GET",
            pathTemplate: "/v1/appScreenshots/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appScreenshotSets]", "fields[appScreenshots]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appscreenshots_updateinstance_dcc2686054: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appScreenshots_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appScreenshots/{id}",
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

    public static var op_appstorereviewattachments_createinstance_ad8865ebff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewAttachments_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreReviewAttachments",
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

    public static var op_appstorereviewattachments_deleteinstance_b3fd666827: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewAttachments_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreReviewAttachments/{id}",
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

    public static var op_appstorereviewattachments_getinstance_9e91ca458c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewAttachments_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreReviewAttachments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreReviewAttachments]", "fields[appStoreReviewDetails]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstorereviewattachments_updateinstance_842a8764d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewAttachments_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreReviewAttachments/{id}",
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

    public static var op_appstorereviewdetails_createinstance_7439a70376: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewDetails_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreReviewDetails",
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

    public static var op_appstorereviewdetails_getinstance_45b78aad4d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewDetails_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreReviewDetails/{id}",
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

    public static var op_appstorereviewdetails_updateinstance_aab297c8b1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreReviewDetails/{id}",
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

    public static var op_appstorereviewdetails_appstorereviewattachments_gettomanyrelated_1b71be7c6b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewDetails_appStoreReviewAttachments_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreReviewDetails/{id}/appStoreReviewAttachments",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreReviewAttachments]", "fields[appStoreReviewDetails]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstorereviewdetails_appstorereviewattachments_gettomanyrelationship_1574e827dc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreReviewDetails_appStoreReviewAttachments_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreReviewDetails/{id}/relationships/appStoreReviewAttachments",
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

    public static var op_appstoreversionexperimenttreatmentlocalizations_createinstance_d0db52ba29: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations",
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

    public static var op_appstoreversionexperimenttreatmentlocalizations_deleteinstance_6dd3012faf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}",
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

    public static var op_appstoreversionexperimenttreatmentlocalizations_getinstance_aa2d356462: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryPlacements]", "fields[appPreviewSets]", "fields[appScreenshotSets]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionExperimentTreatments]", "include", "limit[appPreviewSets]", "limit[appScreenshotSets]", "limit[placements]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_b89c5b8cc2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_appPreviewSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appPreviewSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appPreviewSets]", "fields[appPreviews]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appStoreVersionLocalization]", "filter[previewType]", "include", "limit", "limit[appPreviews]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_0f9cc1557e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_appScreenshotSets_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appScreenshotSets",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageLocalizations]", "fields[appScreenshotSets]", "fields[appScreenshots]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appStoreVersionLocalization]", "filter[screenshotDisplayType]", "include", "limit", "limit[appScreenshots]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelate_282ebc51f2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_placements_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/placements",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAssetLibraryImages]", "fields[appAssetLibraryPlacements]", "fields[appAssetLibraryVideos]", "fields[appCustomProductPageLocalizations]", "fields[appEventLocalizations]", "fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionLocalizations]", "filter[appCustomProductPageLocalization]", "filter[appEventLocalization]", "filter[appStoreVersionLocalization]", "filter[id]", "filter[image]", "filter[placementGroup]", "filter[placementType]", "filter[state]", "filter[video]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_6192e851e5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_appPreviewSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appPreviewSets",
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

    public static var op_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_37a698b366: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_appScreenshotSets_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appScreenshotSets",
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

    public static var op_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelati_9065906418: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatmentLocalizations_placements_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/placements",
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

    public static var op_appstoreversionexperimenttreatments_createinstance_37d33efa61: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_createInstance", method: "POST",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments",
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

    public static var op_appstoreversionexperimenttreatments_deleteinstance_09da51bdd6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments/{id}",
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

    public static var op_appstoreversionexperimenttreatments_getinstance_7c398c4a24: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_getInstance", method: "GET",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "include", "limit[appStoreVersionExperimentTreatmentLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimenttreatments_updateinstance_f199c4a636: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentTreatments_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appStoreVersionExperimentTreatments/{id}",
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
    /// POST /v1/appPriceSchedules (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_createinstance_de36fe3c66(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_createinstance_de36fe3c66,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_getinstance_9ca06c5cd4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_getinstance_9ca06c5cd4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/automaticPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_automaticprices_gettomanyrelated_0ba1943719(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_automaticprices_gettomanyrelated_0ba1943719,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/baseTerritory (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_baseterritory_gettoonerelated_8878fed0b8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_baseterritory_gettoonerelated_8878fed0b8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/manualPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_manualprices_gettomanyrelated_ab06fb4a83(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_manualprices_gettomanyrelated_ab06fb4a83,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/relationships/automaticPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_automaticprices_gettomanyrelationship_93c2cca541(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_automaticprices_gettomanyrelationship_93c2cca541,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/relationships/baseTerritory (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_baseterritory_gettoonerelationship_b5df81736b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_baseterritory_gettoonerelationship_b5df81736b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appPriceSchedules/{id}/relationships/manualPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_apppriceschedules_manualprices_gettomanyrelationship_f175959e5d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppriceschedules_manualprices_gettomanyrelationship_f175959e5d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_createinstance_fd19041d54(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_createinstance_fd19041d54,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appScreenshotSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_deleteinstance_dddb0b5414(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_deleteinstance_dddb0b5414,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appScreenshotSets/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_getinstance_7edfff4f11(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_getinstance_7edfff4f11,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appScreenshotSets/{id}/appScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_appscreenshots_gettomanyrelated_a2f9ad4e9e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_appscreenshots_gettomanyrelated_a2f9ad4e9e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appScreenshotSets/{id}/relationships/appScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_appscreenshots_gettomanyrelationship_68d921c5e1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_appscreenshots_gettomanyrelationship_68d921c5e1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appScreenshotSets/{id}/relationships/appScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshotsets_appscreenshots_replacetomanyrelationship_1850266165(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshotsets_appscreenshots_replacetomanyrelationship_1850266165,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appScreenshots (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshots_createinstance_6e727438b9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshots_createinstance_6e727438b9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshots_deleteinstance_53ca7915e6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshots_deleteinstance_53ca7915e6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshots_getinstance_cea14fd1df(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshots_getinstance_cea14fd1df,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appScreenshots/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appscreenshots_updateinstance_dcc2686054(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appscreenshots_updateinstance_dcc2686054,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreReviewAttachments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewattachments_createinstance_ad8865ebff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewattachments_createinstance_ad8865ebff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreReviewAttachments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewattachments_deleteinstance_b3fd666827(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewattachments_deleteinstance_b3fd666827,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreReviewAttachments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewattachments_getinstance_9e91ca458c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewattachments_getinstance_9e91ca458c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreReviewAttachments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewattachments_updateinstance_842a8764d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewattachments_updateinstance_842a8764d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreReviewDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewdetails_createinstance_7439a70376(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewdetails_createinstance_7439a70376,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewdetails_getinstance_45b78aad4d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewdetails_getinstance_45b78aad4d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreReviewDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewdetails_updateinstance_aab297c8b1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewdetails_updateinstance_aab297c8b1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreReviewDetails/{id}/appStoreReviewAttachments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewdetails_appstorereviewattachments_gettomanyrelated_1b71be7c6b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewdetails_appstorereviewattachments_gettomanyrelated_1b71be7c6b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreReviewDetails/{id}/relationships/appStoreReviewAttachments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstorereviewdetails_appstorereviewattachments_gettomanyrelationship_1574e827dc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstorereviewdetails_appstorereviewattachments_gettomanyrelationship_1574e827dc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionExperimentTreatmentLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_createinstance_d0db52ba29(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_createinstance_d0db52ba29,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionExperimentTreatmentLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_deleteinstance_6dd3012faf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_deleteinstance_6dd3012faf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_getinstance_aa2d356462(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_getinstance_aa2d356462,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_b89c5b8cc2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_b89c5b8cc2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_0f9cc1557e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_0f9cc1557e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelate_282ebc51f2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelate_282ebc51f2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appPreviewSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_6192e851e5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_apppreviewsets_gettomanyre_6192e851e5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appScreenshotSets (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_37a698b366(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_appscreenshotsets_gettoman_37a698b366,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/placements (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelati_9065906418(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatmentlocalizations_placements_gettomanyrelati_9065906418,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/appStoreVersionExperimentTreatments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_createinstance_37d33efa61(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_createinstance_37d33efa61,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/appStoreVersionExperimentTreatments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_deleteinstance_09da51bdd6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_deleteinstance_09da51bdd6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersionExperimentTreatments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_getinstance_7c398c4a24(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_getinstance_7c398c4a24,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersionExperimentTreatments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimenttreatments_updateinstance_f199c4a636(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimenttreatments_updateinstance_f199c4a636,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
