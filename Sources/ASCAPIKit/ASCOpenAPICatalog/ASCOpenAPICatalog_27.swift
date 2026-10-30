// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_subscriptionoffercodes_customcodes_gettomanyrelationship_b4bcfb0804: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_customCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/relationships/customCodes",
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

    public static var op_subscriptionoffercodes_onetimeusecodes_gettomanyrelationship_1b25a0dcdb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_oneTimeUseCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/relationships/oneTimeUseCodes",
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

    public static var op_subscriptionoffercodes_prices_gettomanyrelationship_b3be7a872b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_prices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/relationships/prices",
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

    public static var op_subscriptionplanavailabilities_createinstance_78bc66ac7e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionPlanAvailabilities",
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

    public static var op_subscriptionplanavailabilities_getinstance_89c537e963: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionPlanAvailabilities/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPlanAvailabilities]", "fields[territories]", "include", "limit[availableTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionplanavailabilities_updateinstance_3c0b3422b0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionPlanAvailabilities/{id}",
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

    public static var op_subscriptionplanavailabilities_availableterritories_gettomanyrelated_717ead3be0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_availableTerritories_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionPlanAvailabilities/{id}/availableTerritories",
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

    public static var op_subscriptionplanavailabilities_availableterritories_gettomanyrelationship_09c637ea3f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_availableTerritories_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionPlanAvailabilities/{id}/relationships/availableTerritories",
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

    public static var op_subscriptionplanavailabilities_availableterritories_replacetomanyrelations_d047056bcf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPlanAvailabilities_availableTerritories_replaceToManyRelationship", method: "PATCH",
            pathTemplate: "/v1/subscriptionPlanAvailabilities/{id}/relationships/availableTerritories",
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

    public static var op_subscriptionpricepoints_getinstance_6413a68ad6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPricePoints_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionPricePoints/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[territories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionpricepoints_adjustedequalizations_gettomanyrelated_d4b7f96a2a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPricePoints_adjustedEqualizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionPricePoints/{id}/adjustedEqualizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[territories]", "filter[planType]", "filter[subscription]", "filter[territory]", "filter[upfrontPricePointId]", "include", "limit"],
            requiredQueryParameterNames: ["filter[planType]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionpricepoints_equalizations_gettomanyrelated_48f233c9b3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPricePoints_equalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionPricePoints/{id}/equalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[territories]", "filter[planType]", "filter[subscription]", "filter[territory]", "filter[upfrontPricePointId]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionpricepoints_equalizations_gettomanyrelationship_fa3b29e656: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPricePoints_equalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionPricePoints/{id}/relationships/equalizations",
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

    public static var op_subscriptionprices_createinstance_c4283d5699: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPrices_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionPrices",
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

    public static var op_subscriptionprices_deleteinstance_61efd0a6a7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPrices_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionPrices/{id}",
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

    public static var op_subscriptionpromotionaloffers_createinstance_a21e441d96: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionPromotionalOffers",
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

    public static var op_subscriptionpromotionaloffers_deleteinstance_acd76814a1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionPromotionalOffers/{id}",
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

    public static var op_subscriptionpromotionaloffers_getinstance_f0f6e5b592: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionPromotionalOffers/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPromotionalOfferPrices]", "fields[subscriptionPromotionalOffers]", "fields[subscriptions]", "include", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionpromotionaloffers_updateinstance_9f7d935139: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionPromotionalOffers/{id}",
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

    public static var op_subscriptionpromotionaloffers_prices_gettomanyrelated_c1a51ce36f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_prices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionPromotionalOffers/{id}/prices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[subscriptionPromotionalOfferPrices]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionpromotionaloffers_prices_gettomanyrelationship_97fc00937f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionPromotionalOffers_prices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionPromotionalOffers/{id}/relationships/prices",
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

    public static var op_subscriptionsubmissions_createinstance_68190756af: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionSubmissions",
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

    public static var op_subscriptionversions_createinstance_8d734f58d0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionVersions",
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

    public static var op_subscriptionversions_getinstance_7423b5dbb8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]", "fields[subscriptionLocalizations]", "fields[subscriptionVersions]", "fields[subscriptions]", "include", "limit[images]", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionversions_image_gettoonerelated_6d55d3bc40: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_image_getToOneRelated", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/image",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionversions_images_gettomanyrelated_4d28336e35: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_images_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/images",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionversions_localizations_gettomanyrelated_fa1fcdd630: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionLocalizations]", "fields[subscriptionVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionversions_image_gettoonerelationship_01f80e2f8e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_image_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/relationships/image",
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

    public static var op_subscriptionversions_images_gettomanyrelationship_46277f47d2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_images_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/relationships/images",
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

    public static var op_subscriptionversions_localizations_gettomanyrelationship_536bf2446b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionVersions_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionVersions/{id}/relationships/localizations",
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

    public static var op_subscriptions_createinstance_7024b7b870: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptions",
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

    public static var op_subscriptions_deleteinstance_7409c46f24: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptions/{id}",
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

    public static var op_subscriptions_getinstance_ca88d58d02: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[promotedPurchases]", "fields[subscriptionAppStoreReviewScreenshots]", "fields[subscriptionAvailabilities]", "fields[subscriptionGroups]", "fields[subscriptionImages]", "fields[subscriptionIntroductoryOffers]", "fields[subscriptionLocalizations]", "fields[subscriptionOfferCodes]", "fields[subscriptionPlanAvailabilities]", "fields[subscriptionPrices]", "fields[subscriptionPromotionalOffers]", "fields[subscriptionVersions]", "fields[subscriptions]", "fields[winBackOffers]", "include", "limit[images]", "limit[introductoryOffers]", "limit[offerCodes]", "limit[planAvailabilities]", "limit[prices]", "limit[promotionalOffers]", "limit[subscriptionLocalizations]", "limit[versions]", "limit[winBackOffers]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_updateinstance_b880aa416f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptions/{id}",
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

    public static var op_subscriptions_appstorereviewscreenshot_gettoonerelated_6e6773ef0d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_appStoreReviewScreenshot_getToOneRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/appStoreReviewScreenshot",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionAppStoreReviewScreenshots]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_images_gettomanyrelated_753cc16ad7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_images_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/images",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]", "fields[subscriptions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_introductoryoffers_gettomanyrelated_91eacb8571: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_introductoryOffers_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/introductoryOffers",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionIntroductoryOffers]", "fields[subscriptionPricePoints]", "fields[subscriptions]", "fields[territories]", "filter[territory]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_offercodes_gettomanyrelated_8773aa9a9a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_offerCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/offerCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeCustomCodes]", "fields[subscriptionOfferCodeOneTimeUseCodes]", "fields[subscriptionOfferCodePrices]", "fields[subscriptionOfferCodes]", "fields[subscriptions]", "filter[territory]", "include", "limit", "limit[customCodes]", "limit[oneTimeUseCodes]", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_planavailabilities_gettomanyrelated_217a617f77: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_planAvailabilities_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/planAvailabilities",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPlanAvailabilities]", "fields[territories]", "include", "limit", "limit[availableTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptions_pricepoints_gettomanyrelated_ff4f0deb81: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptions_pricePoints_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptions/{id}/pricePoints",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionPricePoints]", "fields[territories]", "filter[planType]", "filter[territory]", "filter[upfrontPricePointId]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }
}

