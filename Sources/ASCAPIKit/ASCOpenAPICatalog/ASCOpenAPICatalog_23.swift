// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_inapppurchaseoffercodecustomcodes_getinstance_70fe5e5fc6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeCustomCodes_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodeCustomCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[inAppPurchaseOfferCodeCustomCodes]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodecustomcodes_updateinstance_424d324e48: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeCustomCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseOfferCodeCustomCodes/{id}",
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

    public static var op_inapppurchaseoffercodeonetimeusecodes_createinstance_53b1260afc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeOneTimeUseCodes_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseOfferCodeOneTimeUseCodes",
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

    public static var op_inapppurchaseoffercodeonetimeusecodes_getinstance_0bc716f1aa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeOneTimeUseCodes_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[inAppPurchaseOfferCodeOneTimeUseCodes]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodeonetimeusecodes_updateinstance_12b328dc16: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeOneTimeUseCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id}",
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

    public static var op_inapppurchaseoffercodeonetimeusecodes_values_gettoonerelated_ebb78c8840: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodeOneTimeUseCodes_values_getToOneRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id}/values",
            pathParameterNames: ["id"],
            queryParameterNames: [],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodes_createinstance_3e0ec1940a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseOfferCodes",
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

    public static var op_inapppurchaseoffercodes_getinstance_f7f0cc5f66: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseOfferCodeCustomCodes]", "fields[inAppPurchaseOfferCodeOneTimeUseCodes]", "fields[inAppPurchaseOfferCodes]", "fields[inAppPurchaseOfferPrices]", "include", "limit[customCodes]", "limit[oneTimeUseCodes]", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodes_updateinstance_17c1ea1687: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}",
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

    public static var op_inapppurchaseoffercodes_customcodes_gettomanyrelated_f6c45726ae: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_customCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/customCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[inAppPurchaseOfferCodeCustomCodes]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelated_e389fff59c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_oneTimeUseCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/oneTimeUseCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[inAppPurchaseOfferCodeOneTimeUseCodes]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodes_prices_gettomanyrelated_e2653d5e38: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_prices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/prices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseOfferPrices]", "fields[inAppPurchasePricePoints]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseoffercodes_customcodes_gettomanyrelationship_dacaca26b4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_customCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/relationships/customCodes",
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

    public static var op_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelationship_171ecd2290: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_oneTimeUseCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/relationships/oneTimeUseCodes",
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

    public static var op_inapppurchaseoffercodes_prices_gettomanyrelationship_aeaf5032ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseOfferCodes_prices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseOfferCodes/{id}/relationships/prices",
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

    public static var op_inapppurchasepricepoints_equalizations_gettomanyrelated_8f66c5bffc: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePricePoints_equalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchasePricePoints/{id}/equalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePricePoints]", "fields[territories]", "filter[inAppPurchaseV2]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasepricepoints_equalizations_gettomanyrelationship_47b66cf7b5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePricePoints_equalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchasePricePoints/{id}/relationships/equalizations",
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

    public static var op_inapppurchasepriceschedules_createinstance_9f48bdde7b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchasePriceSchedules",
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

    public static var op_inapppurchasepriceschedules_getinstance_73445ca591: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePriceSchedules]", "fields[inAppPurchasePrices]", "fields[territories]", "include", "limit[automaticPrices]", "limit[manualPrices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasepriceschedules_automaticprices_gettomanyrelated_0e269a913f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_automaticPrices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/automaticPrices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePricePoints]", "fields[inAppPurchasePrices]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasepriceschedules_baseterritory_gettoonerelated_991f894c49: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_baseTerritory_getToOneRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/baseTerritory",
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

    public static var op_inapppurchasepriceschedules_manualprices_gettomanyrelated_d8692669a4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_manualPrices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/manualPrices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchasePricePoints]", "fields[inAppPurchasePrices]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchasepriceschedules_automaticprices_gettomanyrelationship_6dbc5a1aa8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_automaticPrices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/relationships/automaticPrices",
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

    public static var op_inapppurchasepriceschedules_baseterritory_gettoonerelationship_ffd4134ee0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_baseTerritory_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/relationships/baseTerritory",
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

    public static var op_inapppurchasepriceschedules_manualprices_gettomanyrelationship_9ca15bade3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasePriceSchedules_manualPrices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchasePriceSchedules/{id}/relationships/manualPrices",
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

    public static var op_inapppurchasesubmissions_createinstance_f998a6bea4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseSubmissions",
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

    public static var op_inapppurchaseversions_createinstance_8113a0f441: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_createInstance", method: "POST",
            pathTemplate: "/v1/inAppPurchaseVersions",
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

    public static var op_inapppurchaseversions_getinstance_671b30a02e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]", "fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseVersions]", "fields[inAppPurchases]", "include", "limit[images]", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseversions_image_gettoonerelated_3ced8f1a51: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_image_getToOneRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseversions_images_gettomanyrelated_5c4d72938a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_images_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/images",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseversions_localizations_gettomanyrelated_1b01acf5c5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_inapppurchaseversions_image_gettoonerelationship_8f06327b48: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/relationships/image",
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

    public static var op_inapppurchaseversions_images_gettomanyrelationship_f8c5d97745: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_images_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/relationships/images",
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

    public static var op_inapppurchaseversions_localizations_gettomanyrelationship_b66a56b931: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchaseVersions_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/inAppPurchaseVersions/{id}/relationships/localizations",
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

    public static var op_inapppurchases_getinstance_e6c7e911fe: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchases_getInstance", method: "GET",
            pathTemplate: "/v1/inAppPurchases/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[inAppPurchases]", "include", "limit[apps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_marketplacesearchdetails_createinstance_613f5a9455: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceSearchDetails_createInstance", method: "POST",
            pathTemplate: "/v1/marketplaceSearchDetails",
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

    public static var op_marketplacesearchdetails_deleteinstance_8b925bfd89: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceSearchDetails_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/marketplaceSearchDetails/{id}",
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

    public static var op_marketplacesearchdetails_updateinstance_5b9fca06de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceSearchDetails_updateInstance", method: "PATCH",
            pathTemplate: "/v1/marketplaceSearchDetails/{id}",
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

    public static var op_marketplacewebhooks_getcollection_defc467f5b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceWebhooks_getCollection", method: "GET",
            pathTemplate: "/v1/marketplaceWebhooks",
            pathParameterNames: [],
            queryParameterNames: ["fields[marketplaceWebhooks]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: true,
            transportBlocker: nil
        )
    }

    public static var op_marketplacewebhooks_createinstance_34dc92b9f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceWebhooks_createInstance", method: "POST",
            pathTemplate: "/v1/marketplaceWebhooks",
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
}

