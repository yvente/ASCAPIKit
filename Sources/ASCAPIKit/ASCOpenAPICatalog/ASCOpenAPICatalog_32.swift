// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_inapppurchasesv2_offercodes_gettomanyrelationship_8f68daccae: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_offerCodes_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/offerCodes",
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

    public static var op_inapppurchasesv2_pricepoints_gettomanyrelationship_1ecb045768: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_pricePoints_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/pricePoints",
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

    public static var op_inapppurchasesv2_promotedpurchase_gettoonerelationship_4c927be8de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_promotedPurchase_getToOneRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/promotedPurchase",
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

    public static var op_inapppurchasesv2_versions_gettomanyrelationship_07beb9762c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_versions_getToManyRelationship", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/relationships/versions",
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

    public static var op_inapppurchasesv2_versions_gettomanyrelated_a70ce054be: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "inAppPurchasesV2_versions_getToManyRelated", method: "GET",
            pathTemplate: "/v2/inAppPurchases/{id}/versions",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[inAppPurchaseImages]", "fields[inAppPurchaseLocalizations]", "fields[inAppPurchaseVersions]", "fields[inAppPurchases]", "filter[state]", "include", "limit", "limit[images]", "limit[localizations]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_sandboxtestersv2_getcollection_a3191e0189: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "sandboxTestersV2_getCollection", method: "GET",
            pathTemplate: "/v2/sandboxTesters",
            pathParameterNames: [],
            queryParameterNames: ["fields[sandboxTesters]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_sandboxtestersv2_updateinstance_4ee4b2d235: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "sandboxTestersV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/sandboxTesters/{id}",
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

    public static var op_sandboxtestersclearpurchasehistoryrequestv2_createinstance_6ed80e20ff: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "sandboxTestersClearPurchaseHistoryRequestV2_createInstance", method: "POST",
            pathTemplate: "/v2/sandboxTestersClearPurchaseHistoryRequest",
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

    public static var op_subscriptiongrouplocalizationsv2_createinstance_79b09586fd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/subscriptionGroupLocalizations",
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

    public static var op_subscriptiongrouplocalizationsv2_deleteinstance_67e9eab307: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/subscriptionGroupLocalizations/{id}",
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

    public static var op_subscriptiongrouplocalizationsv2_getinstance_bee2f7fb70: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/subscriptionGroupLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionGroupLocalizations]", "fields[subscriptionGroupVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptiongrouplocalizationsv2_updateinstance_50971c0094: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionGroupLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/subscriptionGroupLocalizations/{id}",
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

    public static var op_subscriptionimagesv2_createinstance_cd0ca27464: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImagesV2_createInstance", method: "POST",
            pathTemplate: "/v2/subscriptionImages",
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

    public static var op_subscriptionimagesv2_deleteinstance_0dc84edf2a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImagesV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/subscriptionImages/{id}",
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

    public static var op_subscriptionimagesv2_getinstance_c3490a0555: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImagesV2_getInstance", method: "GET",
            pathTemplate: "/v2/subscriptionImages/{id}",
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

    public static var op_subscriptionimagesv2_updateinstance_c68194d089: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionImagesV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/subscriptionImages/{id}",
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

    public static var op_subscriptionlocalizationsv2_createinstance_6b104459b1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizationsV2_createInstance", method: "POST",
            pathTemplate: "/v2/subscriptionLocalizations",
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

    public static var op_subscriptionlocalizationsv2_deleteinstance_d6af9227ec: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizationsV2_deleteInstance", method: "DELETE",
            pathTemplate: "/v2/subscriptionLocalizations/{id}",
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

    public static var op_subscriptionlocalizationsv2_getinstance_c57e0d55ac: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizationsV2_getInstance", method: "GET",
            pathTemplate: "/v2/subscriptionLocalizations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[subscriptionLocalizations]", "fields[subscriptionVersions]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_subscriptionlocalizationsv2_updateinstance_37629bfe48: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "subscriptionLocalizationsV2_updateInstance", method: "PATCH",
            pathTemplate: "/v2/subscriptionLocalizations/{id}",
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

    public static var op_apppricepointsv3_getinstance_62f56fcac9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPricePointsV3_getInstance", method: "GET",
            pathTemplate: "/v3/appPricePoints/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[appPricePoints]", "fields[apps]", "fields[territories]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_apppricepointsv3_equalizations_gettomanyrelated_3c45302e71: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPricePointsV3_equalizations_getToManyRelated", method: "GET",
            pathTemplate: "/v3/appPricePoints/{id}/equalizations",
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

    public static var op_apppricepointsv3_equalizations_gettomanyrelationship_89e81d7d25: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "appPricePointsV3_equalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v3/appPricePoints/{id}/relationships/equalizations",
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
}