extension ASCClient {
    /// GET /v1/subscriptionOfferCodes/{id}/relationships/customCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_customcodes_gettomanyrelationship_b4bcfb0804(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_customcodes_gettomanyrelationship_b4bcfb0804,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id}/relationships/oneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_onetimeusecodes_gettomanyrelationship_1b25a0dcdb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_onetimeusecodes_gettomanyrelationship_1b25a0dcdb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_prices_gettomanyrelationship_b3be7a872b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_prices_gettomanyrelationship_b3be7a872b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionPlanAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_createinstance_78bc66ac7e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_createinstance_78bc66ac7e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPlanAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_getinstance_89c537e963(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_getinstance_89c537e963,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionPlanAvailabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_updateinstance_3c0b3422b0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_updateinstance_3c0b3422b0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPlanAvailabilities/{id}/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_availableterritories_gettomanyrelated_717ead3be0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_availableterritories_gettomanyrelated_717ead3be0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPlanAvailabilities/{id}/relationships/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_availableterritories_gettomanyrelationship_09c637ea3f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_availableterritories_gettomanyrelationship_09c637ea3f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionPlanAvailabilities/{id}/relationships/availableTerritories (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionplanavailabilities_availableterritories_replacetomanyrelations_d047056bcf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionplanavailabilities_availableterritories_replacetomanyrelations_d047056bcf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPricePoints/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpricepoints_getinstance_6413a68ad6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpricepoints_getinstance_6413a68ad6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPricePoints/{id}/adjustedEqualizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpricepoints_adjustedequalizations_gettomanyrelated_d4b7f96a2a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpricepoints_adjustedequalizations_gettomanyrelated_d4b7f96a2a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPricePoints/{id}/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpricepoints_equalizations_gettomanyrelated_48f233c9b3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpricepoints_equalizations_gettomanyrelated_48f233c9b3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPricePoints/{id}/relationships/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpricepoints_equalizations_gettomanyrelationship_fa3b29e656(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpricepoints_equalizations_gettomanyrelationship_fa3b29e656,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionPrices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionprices_createinstance_c4283d5699(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionprices_createinstance_c4283d5699,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionPrices/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionprices_deleteinstance_61efd0a6a7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionprices_deleteinstance_61efd0a6a7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionPromotionalOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_createinstance_a21e441d96(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_createinstance_a21e441d96,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionPromotionalOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_deleteinstance_acd76814a1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_deleteinstance_acd76814a1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPromotionalOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_getinstance_f0f6e5b592(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_getinstance_f0f6e5b592,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionPromotionalOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_updateinstance_9f7d935139(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_updateinstance_9f7d935139,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPromotionalOffers/{id}/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_prices_gettomanyrelated_c1a51ce36f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_prices_gettomanyrelated_c1a51ce36f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionPromotionalOffers/{id}/relationships/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionpromotionaloffers_prices_gettomanyrelationship_97fc00937f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionpromotionaloffers_prices_gettomanyrelationship_97fc00937f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionsubmissions_createinstance_68190756af(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionsubmissions_createinstance_68190756af,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_createinstance_8d734f58d0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_createinstance_8d734f58d0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_getinstance_7423b5dbb8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_getinstance_7423b5dbb8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/image (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_image_gettoonerelated_6d55d3bc40(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_image_gettoonerelated_6d55d3bc40,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/images (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_images_gettomanyrelated_4d28336e35(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_images_gettomanyrelated_4d28336e35,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_localizations_gettomanyrelated_fa1fcdd630(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_localizations_gettomanyrelated_fa1fcdd630,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/relationships/image (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_image_gettoonerelationship_01f80e2f8e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_image_gettoonerelationship_01f80e2f8e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/relationships/images (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_images_gettomanyrelationship_46277f47d2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_images_gettomanyrelationship_46277f47d2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionversions_localizations_gettomanyrelationship_536bf2446b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionversions_localizations_gettomanyrelationship_536bf2446b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_createinstance_7024b7b870(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_createinstance_7024b7b870,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_deleteinstance_7409c46f24(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_deleteinstance_7409c46f24,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_getinstance_ca88d58d02(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_getinstance_ca88d58d02,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_updateinstance_b880aa416f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_updateinstance_b880aa416f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/appStoreReviewScreenshot (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_appstorereviewscreenshot_gettoonerelated_6e6773ef0d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_appstorereviewscreenshot_gettoonerelated_6e6773ef0d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/images (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_images_gettomanyrelated_753cc16ad7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_images_gettomanyrelated_753cc16ad7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/introductoryOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_introductoryoffers_gettomanyrelated_91eacb8571(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_introductoryoffers_gettomanyrelated_91eacb8571,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/offerCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_offercodes_gettomanyrelated_8773aa9a9a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_offercodes_gettomanyrelated_8773aa9a9a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/planAvailabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_planavailabilities_gettomanyrelated_217a617f77(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_planavailabilities_gettomanyrelated_217a617f77,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptions/{id}/pricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptions_pricepoints_gettomanyrelated_ff4f0deb81(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptions_pricepoints_gettomanyrelated_ff4f0deb81,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
