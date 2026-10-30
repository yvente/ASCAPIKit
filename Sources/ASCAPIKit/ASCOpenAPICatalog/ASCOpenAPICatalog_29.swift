// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_webhookpings_createinstance_3ce0a9d0c4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhookPings_createInstance", method: "POST",
            pathTemplate: "/v1/webhookPings",
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

    public static var op_webhooks_createinstance_4f64cdefed: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_createInstance", method: "POST",
            pathTemplate: "/v1/webhooks",
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

    public static var op_webhooks_deleteinstance_7231348b60: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/webhooks/{id}",
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

    public static var op_webhooks_getinstance_56305be61a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_getInstance", method: "GET",
            pathTemplate: "/v1/webhooks/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[webhooks]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_webhooks_updateinstance_83dff14ef0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_updateInstance", method: "PATCH",
            pathTemplate: "/v1/webhooks/{id}",
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

    public static var op_webhooks_deliveries_gettomanyrelated_286d494620: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_deliveries_getToManyRelated", method: "GET",
            pathTemplate: "/v1/webhooks/{id}/deliveries",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[webhookDeliveries]", "fields[webhookEvents]", "filter[createdDateGreaterThanOrEqualTo]", "filter[createdDateLessThan]", "filter[deliveryState]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_webhooks_deliveries_gettomanyrelationship_520ca47830: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhooks_deliveries_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/webhooks/{id}/relationships/deliveries",
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

    public static var op_winbackoffers_createinstance_f0b34aab81: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_createInstance", method: "POST",
            pathTemplate: "/v1/winBackOffers",
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

    public static var op_winbackoffers_deleteinstance_1cc18129d7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/winBackOffers/{id}",
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

    public static var op_winbackoffers_getinstance_e9446c1c44: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_getInstance", method: "GET",
            pathTemplate: "/v1/winBackOffers/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[winBackOfferPrices]", "fields[winBackOffers]", "include", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_winbackoffers_updateinstance_7b5088f295: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_updateInstance", method: "PATCH",
            pathTemplate: "/v1/winBackOffers/{id}",
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

    public static var op_winbackoffers_prices_gettomanyrelated_b205842d58: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_prices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/winBackOffers/{id}/prices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[territories]", "fields[winBackOfferPrices]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_winbackoffers_prices_gettomanyrelationship_c74ff0dc0f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "winBackOffers_prices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/winBackOffers/{id}/relationships/prices",
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

    public static var op_appavailabilitiesv2_createinstance_b5bb9a1b26: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAvailabilitiesV2_createInstance", method: "POST",
            pathTemplate: "/v2/appAvailabilities",
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

    public static var op_appavailabilitiesv2_getinstance_a53f1fe14a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAvailabilitiesV2_getInstance", method: "GET",
            pathTemplate: "/v2/appAvailabilities/{id}",
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

    public static var op_appavailabilitiesv2_territoryavailabilities_gettomanyrelationship_f04d9d9d2a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAvailabilitiesV2_territoryAvailabilities_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/appAvailabilities/{id}/relationships/territoryAvailabilities",
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

    public static var op_appavailabilitiesv2_territoryavailabilities_gettomanyrelated_152eda5e74: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appAvailabilitiesV2_territoryAvailabilities_getToManyRelated", method: "GET",
            pathTemplate: "/v2/appAvailabilities/{id}/territoryAvailabilities",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[territories]", "fields[territoryAvailabilities]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimentsv2_createinstance_d7e7468864: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_createInstance", method: "POST",
            pathTemplate: "/v2/appStoreVersionExperiments",
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

    public static var op_appstoreversionexperimentsv2_deleteinstance_5c964c13f1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/appStoreVersionExperiments/{id}",
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

    public static var op_appstoreversionexperimentsv2_getinstance_3a045549c0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_getInstance", method: "GET",
            pathTemplate: "/v2/appStoreVersionExperiments/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "fields[appStoreVersions]", "fields[apps]", "include", "limit[appStoreVersionExperimentTreatments]", "limit[controlVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimentsv2_updateinstance_b957163622: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/appStoreVersionExperiments/{id}",
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

    public static var op_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_6ba5c6b9c6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_appStoreVersionExperimentTreatments_getToManyRelated", method: "GET",
            pathTemplate: "/v2/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appStoreVersionExperimentTreatmentLocalizations]", "fields[appStoreVersionExperimentTreatments]", "fields[appStoreVersionExperiments]", "include", "limit", "limit[appStoreVersionExperimentTreatmentLocalizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_14a298c00b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appStoreVersionExperimentsV2_appStoreVersionExperimentTreatments_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/appStoreVersionExperiments/{id}/relationships/appStoreVersionExperimentTreatments",
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

    public static var op_gamecenterachievementimagesv2_createinstance_602a29296b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImagesV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterAchievementImages",
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

    public static var op_gamecenterachievementimagesv2_deleteinstance_25c7ec8d87: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImagesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterAchievementImages/{id}",
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

    public static var op_gamecenterachievementimagesv2_getinstance_014c8b99ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImagesV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementimagesv2_updateinstance_74192ac65b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementImagesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterAchievementImages/{id}",
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

    public static var op_gamecenterachievementlocalizationsv2_createinstance_61bc25fae5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterAchievementLocalizations",
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

    public static var op_gamecenterachievementlocalizationsv2_deleteinstance_d2d57b1fef: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterAchievementLocalizations/{id}",
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

    public static var op_gamecenterachievementlocalizationsv2_getinstance_9031569af0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizationsv2_updateinstance_02da47f578: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/gameCenterAchievementLocalizations/{id}",
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

    public static var op_gamecenterachievementlocalizationsv2_image_gettoonerelated_cdf0d1a4d1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_image_getToOneRelated", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementLocalizations/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementlocalizationsv2_image_gettoonerelationship_9c63afde13: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementLocalizationsV2_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementLocalizations/{id}/relationships/image",
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

    public static var op_gamecenterachievementversionsv2_createinstance_97a3599b9e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementVersionsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterAchievementVersions",
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

    public static var op_gamecenterachievementversionsv2_getinstance_39da05ddac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementVersionsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementVersions]", "fields[gameCenterAchievements]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementversionsv2_localizations_gettomanyrelated_2bb18e541b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementVersionsV2_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementImages]", "fields[gameCenterAchievementLocalizations]", "fields[gameCenterAchievementVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_gamecenterachievementversionsv2_localizations_gettomanyrelationship_0ead027c62: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementVersionsV2_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/gameCenterAchievementVersions/{id}/relationships/localizations",
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

    public static var op_gamecenterachievementsv2_createinstance_a7727013e0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_createInstance", method: "POST",
            pathTemplate: "/v2/gameCenterAchievements",
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

    public static var op_gamecenterachievementsv2_deleteinstance_5be6582153: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/gameCenterAchievements/{id}",
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

    public static var op_gamecenterachievementsv2_getinstance_511786c271: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "gameCenterAchievementsV2_getInstance", method: "GET",
            pathTemplate: "/v2/gameCenterAchievements/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[gameCenterAchievementVersions]", "fields[gameCenterAchievements]", "fields[gameCenterActivities]", "fields[gameCenterDetails]", "fields[gameCenterGroups]", "include", "limit[versions]"],
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
    /// POST /v1/webhookPings (raw transport response; no Codable guarantee).
    public func ascGenerated_webhookpings_createinstance_3ce0a9d0c4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhookpings_createinstance_3ce0a9d0c4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/webhooks (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_createinstance_4f64cdefed(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_createinstance_4f64cdefed,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/webhooks/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_deleteinstance_7231348b60(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_deleteinstance_7231348b60,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/webhooks/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_getinstance_56305be61a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_getinstance_56305be61a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/webhooks/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_updateinstance_83dff14ef0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_updateinstance_83dff14ef0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/webhooks/{id}/deliveries (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_deliveries_gettomanyrelated_286d494620(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_deliveries_gettomanyrelated_286d494620,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/webhooks/{id}/relationships/deliveries (raw transport response; no Codable guarantee).
    public func ascGenerated_webhooks_deliveries_gettomanyrelationship_520ca47830(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhooks_deliveries_gettomanyrelationship_520ca47830,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/winBackOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_createinstance_f0b34aab81(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_createinstance_f0b34aab81,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/winBackOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_deleteinstance_1cc18129d7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_deleteinstance_1cc18129d7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/winBackOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_getinstance_e9446c1c44(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_getinstance_e9446c1c44,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/winBackOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_updateinstance_7b5088f295(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_updateinstance_7b5088f295,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/winBackOffers/{id}/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_prices_gettomanyrelated_b205842d58(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_prices_gettomanyrelated_b205842d58,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/winBackOffers/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_winbackoffers_prices_gettomanyrelationship_c74ff0dc0f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_winbackoffers_prices_gettomanyrelationship_c74ff0dc0f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/appAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_appavailabilitiesv2_createinstance_b5bb9a1b26(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appavailabilitiesv2_createinstance_b5bb9a1b26,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appavailabilitiesv2_getinstance_a53f1fe14a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appavailabilitiesv2_getinstance_a53f1fe14a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appAvailabilities/{id}/relationships/territoryAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_appavailabilitiesv2_territoryavailabilities_gettomanyrelationship_f04d9d9d2a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appavailabilitiesv2_territoryavailabilities_gettomanyrelationship_f04d9d9d2a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appAvailabilities/{id}/territoryAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_appavailabilitiesv2_territoryavailabilities_gettomanyrelated_152eda5e74(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appavailabilitiesv2_territoryavailabilities_gettomanyrelated_152eda5e74,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/appStoreVersionExperiments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_createinstance_d7e7468864(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_createinstance_d7e7468864,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_deleteinstance_5c964c13f1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_deleteinstance_5c964c13f1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_getinstance_3a045549c0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_getinstance_3a045549c0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/appStoreVersionExperiments/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_updateinstance_b957163622(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_updateinstance_b957163622,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_6ba5c6b9c6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_6ba5c6b9c6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/appStoreVersionExperiments/{id}/relationships/appStoreVersionExperimentTreatments (raw transport response; no Codable guarantee).
    public func ascGenerated_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_14a298c00b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_appstoreversionexperimentsv2_appstoreversionexperimenttreatments_gettomany_14a298c00b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterAchievementImages (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimagesv2_createinstance_602a29296b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimagesv2_createinstance_602a29296b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimagesv2_deleteinstance_25c7ec8d87(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimagesv2_deleteinstance_25c7ec8d87,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimagesv2_getinstance_014c8b99ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimagesv2_getinstance_014c8b99ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterAchievementImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementimagesv2_updateinstance_74192ac65b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementimagesv2_updateinstance_74192ac65b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterAchievementLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_createinstance_61bc25fae5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_createinstance_61bc25fae5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_deleteinstance_d2d57b1fef(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_deleteinstance_d2d57b1fef,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_getinstance_9031569af0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_getinstance_9031569af0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/gameCenterAchievementLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_updateinstance_02da47f578(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_updateinstance_02da47f578,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementLocalizations/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_image_gettoonerelated_cdf0d1a4d1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_image_gettoonerelated_cdf0d1a4d1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementLocalizations/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementlocalizationsv2_image_gettoonerelationship_9c63afde13(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementlocalizationsv2_image_gettoonerelationship_9c63afde13,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterAchievementVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementversionsv2_createinstance_97a3599b9e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementversionsv2_createinstance_97a3599b9e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementversionsv2_getinstance_39da05ddac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementversionsv2_getinstance_39da05ddac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementversionsv2_localizations_gettomanyrelated_2bb18e541b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementversionsv2_localizations_gettomanyrelated_2bb18e541b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievementVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementversionsv2_localizations_gettomanyrelationship_0ead027c62(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementversionsv2_localizations_gettomanyrelationship_0ead027c62,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/gameCenterAchievements (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_createinstance_a7727013e0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_createinstance_a7727013e0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_deleteinstance_5be6582153(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_deleteinstance_5be6582153,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/gameCenterAchievements/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_gamecenterachievementsv2_getinstance_511786c271(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_gamecenterachievementsv2_getinstance_511786c271,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
