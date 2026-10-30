// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_subscriptions_prices_gettomanyrelated_a157b7ac82: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_prices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/prices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[subscriptionPrices]", "fields[territories]", "filter[planType]", "filter[subscriptionPricePoint]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_promotedpurchase_gettoonerelated_8a9b8ab464: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_promotedPurchase_getToOneRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/promotedPurchase",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchases]", "fields[promotedPurchases]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_promotionaloffers_gettomanyrelated_766ed86db5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_promotionalOffers_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/promotionalOffers",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPromotionalOfferPrices]", "fields[subscriptionPromotionalOffers]", "fields[subscriptions]", "filter[territory]", "include", "limit", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_appstorereviewscreenshot_gettoonerelationship_82b4982fc7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_appStoreReviewScreenshot_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/appStoreReviewScreenshot",
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

    public static var op_subscriptions_images_gettomanyrelationship_a8bf1602b6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_images_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/images",
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

    public static var op_subscriptions_introductoryoffers_deletetomanyrelationship_c430b167c9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_introductoryOffers_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/subscriptions/{id}/relationships/introductoryOffers",
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

    public static var op_subscriptions_introductoryoffers_gettomanyrelationship_53a5eb5e2e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_introductoryOffers_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/introductoryOffers",
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

    public static var op_subscriptions_offercodes_gettomanyrelationship_aa141155dc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_offerCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/offerCodes",
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

    public static var op_subscriptions_planavailabilities_gettomanyrelationship_4e6f413157: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_planAvailabilities_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/planAvailabilities",
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

    public static var op_subscriptions_pricepoints_gettomanyrelationship_c8e09dfcd7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_pricePoints_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/pricePoints",
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

    public static var op_subscriptions_prices_deletetomanyrelationship_7108ebf0ae: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_prices_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/subscriptions/{id}/relationships/prices",
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

    public static var op_subscriptions_prices_gettomanyrelationship_f1b0c409b2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_prices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/prices",
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

    public static var op_subscriptions_promotedpurchase_gettoonerelationship_c25c1f977b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_promotedPurchase_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/promotedPurchase",
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

    public static var op_subscriptions_promotionaloffers_gettomanyrelationship_dac16f93a4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_promotionalOffers_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/promotionalOffers",
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

    public static var op_subscriptions_subscriptionavailability_gettoonerelationship_1b3b34d4e3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_subscriptionAvailability_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/subscriptionAvailability",
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

    public static var op_subscriptions_subscriptionlocalizations_gettomanyrelationship_064ebb3e08: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_subscriptionLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/subscriptionLocalizations",
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

    public static var op_subscriptions_versions_gettomanyrelationship_8ab03037b0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/versions",
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

    public static var op_subscriptions_winbackoffers_gettomanyrelationship_bb21551257: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_winBackOffers_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/relationships/winBackOffers",
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

    public static var op_subscriptions_subscriptionavailability_gettoonerelated_d7e4f7228b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_subscriptionAvailability_getToOneRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/subscriptionAvailability",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionAvailabilities]", "fields[territories]", "include", "limit[availableTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_subscriptionlocalizations_gettomanyrelated_bcb68a1170: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_subscriptionLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/subscriptionLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionLocalizations]", "fields[subscriptions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_versions_gettomanyrelated_ffcaf899af: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]", "fields[subscriptionLocalizations]", "fields[subscriptionVersions]", "fields[subscriptions]", "filter[state]", "include", "limit", "limit[images]", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_winbackoffers_gettomanyrelated_4eff750674: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_winBackOffers_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/winBackOffers",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[winBackOfferPrices]", "fields[winBackOffers]", "include", "limit", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_territories_getcollection_c411a3e1b2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "territories_getCollection", method: "GET",
            pathTemplate: "/v1/territories",
            pathParameterNames: [],
            queryParameterNames: ["fields[territories]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_territoryavailabilities_updateinstance_21524476b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "territoryAvailabilities_updateInstance", method: "PATCH",
            pathTemplate: "/v1/territoryAvailabilities/{id}",
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

    public static var op_userinvitations_getcollection_1603e8def5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_getCollection", method: "GET",
            pathTemplate: "/v1/userInvitations",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[userInvitations]", "filter[email]", "filter[roles]", "filter[visibleApps]", "include", "limit", "limit[visibleApps]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_userinvitations_createinstance_afd1678bee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_createInstance", method: "POST",
            pathTemplate: "/v1/userInvitations",
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

    public static var op_userinvitations_deleteinstance_a93d9655b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/userInvitations/{id}",
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

    public static var op_userinvitations_getinstance_dde3d94ea5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_getInstance", method: "GET",
            pathTemplate: "/v1/userInvitations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[userInvitations]", "include", "limit[visibleApps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_userinvitations_visibleapps_gettomanyrelationship_8b7bbda60b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_visibleApps_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/userInvitations/{id}/relationships/visibleApps",
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

    public static var op_userinvitations_visibleapps_gettomanyrelated_54cf52088c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "userInvitations_visibleApps_getToManyRelated", method: "GET",
            pathTemplate: "/v1/userInvitations/{id}/visibleApps",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_users_getcollection_27af39f771: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_getCollection", method: "GET",
            pathTemplate: "/v1/users",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[users]", "filter[roles]", "filter[username]", "filter[visibleApps]", "include", "limit", "limit[visibleApps]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_users_deleteinstance_b6bad17495: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/users/{id}",
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

    public static var op_users_getinstance_06df6c8564: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_getInstance", method: "GET",
            pathTemplate: "/v1/users/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[users]", "include", "limit[visibleApps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_users_updateinstance_d85df474bb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_updateInstance", method: "PATCH",
            pathTemplate: "/v1/users/{id}",
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

    public static var op_users_visibleapps_deletetomanyrelationship_448d4eecda: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_visibleApps_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/users/{id}/relationships/visibleApps",
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

    public static var op_users_visibleapps_gettomanyrelationship_c62d0e7820: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_visibleApps_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/users/{id}/relationships/visibleApps",
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

    public static var op_users_visibleapps_replacetomanyrelationship_0c560dc149: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_visibleApps_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/users/{id}/relationships/visibleApps",
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

    public static var op_users_visibleapps_createtomanyrelationship_c1f94a8a4b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_visibleApps_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/users/{id}/relationships/visibleApps",
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

    public static var op_users_visibleapps_gettomanyrelated_51c088b605: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "users_visibleApps_getToManyRelated", method: "GET",
            pathTemplate: "/v1/users/{id}/visibleApps",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_webhookdeliveries_createinstance_22c0b37680: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "webhookDeliveries_createInstance", method: "POST",
            pathTemplate: "/v1/webhookDeliveries",
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
}

