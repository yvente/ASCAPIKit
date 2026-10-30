// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_appstoreversions_build_gettoonerelated_d598dbed64: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_build_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/build",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_customerreviews_gettomanyrelated_d885189c1d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_customerReviews_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/customerReviews",
            pathParameterNames: ["id"],
            queryParameterNames: ["exists[publishedResponse]", "fields[customerReviewResponses]", "fields[customerReviews]", "fields[territories]", "filter[rating]", "filter[reviewTerritory]", "filter[territory]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversions_gamecenterappversion_gettoonerelated_8897e994fa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_gameCenterAppVersion_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/gameCenterAppVersion",
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

    public static var op_appstoreversions_alternativedistributionpackage_gettoonerelationship_382f634d83: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_alternativeDistributionPackage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/alternativeDistributionPackage",
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

    public static var op_appstoreversions_appclipdefaultexperience_gettoonerelationship_648933c33d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appClipDefaultExperience_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appClipDefaultExperience",
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

    public static var op_appstoreversions_appclipdefaultexperience_updatetoonerelationship_33d6ba9693: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appClipDefaultExperience_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appClipDefaultExperience",
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

    public static var op_appstoreversions_appstorereviewdetail_gettoonerelationship_f56b9c230f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreReviewDetail_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreReviewDetail",
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

    public static var op_appstoreversions_appstoreversionexperiments_gettomanyrelationship_a35e97b4a8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionExperiments_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreVersionExperiments",
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

    public static var op_appstoreversions_appstoreversionexperimentsv2_gettomanyrelationship_78b94db801: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionExperimentsV2_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreVersionExperimentsV2",
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

    public static var op_appstoreversions_appstoreversionlocalizations_gettomanyrelationship_f56f5ee850: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreVersionLocalizations",
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

    public static var op_appstoreversions_appstoreversionphasedrelease_gettoonerelationship_4eb1c1614d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionPhasedRelease_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreVersionPhasedRelease",
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

    public static var op_appstoreversions_appstoreversionsubmission_gettoonerelationship_18ad17c720: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_appStoreVersionSubmission_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/appStoreVersionSubmission",
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

    public static var op_appstoreversions_build_gettoonerelationship_889b78d077: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_build_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/build",
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

    public static var op_appstoreversions_build_updatetoonerelationship_a5d3d4bf4c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_build_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/build",
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

    public static var op_appstoreversions_customerreviews_gettomanyrelationship_c59cb5c71b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_customerReviews_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/customerReviews",
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

    public static var op_appstoreversions_gamecenterappversion_gettoonerelationship_b1a978949b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_gameCenterAppVersion_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/gameCenterAppVersion",
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

    public static var op_appstoreversions_routingappcoverage_gettoonerelationship_7efaaec488: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_routingAppCoverage_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/relationships/routingAppCoverage",
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

    public static var op_appstoreversions_routingappcoverage_gettoonerelated_c8da5735dd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersions_routingAppCoverage_getToOneRelated", method: "GET",
            pathTemplate: "/v1/appStoreVersions/{id}/routingAppCoverage",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersions]", "fields[routingAppCoverages]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apptags_updateinstance_85685029f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appTags_updateInstance", method: "PATCH",
            pathTemplate: "/v1/appTags/{id}",
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

    public static var op_apptags_territories_gettomanyrelationship_9a8cdc995d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appTags_territories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/appTags/{id}/relationships/territories",
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

    public static var op_apptags_territories_gettomanyrelated_649e29158c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appTags_territories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/appTags/{id}/territories",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_getcollection_559919c1ae: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_getCollection", method: "GET",
            pathTemplate: "/v1/apps",
            pathParameterNames: [],
            queryParameterNames: ["exists[gameCenterEnabledVersions]", "fields[androidToIosAppMappingDetails]", "fields[appClips]", "fields[appCustomProductPages]", "fields[appEncryptionDeclarations]", "fields[appEvents]", "fields[appInfos]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppLocalizations]", "fields[betaAppReviewDetails]", "fields[betaGroups]", "fields[betaLicenseAgreements]", "fields[buildIcons]", "fields[builds]", "fields[ciProducts]", "fields[endUserLicenseAgreements]", "fields[gameCenterDetails]", "fields[gameCenterEnabledVersions]", "fields[inAppPurchases]", "fields[preReleaseVersions]", "fields[promotedPurchases]", "fields[reviewSubmissions]", "fields[subscriptionGracePeriods]", "fields[subscriptionGroups]", "filter[appStoreVersions.appStoreState]", "filter[appStoreVersions.appVersionState]", "filter[appStoreVersions.platform]", "filter[appStoreVersions]", "filter[bundleId]", "filter[id]", "filter[name]", "filter[reviewSubmissions.platform]", "filter[reviewSubmissions.state]", "filter[sku]", "include", "limit", "limit[androidToIosAppMappingDetails]", "limit[appClips]", "limit[appCustomProductPages]", "limit[appEncryptionDeclarations]", "limit[appEvents]", "limit[appInfos]", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersions]", "limit[betaAppLocalizations]", "limit[betaGroups]", "limit[builds]", "limit[gameCenterEnabledVersions]", "limit[inAppPurchasesV2]", "limit[inAppPurchases]", "limit[preReleaseVersions]", "limit[promotedPurchases]", "limit[reviewSubmissions]", "limit[subscriptionGroups]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_getinstance_88c8c93973: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_getInstance", method: "GET",
            pathTemplate: "/v1/apps/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[androidToIosAppMappingDetails]", "fields[appClips]", "fields[appCustomProductPages]", "fields[appEncryptionDeclarations]", "fields[appEvents]", "fields[appInfos]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[apps]", "fields[betaAppLocalizations]", "fields[betaAppReviewDetails]", "fields[betaGroups]", "fields[betaLicenseAgreements]", "fields[buildIcons]", "fields[builds]", "fields[ciProducts]", "fields[endUserLicenseAgreements]", "fields[gameCenterDetails]", "fields[gameCenterEnabledVersions]", "fields[inAppPurchases]", "fields[preReleaseVersions]", "fields[promotedPurchases]", "fields[reviewSubmissions]", "fields[subscriptionGracePeriods]", "fields[subscriptionGroups]", "include", "limit[androidToIosAppMappingDetails]", "limit[appClips]", "limit[appCustomProductPages]", "limit[appEncryptionDeclarations]", "limit[appEvents]", "limit[appInfos]", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersions]", "limit[betaAppLocalizations]", "limit[betaGroups]", "limit[builds]", "limit[gameCenterEnabledVersions]", "limit[inAppPurchasesV2]", "limit[inAppPurchases]", "limit[preReleaseVersions]", "limit[promotedPurchases]", "limit[reviewSubmissions]", "limit[subscriptionGroups]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_updateinstance_765ca27416: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_updateInstance", method: "PATCH",
            pathTemplate: "/v1/apps/{id}",
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

    public static var op_apps_accessibilitydeclarations_gettomanyrelated_3a4f8d709e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_accessibilityDeclarations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/accessibilityDeclarations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[accessibilityDeclarations]", "filter[deviceFamily]", "filter[state]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_alternativedistributionkey_gettoonerelated_377d0c428b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_alternativeDistributionKey_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/alternativeDistributionKey",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionKeys]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_analyticsreportrequests_gettomanyrelated_0bb4a46ec3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_analyticsReportRequests_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/analyticsReportRequests",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[analyticsReportRequests]", "fields[analyticsReports]", "filter[accessType]", "include", "limit", "limit[reports]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_androidtoiosappmappingdetails_gettomanyrelated_a78850e43f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_androidToIosAppMappingDetails_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/androidToIosAppMappingDetails",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[androidToIosAppMappingDetails]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appavailabilityv2_gettoonerelated_e62714d5b8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appAvailabilityV2_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appAvailabilityV2",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appAvailabilities]", "fields[territoryAvailabilities]", "include", "limit[territoryAvailabilities]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appclips_gettomanyrelated_3b6b2aa00c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appClips_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appClips",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appClipDefaultExperiences]", "fields[appClips]", "fields[apps]", "filter[bundleId]", "include", "limit", "limit[appClipDefaultExperiences]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appcustomproductpages_gettomanyrelated_160770cef7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appCustomProductPages_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appCustomProductPages",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appCustomProductPageVersions]", "fields[appCustomProductPages]", "fields[apps]", "filter[visible]", "include", "limit", "limit[appCustomProductPageVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appencryptiondeclarations_gettomanyrelated_f12be19fa5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appEncryptionDeclarations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appEncryptionDeclarations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEncryptionDeclarationDocuments]", "fields[appEncryptionDeclarations]", "fields[apps]", "fields[builds]", "filter[builds]", "filter[platform]", "include", "limit", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appevents_gettomanyrelated_4493e636d8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appEvents_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appEvents",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appEventLocalizations]", "fields[appEvents]", "filter[eventState]", "filter[id]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_appinfos_gettomanyrelated_6c37b443d0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appInfos_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appInfos",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[ageRatingDeclarations]", "fields[appCategories]", "fields[appInfoLocalizations]", "fields[appInfos]", "fields[apps]", "include", "limit", "limit[appInfoLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_apppricepoints_gettomanyrelated_e33700a785: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appPricePoints_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appPricePoints",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPricePoints]", "fields[apps]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_apppriceschedule_gettoonerelated_5d01528c87: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appPriceSchedule_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appPriceSchedule",
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

    public static var op_apps_appstoreversionexperimentsv2_gettomanyrelated_2646c073fa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appStoreVersionExperimentsV2_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appStoreVersionExperimentsV2",
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

    public static var op_apps_appstoreversions_gettomanyrelated_601b4efd45: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appStoreVersions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appStoreVersions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[alternativeDistributionPackages]", "fields[appClipDefaultExperiences]", "fields[appStoreReviewDetails]", "fields[appStoreVersionExperiments]", "fields[appStoreVersionLocalizations]", "fields[appStoreVersionPhasedReleases]", "fields[appStoreVersionSubmissions]", "fields[appStoreVersions]", "fields[apps]", "fields[builds]", "fields[gameCenterAppVersions]", "fields[routingAppCoverages]", "filter[appStoreState]", "filter[appVersionState]", "filter[id]", "filter[platform]", "filter[versionString]", "include", "limit", "limit[appStoreVersionExperimentsV2]", "limit[appStoreVersionExperiments]", "limit[appStoreVersionLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_apptags_gettomanyrelated_347ee586a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_appTags_getToManyRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/appTags",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appTags]", "fields[territories]", "filter[visibleInAppStore]", "include", "limit", "limit[territories]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apps_assetlibrary_gettoonerelated_3d1baf6fbe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "apps_assetLibrary_getToOneRelated", method: "GET",
            pathTemplate: "/v1/apps/{id}/assetLibrary",
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
}