extension ASCClient {
    /// GET /v2/inAppPurchases/{id}/relationships/offerCodes (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_offercodes_gettomanyrelationship_8f68daccae(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_offercodes_gettomanyrelationship_8f68daccae,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/pricePoints (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_pricepoints_gettomanyrelationship_1ecb045768(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_pricepoints_gettomanyrelationship_1ecb045768,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/promotedPurchase (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_promotedpurchase_gettoonerelationship_4c927be8de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_promotedpurchase_gettoonerelationship_4c927be8de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/relationships/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_versions_gettomanyrelationship_07beb9762c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_versions_gettomanyrelationship_07beb9762c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/inAppPurchases/{id}/versions (raw transport response; no Codable guarantee).
    public func ascGenerated_inapppurchasesv2_versions_gettomanyrelated_a70ce054be(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_inapppurchasesv2_versions_gettomanyrelated_a70ce054be,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/sandboxTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_sandboxtestersv2_getcollection_a3191e0189(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_sandboxtestersv2_getcollection_a3191e0189,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/sandboxTesters/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_sandboxtestersv2_updateinstance_4ee4b2d235(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_sandboxtestersv2_updateinstance_4ee4b2d235,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/sandboxTestersClearPurchaseHistoryRequest (raw transport response; no Codable guarantee).
    public func ascGenerated_sandboxtestersclearpurchasehistoryrequestv2_createinstance_6ed80e20ff(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_sandboxtestersclearpurchasehistoryrequestv2_createinstance_6ed80e20ff,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/subscriptionGroupLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizationsv2_createinstance_79b09586fd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizationsv2_createinstance_79b09586fd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizationsv2_deleteinstance_67e9eab307(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizationsv2_deleteinstance_67e9eab307,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizationsv2_getinstance_bee2f7fb70(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizationsv2_getinstance_bee2f7fb70,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/subscriptionGroupLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptiongrouplocalizationsv2_updateinstance_50971c0094(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptiongrouplocalizationsv2_updateinstance_50971c0094,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/subscriptionImages (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimagesv2_createinstance_cd0ca27464(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimagesv2_createinstance_cd0ca27464,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimagesv2_deleteinstance_0dc84edf2a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimagesv2_deleteinstance_0dc84edf2a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimagesv2_getinstance_c3490a0555(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimagesv2_getinstance_c3490a0555,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/subscriptionImages/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionimagesv2_updateinstance_c68194d089(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionimagesv2_updateinstance_c68194d089,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v2/subscriptionLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizationsv2_createinstance_6b104459b1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizationsv2_createinstance_6b104459b1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v2/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizationsv2_deleteinstance_d6af9227ec(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizationsv2_deleteinstance_d6af9227ec,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v2/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizationsv2_getinstance_c57e0d55ac(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizationsv2_getinstance_c57e0d55ac,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v2/subscriptionLocalizations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_subscriptionlocalizationsv2_updateinstance_37629bfe48(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_subscriptionlocalizationsv2_updateinstance_37629bfe48,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v3/appPricePoints/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_apppricepointsv3_getinstance_62f56fcac9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppricepointsv3_getinstance_62f56fcac9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v3/appPricePoints/{id}/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_apppricepointsv3_equalizations_gettomanyrelated_3c45302e71(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppricepointsv3_equalizations_gettomanyrelated_3c45302e71,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v3/appPricePoints/{id}/relationships/equalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_apppricepointsv3_equalizations_gettomanyrelationship_89e81d7d25(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_apppricepointsv3_equalizations_gettomanyrelationship_89e81d7d25,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
