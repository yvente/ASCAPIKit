// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_subscriptiongrouplocalizations_updateinstance_8094f0d206: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionGroupLocalizations/{id}",
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

    public static var op_subscriptiongroupsubmissions_createinstance_1634168412: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupSubmissions_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionGroupSubmissions",
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

    public static var op_subscriptiongroupversions_createinstance_9306d2c544: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupVersions_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionGroupVersions",
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

    public static var op_subscriptiongroupversions_getinstance_ac2c911233: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupVersions_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionGroupVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroupVersions]", "fields[subscriptionGroups]", "include", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongroupversions_localizations_gettomanyrelated_d8129c12d4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupVersions_localizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionGroupVersions/{id}/localizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroupVersions]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongroupversions_localizations_gettomanyrelationship_0b1a0b6ec9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupVersions_localizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionGroupVersions/{id}/relationships/localizations",
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

    public static var op_subscriptiongroups_createinstance_0aa8459f93: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionGroups",
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

    public static var op_subscriptiongroups_deleteinstance_f76b83875f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionGroups/{id}",
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

    public static var op_subscriptiongroups_getinstance_77c6293e92: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroupVersions]", "fields[subscriptionGroups]", "fields[subscriptions]", "include", "limit[subscriptionGroupLocalizations]", "limit[subscriptions]", "limit[versions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongroups_updateinstance_66ee51eb0c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionGroups/{id}",
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

    public static var op_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelationship_6d815c6a68: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_subscriptionGroupLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/relationships/subscriptionGroupLocalizations",
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

    public static var op_subscriptiongroups_subscriptions_gettomanyrelationship_d3ab45f583: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_subscriptions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/relationships/subscriptions",
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

    public static var op_subscriptiongroups_versions_gettomanyrelationship_e984a4f5d6: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/relationships/versions",
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

    public static var op_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelated_1d2fbe637a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_subscriptionGroupLocalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/subscriptionGroupLocalizations",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroups]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongroups_subscriptions_gettomanyrelated_8674cedbca: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_subscriptions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/subscriptions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[promotedPurchases]", "fields[subscriptionAppStoreReviewScreenshots]", "fields[subscriptionAvailabilities]", "fields[subscriptionGroups]", "fields[subscriptionImages]", "fields[subscriptionIntroductoryOffers]", "fields[subscriptionLocalizations]", "fields[subscriptionOfferCodes]", "fields[subscriptionPlanAvailabilities]", "fields[subscriptionPrices]", "fields[subscriptionPromotionalOffers]", "fields[subscriptionVersions]", "fields[subscriptions]", "fields[winBackOffers]", "filter[name]", "filter[productId]", "filter[state]", "include", "limit", "limit[images]", "limit[introductoryOffers]", "limit[offerCodes]", "limit[planAvailabilities]", "limit[prices]", "limit[promotionalOffers]", "limit[subscriptionLocalizations]", "limit[versions]", "limit[winBackOffers]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongroups_versions_gettomanyrelated_479ffa1d99: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroups_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionGroups/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroupVersions]", "fields[subscriptionGroups]", "filter[state]", "include", "limit", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionimages_createinstance_9386531c19: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImages_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionImages",
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

    public static var op_subscriptionimages_deleteinstance_5cd7a2a608: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImages_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionImages/{id}",
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

    public static var op_subscriptionimages_getinstance_b8e179e7f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImages_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionImages/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionImages]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionimages_updateinstance_61aa1cf531: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImages_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionImages/{id}",
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

    public static var op_subscriptionintroductoryoffers_createinstance_e537bbe9e7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionIntroductoryOffers_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionIntroductoryOffers",
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

    public static var op_subscriptionintroductoryoffers_deleteinstance_ac8c1827e4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionIntroductoryOffers_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionIntroductoryOffers/{id}",
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

    public static var op_subscriptionintroductoryoffers_updateinstance_db335c1395: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionIntroductoryOffers_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionIntroductoryOffers/{id}",
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

    public static var op_subscriptionlocalizations_createinstance_0265f8a2f8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizations_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionLocalizations",
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

    public static var op_subscriptionlocalizations_deleteinstance_8a66bea8c0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/subscriptionLocalizations/{id}",
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

    public static var op_subscriptionlocalizations_getinstance_242c72ae2d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizations_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionLocalizations]", "fields[subscriptions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionlocalizations_updateinstance_a24f7e8e04: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionLocalizations/{id}",
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

    public static var op_subscriptionoffercodecustomcodes_createinstance_066546f7ad: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeCustomCodes_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionOfferCodeCustomCodes",
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

    public static var op_subscriptionoffercodecustomcodes_getinstance_94bef0a0f2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeCustomCodes_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodeCustomCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeCustomCodes]", "fields[subscriptionOfferCodes]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionoffercodecustomcodes_updateinstance_57542c5cd9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeCustomCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionOfferCodeCustomCodes/{id}",
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

    public static var op_subscriptionoffercodeonetimeusecodes_createinstance_44db13f9ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeOneTimeUseCodes_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionOfferCodeOneTimeUseCodes",
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

    public static var op_subscriptionoffercodeonetimeusecodes_getinstance_06df1bc422: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeOneTimeUseCodes_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeOneTimeUseCodes]", "fields[subscriptionOfferCodes]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionoffercodeonetimeusecodes_updateinstance_004f4c1a2f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeOneTimeUseCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}",
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

    public static var op_subscriptionoffercodeonetimeusecodes_values_gettoonerelated_fb07ecd26f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodeOneTimeUseCodes_values_getToOneRelated", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values",
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

    public static var op_subscriptionoffercodes_createinstance_b0f9e16534: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_createInstance", method: "POST",
            pathTemplate: "/v1/subscriptionOfferCodes",
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

    public static var op_subscriptionoffercodes_getinstance_543902a78c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_getInstance", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeCustomCodes]", "fields[subscriptionOfferCodeOneTimeUseCodes]", "fields[subscriptionOfferCodePrices]", "fields[subscriptionOfferCodes]", "fields[subscriptions]", "include", "limit[customCodes]", "limit[oneTimeUseCodes]", "limit[prices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionoffercodes_updateinstance_b867a0981e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_updateInstance", method: "PATCH",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}",
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

    public static var op_subscriptionoffercodes_customcodes_gettomanyrelated_987b9676c1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_customCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/customCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeCustomCodes]", "fields[subscriptionOfferCodes]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionoffercodes_onetimeusecodes_gettomanyrelated_8f761c94ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_oneTimeUseCodes_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/oneTimeUseCodes",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodeOneTimeUseCodes]", "fields[subscriptionOfferCodes]", "include", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionoffercodes_prices_gettomanyrelated_626e6fd316: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionOfferCodes_prices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/subscriptionOfferCodes/{id}/prices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionOfferCodePrices]", "fields[subscriptionPricePoints]", "fields[territories]", "filter[territory]", "include", "limit"],
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
    /// PATCH /v1/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizations_updateinstance_8094f0d206(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizations_updateinstance_8094f0d206,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionGroupSubmissions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroupsubmissions_createinstance_1634168412(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroupsubmissions_createinstance_1634168412,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionGroupVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroupversions_createinstance_9306d2c544(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroupversions_createinstance_9306d2c544,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroupVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroupversions_getinstance_ac2c911233(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroupversions_getinstance_ac2c911233,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroupVersions/{id}/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroupversions_localizations_gettomanyrelated_d8129c12d4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroupversions_localizations_gettomanyrelated_d8129c12d4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroupVersions/{id}/relationships/localizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroupversions_localizations_gettomanyrelationship_0b1a0b6ec9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroupversions_localizations_gettomanyrelationship_0b1a0b6ec9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_createinstance_0aa8459f93(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_createinstance_0aa8459f93,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_deleteinstance_f76b83875f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_deleteinstance_f76b83875f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_getinstance_77c6293e92(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_getinstance_77c6293e92,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionGroups/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_updateinstance_66ee51eb0c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_updateinstance_66ee51eb0c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/relationships/subscriptionGroupLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelationship_6d815c6a68(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelationship_6d815c6a68,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/relationships/subscriptions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_subscriptions_gettomanyrelationship_d3ab45f583(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_subscriptions_gettomanyrelationship_d3ab45f583,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_versions_gettomanyrelationship_e984a4f5d6(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_versions_gettomanyrelationship_e984a4f5d6,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/subscriptionGroupLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelated_1d2fbe637a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_subscriptiongrouplocalizations_gettomanyrelated_1d2fbe637a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/subscriptions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_subscriptions_gettomanyrelated_8674cedbca(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_subscriptions_gettomanyrelated_8674cedbca,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionGroups/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongroups_versions_gettomanyrelated_479ffa1d99(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongroups_versions_gettomanyrelated_479ffa1d99,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionImages (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimages_createinstance_9386531c19(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimages_createinstance_9386531c19,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimages_deleteinstance_5cd7a2a608(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimages_deleteinstance_5cd7a2a608,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimages_getinstance_b8e179e7f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimages_getinstance_b8e179e7f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimages_updateinstance_61aa1cf531(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimages_updateinstance_61aa1cf531,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionIntroductoryOffers (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionintroductoryoffers_createinstance_e537bbe9e7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionintroductoryoffers_createinstance_e537bbe9e7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionIntroductoryOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionintroductoryoffers_deleteinstance_ac8c1827e4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionintroductoryoffers_deleteinstance_ac8c1827e4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionIntroductoryOffers/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionintroductoryoffers_updateinstance_db335c1395(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionintroductoryoffers_updateinstance_db335c1395,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizations_createinstance_0265f8a2f8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizations_createinstance_0265f8a2f8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizations_deleteinstance_8a66bea8c0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizations_deleteinstance_8a66bea8c0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizations_getinstance_242c72ae2d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizations_getinstance_242c72ae2d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizations_updateinstance_a24f7e8e04(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizations_updateinstance_a24f7e8e04,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionOfferCodeCustomCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodecustomcodes_createinstance_066546f7ad(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodecustomcodes_createinstance_066546f7ad,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodeCustomCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodecustomcodes_getinstance_94bef0a0f2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodecustomcodes_getinstance_94bef0a0f2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionOfferCodeCustomCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodecustomcodes_updateinstance_57542c5cd9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodecustomcodes_updateinstance_57542c5cd9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionOfferCodeOneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodeonetimeusecodes_createinstance_44db13f9ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodeonetimeusecodes_createinstance_44db13f9ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodeonetimeusecodes_getinstance_06df1bc422(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodeonetimeusecodes_getinstance_06df1bc422,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionOfferCodeOneTimeUseCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodeonetimeusecodes_updateinstance_004f4c1a2f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodeonetimeusecodes_updateinstance_004f4c1a2f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodeonetimeusecodes_values_gettoonerelated_fb07ecd26f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodeonetimeusecodes_values_gettoonerelated_fb07ecd26f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/subscriptionOfferCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_createinstance_b0f9e16534(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_createinstance_b0f9e16534,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_getinstance_543902a78c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_getinstance_543902a78c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/subscriptionOfferCodes/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_updateinstance_b867a0981e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_updateinstance_b867a0981e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id}/customCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_customcodes_gettomanyrelated_987b9676c1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_customcodes_gettomanyrelated_987b9676c1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id}/oneTimeUseCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_onetimeusecodes_gettomanyrelated_8f761c94ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_onetimeusecodes_gettomanyrelated_8f761c94ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/subscriptionOfferCodes/{id}/prices (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionoffercodes_prices_gettomanyrelated_626e6fd316(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionoffercodes_prices_gettomanyrelated_626e6fd316,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