extension ASCClient {
    /// GET /v1/appStoreVersions/{id}/build (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_build_gettoonerelated_d598dbed64(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_build_gettoonerelated_d598dbed64,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/customerReviews (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_customerreviews_gettomanyrelated_d885189c1d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_customerreviews_gettomanyrelated_d885189c1d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/gameCenterAppVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_gamecenterappversion_gettoonerelated_8897e994fa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_gamecenterappversion_gettoonerelated_8897e994fa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/alternativeDistributionPackage (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_alternativedistributionpackage_gettoonerelationship_382f634d83(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_alternativedistributionpackage_gettoonerelationship_382f634d83,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appClipDefaultExperience (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appclipdefaultexperience_gettoonerelationship_648933c33d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appclipdefaultexperience_gettoonerelationship_648933c33d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersions/{id}/relationships/appClipDefaultExperience (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appclipdefaultexperience_updatetoonerelationship_33d6ba9693(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appclipdefaultexperience_updatetoonerelationship_33d6ba9693,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreReviewDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstorereviewdetail_gettoonerelationship_f56b9c230f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstorereviewdetail_gettoonerelationship_f56b9c230f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreVersionExperiments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionexperiments_gettomanyrelationship_a35e97b4a8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionexperiments_gettomanyrelationship_a35e97b4a8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreVersionExperimentsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionexperimentsv2_gettomanyrelationship_78b94db801(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionexperimentsv2_gettomanyrelationship_78b94db801,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreVersionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionlocalizations_gettomanyrelationship_f56f5ee850(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionlocalizations_gettomanyrelationship_f56f5ee850,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreVersionPhasedRelease (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionphasedrelease_gettoonerelationship_4eb1c1614d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionphasedrelease_gettoonerelationship_4eb1c1614d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/appStoreVersionSubmission (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_appstoreversionsubmission_gettoonerelationship_18ad17c720(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_appstoreversionsubmission_gettoonerelationship_18ad17c720,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/build (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_build_gettoonerelationship_889b78d077(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_build_gettoonerelationship_889b78d077,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appStoreVersions/{id}/relationships/build (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_build_updatetoonerelationship_a5d3d4bf4c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_build_updatetoonerelationship_a5d3d4bf4c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/customerReviews (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_customerreviews_gettomanyrelationship_c59cb5c71b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_customerreviews_gettomanyrelationship_c59cb5c71b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/gameCenterAppVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_gamecenterappversion_gettoonerelationship_b1a978949b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_gamecenterappversion_gettoonerelationship_b1a978949b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/relationships/routingAppCoverage (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_routingappcoverage_gettoonerelationship_7efaaec488(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_routingappcoverage_gettoonerelationship_7efaaec488,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appStoreVersions/{id}/routingAppCoverage (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversions_routingappcoverage_gettoonerelated_c8da5735dd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversions_routingappcoverage_gettoonerelated_c8da5735dd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/appTags/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apptags_updateinstance_85685029f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apptags_updateinstance_85685029f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appTags/{id}/relationships/territories (raw transport response; no Codable guarantee).
    public func ascGenerated_apptags_territories_gettomanyrelationship_9a8cdc995d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apptags_territories_gettomanyrelationship_9a8cdc995d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/appTags/{id}/territories (raw transport response; no Codable guarantee).
    public func ascGenerated_apptags_territories_gettomanyrelated_649e29158c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apptags_territories_gettomanyrelated_649e29158c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_getcollection_559919c1ae(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_getcollection_559919c1ae,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_getinstance_88c8c93973(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_getinstance_88c8c93973,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/apps/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_updateinstance_765ca27416(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_updateinstance_765ca27416,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/accessibilityDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_accessibilitydeclarations_gettomanyrelated_3a4f8d709e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_accessibilitydeclarations_gettomanyrelated_3a4f8d709e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/alternativeDistributionKey (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_alternativedistributionkey_gettoonerelated_377d0c428b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_alternativedistributionkey_gettoonerelated_377d0c428b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/analyticsReportRequests (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_analyticsreportrequests_gettomanyrelated_0bb4a46ec3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_analyticsreportrequests_gettomanyrelated_0bb4a46ec3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/androidToIosAppMappingDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_androidtoiosappmappingdetails_gettomanyrelated_a78850e43f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_androidtoiosappmappingdetails_gettomanyrelated_a78850e43f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appAvailabilityV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appavailabilityv2_gettoonerelated_e62714d5b8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appavailabilityv2_gettoonerelated_e62714d5b8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appClips (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appclips_gettomanyrelated_3b6b2aa00c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appclips_gettomanyrelated_3b6b2aa00c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appCustomProductPages (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appcustomproductpages_gettomanyrelated_160770cef7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appcustomproductpages_gettomanyrelated_160770cef7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appEncryptionDeclarations (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appencryptiondeclarations_gettomanyrelated_f12be19fa5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appencryptiondeclarations_gettomanyrelated_f12be19fa5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appEvents (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appevents_gettomanyrelated_4493e636d8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appevents_gettomanyrelated_4493e636d8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appInfos (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appinfos_gettomanyrelated_6c37b443d0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appinfos_gettomanyrelated_6c37b443d0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appPricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apppricepoints_gettomanyrelated_e33700a785(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apppricepoints_gettomanyrelated_e33700a785,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appPriceSchedule (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apppriceschedule_gettoonerelated_5d01528c87(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apppriceschedule_gettoonerelated_5d01528c87,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appStoreVersionExperimentsV2 (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appstoreversionexperimentsv2_gettomanyrelated_2646c073fa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appstoreversionexperimentsv2_gettomanyrelated_2646c073fa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appStoreVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_appstoreversions_gettomanyrelated_601b4efd45(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_appstoreversions_gettomanyrelated_601b4efd45,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/appTags (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_apptags_gettomanyrelated_347ee586a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_apptags_gettomanyrelated_347ee586a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/apps/{id}/assetLibrary (raw transport response; no Codable guarantee).
    public func ascGenerated_apps_assetlibrary_gettoonerelated_3d1baf6fbe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apps_assetlibrary_gettoonerelated_3d1baf6fbe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