extension ASCClient {
    /// GET /v1/subscriptions/{id}/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_prices_gettomanyrelated_a157b7ac82(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_prices_gettomanyrelated_a157b7ac82,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/promotedPurchase (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_promotedpurchase_gettoonerelated_8a9b8ab464(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_promotedpurchase_gettoonerelated_8a9b8ab464,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/promotionalOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_promotionaloffers_gettomanyrelated_766ed86db5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_promotionaloffers_gettomanyrelated_766ed86db5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/appStoreReviewScreenshot (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_appstorereviewscreenshot_gettoonerelationship_82b4982fc7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_appstorereviewscreenshot_gettoonerelationship_82b4982fc7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/images (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_images_gettomanyrelationship_a8bf1602b6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_images_gettomanyrelationship_a8bf1602b6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptions/{id}/relationships/introductoryOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_introductoryoffers_deletetomanyrelationship_c430b167c9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_introductoryoffers_deletetomanyrelationship_c430b167c9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/introductoryOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_introductoryoffers_gettomanyrelationship_53a5eb5e2e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_introductoryoffers_gettomanyrelationship_53a5eb5e2e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/offerCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_offercodes_gettomanyrelationship_aa141155dc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_offercodes_gettomanyrelationship_aa141155dc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/planAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_planavailabilities_gettomanyrelationship_4e6f413157(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_planavailabilities_gettomanyrelationship_4e6f413157,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/pricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_pricepoints_gettomanyrelationship_c8e09dfcd7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_pricepoints_gettomanyrelationship_c8e09dfcd7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptions/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_prices_deletetomanyrelationship_7108ebf0ae(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_prices_deletetomanyrelationship_7108ebf0ae,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_prices_gettomanyrelationship_f1b0c409b2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_prices_gettomanyrelationship_f1b0c409b2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/promotedPurchase (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_promotedpurchase_gettoonerelationship_c25c1f977b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_promotedpurchase_gettoonerelationship_c25c1f977b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/promotionalOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_promotionaloffers_gettomanyrelationship_dac16f93a4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_promotionaloffers_gettomanyrelationship_dac16f93a4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/subscriptionAvailability (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_subscriptionavailability_gettoonerelationship_1b3b34d4e3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_subscriptionavailability_gettoonerelationship_1b3b34d4e3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/subscriptionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_subscriptionlocalizations_gettomanyrelationship_064ebb3e08(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_subscriptionlocalizations_gettomanyrelationship_064ebb3e08,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_versions_gettomanyrelationship_8ab03037b0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_versions_gettomanyrelationship_8ab03037b0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/relationships/winBackOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_winbackoffers_gettomanyrelationship_bb21551257(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_winbackoffers_gettomanyrelationship_bb21551257,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/subscriptionAvailability (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_subscriptionavailability_gettoonerelated_d7e4f7228b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_subscriptionavailability_gettoonerelated_d7e4f7228b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/subscriptionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_subscriptionlocalizations_gettomanyrelated_bcb68a1170(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_subscriptionlocalizations_gettomanyrelated_bcb68a1170,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_versions_gettomanyrelated_ffcaf899af(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_versions_gettomanyrelated_ffcaf899af,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/winBackOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_winbackoffers_gettomanyrelated_4eff750674(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_winbackoffers_gettomanyrelated_4eff750674,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/territories (raw transport response; no Codable guarantee).
    public func ascGenerated_territories_getcollection_c411a3e1b2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_territories_getcollection_c411a3e1b2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/territoryAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_territoryavailabilities_updateinstance_21524476b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_territoryavailabilities_updateinstance_21524476b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/userInvitations (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_getcollection_1603e8def5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_getcollection_1603e8def5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/userInvitations (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_createinstance_afd1678bee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_createinstance_afd1678bee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/userInvitations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_deleteinstance_a93d9655b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_deleteinstance_a93d9655b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/userInvitations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_getinstance_dde3d94ea5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_getinstance_dde3d94ea5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/userInvitations/{id}/relationships/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_visibleapps_gettomanyrelationship_8b7bbda60b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_visibleapps_gettomanyrelationship_8b7bbda60b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/userInvitations/{id}/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_userinvitations_visibleapps_gettomanyrelated_54cf52088c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_userinvitations_visibleapps_gettomanyrelated_54cf52088c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/users (raw transport response; no Codable guarantee).
    public func ascGenerated_users_getcollection_27af39f771(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_getcollection_27af39f771,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/users/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_users_deleteinstance_b6bad17495(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_deleteinstance_b6bad17495,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/users/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_users_getinstance_06df6c8564(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_getinstance_06df6c8564,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/users/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_users_updateinstance_d85df474bb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_updateinstance_d85df474bb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/users/{id}/relationships/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_users_visibleapps_deletetomanyrelationship_448d4eecda(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_visibleapps_deletetomanyrelationship_448d4eecda,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/users/{id}/relationships/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_users_visibleapps_gettomanyrelationship_c62d0e7820(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_visibleapps_gettomanyrelationship_c62d0e7820,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/users/{id}/relationships/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_users_visibleapps_replacetomanyrelationship_0c560dc149(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_visibleapps_replacetomanyrelationship_0c560dc149,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/users/{id}/relationships/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_users_visibleapps_createtomanyrelationship_c1f94a8a4b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_visibleapps_createtomanyrelationship_c1f94a8a4b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/users/{id}/visibleApps (raw transport response; no Codable guarantee).
    public func ascGenerated_users_visibleapps_gettomanyrelated_51c088b605(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_users_visibleapps_gettomanyrelated_51c088b605,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/webhookDeliveries (raw transport response; no Codable guarantee).
    public func ascGenerated_webhookdeliveries_createinstance_22c0b37680(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_webhookdeliveries_createinstance_22c0b37680,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