extension ASCClient {
    /// GET /v1/inAppPurchaseOfferCodeCustomCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodecustomcodes_getinstance_70fe5e5fc6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodecustomcodes_getinstance_70fe5e5fc6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseOfferCodeCustomCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodecustomcodes_updateinstance_424d324e48(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodecustomcodes_updateinstance_424d324e48,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseOfferCodeOneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodeonetimeusecodes_createinstance_53b1260afc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodeonetimeusecodes_createinstance_53b1260afc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodeonetimeusecodes_getinstance_0bc716f1aa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodeonetimeusecodes_getinstance_0bc716f1aa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodeonetimeusecodes_updateinstance_12b328dc16(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodeonetimeusecodes_updateinstance_12b328dc16,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodeOneTimeUseCodes/{id}/values (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodeonetimeusecodes_values_gettoonerelated_ebb78c8840(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodeonetimeusecodes_values_gettoonerelated_ebb78c8840,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseOfferCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_createinstance_3e0ec1940a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_createinstance_3e0ec1940a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_getinstance_f7f0cc5f66(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_getinstance_f7f0cc5f66,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/inAppPurchaseOfferCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_updateinstance_17c1ea1687(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_updateinstance_17c1ea1687,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/customCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_customcodes_gettomanyrelated_f6c45726ae(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_customcodes_gettomanyrelated_f6c45726ae,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/oneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelated_e389fff59c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelated_e389fff59c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_prices_gettomanyrelated_e2653d5e38(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_prices_gettomanyrelated_e2653d5e38,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/relationships/customCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_customcodes_gettomanyrelationship_dacaca26b4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_customcodes_gettomanyrelationship_dacaca26b4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/relationships/oneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelationship_171ecd2290(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_onetimeusecodes_gettomanyrelationship_171ecd2290,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseOfferCodes/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseoffercodes_prices_gettomanyrelationship_aeaf5032ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseoffercodes_prices_gettomanyrelationship_aeaf5032ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePricePoints/{id}/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepricepoints_equalizations_gettomanyrelated_8f66c5bffc(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepricepoints_equalizations_gettomanyrelated_8f66c5bffc,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePricePoints/{id}/relationships/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepricepoints_equalizations_gettomanyrelationship_47b66cf7b5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepricepoints_equalizations_gettomanyrelationship_47b66cf7b5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchasePriceSchedules (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_createinstance_9f48bdde7b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_createinstance_9f48bdde7b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_getinstance_73445ca591(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_getinstance_73445ca591,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/automaticPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_automaticprices_gettomanyrelated_0e269a913f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_automaticprices_gettomanyrelated_0e269a913f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/baseTerritory (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_baseterritory_gettoonerelated_991f894c49(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_baseterritory_gettoonerelated_991f894c49,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/manualPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_manualprices_gettomanyrelated_d8692669a4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_manualprices_gettomanyrelated_d8692669a4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/relationships/automaticPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_automaticprices_gettomanyrelationship_6dbc5a1aa8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_automaticprices_gettomanyrelationship_6dbc5a1aa8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/relationships/baseTerritory (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_baseterritory_gettoonerelationship_ffd4134ee0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_baseterritory_gettoonerelationship_ffd4134ee0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchasePriceSchedules/{id}/relationships/manualPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasepriceschedules_manualprices_gettomanyrelationship_9ca15bade3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasepriceschedules_manualprices_gettomanyrelationship_9ca15bade3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesubmissions_createinstance_f998a6bea4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesubmissions_createinstance_f998a6bea4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/inAppPurchaseVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_createinstance_8113a0f441(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_createinstance_8113a0f441,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_getinstance_671b30a02e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_getinstance_671b30a02e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_image_gettoonerelated_3ced8f1a51(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_image_gettoonerelated_3ced8f1a51,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/images (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_images_gettomanyrelated_5c4d72938a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_images_gettomanyrelated_5c4d72938a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_localizations_gettomanyrelated_1b01acf5c5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_localizations_gettomanyrelated_1b01acf5c5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_image_gettoonerelationship_8f06327b48(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_image_gettoonerelationship_8f06327b48,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/relationships/images (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_images_gettomanyrelationship_f8c5d97745(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_images_gettomanyrelationship_f8c5d97745,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchaseVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchaseversions_localizations_gettomanyrelationship_b66a56b931(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchaseversions_localizations_gettomanyrelationship_b66a56b931,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/inAppPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchases_getinstance_e6c7e911fe(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchases_getinstance_e6c7e911fe,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/marketplaceSearchDetails (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacesearchdetails_createinstance_613f5a9455(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacesearchdetails_createinstance_613f5a9455,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/marketplaceSearchDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacesearchdetails_deleteinstance_8b925bfd89(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacesearchdetails_deleteinstance_8b925bfd89,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/marketplaceSearchDetails/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacesearchdetails_updateinstance_5b9fca06de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacesearchdetails_updateinstance_5b9fca06de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/marketplaceWebhooks (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacewebhooks_getcollection_defc467f5b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacewebhooks_getcollection_defc467f5b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/marketplaceWebhooks (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacewebhooks_createinstance_34dc92b9f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacewebhooks_createinstance_34dc92b9f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
