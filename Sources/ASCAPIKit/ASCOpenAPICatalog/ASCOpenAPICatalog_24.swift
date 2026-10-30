// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_marketplacewebhooks_deleteinstance_a0d9caff67: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceWebhooks_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/marketplaceWebhooks/{id}",
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

    public static var op_marketplacewebhooks_updateinstance_d1010a81c8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "marketplaceWebhooks_updateInstance", method: "PATCH",
            pathTemplate: "/v1/marketplaceWebhooks/{id}",
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

    public static var op_merchantids_getcollection_49ed657485: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_getCollection", method: "GET",
            pathTemplate: "/v1/merchantIds",
            pathParameterNames: [],
            queryParameterNames: ["fields[certificates]", "fields[merchantIds]", "filter[identifier]", "filter[name]", "include", "limit", "limit[certificates]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_merchantids_createinstance_f8993386b1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_createInstance", method: "POST",
            pathTemplate: "/v1/merchantIds",
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

    public static var op_merchantids_deleteinstance_363627cf7b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/merchantIds/{id}",
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

    public static var op_merchantids_getinstance_258ee165f2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_getInstance", method: "GET",
            pathTemplate: "/v1/merchantIds/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[merchantIds]", "include", "limit[certificates]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_merchantids_updateinstance_dc39a3cdcf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_updateInstance", method: "PATCH",
            pathTemplate: "/v1/merchantIds/{id}",
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

    public static var op_merchantids_certificates_gettomanyrelated_00b8328a4f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_certificates_getToManyRelated", method: "GET",
            pathTemplate: "/v1/merchantIds/{id}/certificates",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "filter[certificateType]", "filter[displayName]", "filter[id]", "filter[serialNumber]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_merchantids_certificates_gettomanyrelationship_5fa0e01671: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "merchantIds_certificates_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/merchantIds/{id}/relationships/certificates",
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

    public static var op_nominations_getcollection_1c9e708566: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "nominations_getCollection", method: "GET",
            pathTemplate: "/v1/nominations",
            pathParameterNames: [],
            queryParameterNames: ["fields[actors]", "fields[appEvents]", "fields[apps]", "fields[nominations]", "fields[territories]", "filter[hasInAppEvents]", "filter[relatedApps]", "filter[state]", "filter[type]", "include", "limit", "limit[inAppEvents]", "limit[relatedApps]", "limit[supportedTerritories]", "sort"],
            requiredQueryParameterNames: ["filter[state]"],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json", "text/csv"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_nominations_createinstance_7f7a30b98a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "nominations_createInstance", method: "POST",
            pathTemplate: "/v1/nominations",
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

    public static var op_nominations_deleteinstance_ae50d0dd2c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "nominations_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/nominations/{id}",
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

    public static var op_nominations_getinstance_2b2399898f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "nominations_getInstance", method: "GET",
            pathTemplate: "/v1/nominations/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[actors]", "fields[appEvents]", "fields[apps]", "fields[nominations]", "fields[territories]", "include", "limit[inAppEvents]", "limit[relatedApps]", "limit[supportedTerritories]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_nominations_updateinstance_729f3c4fba: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "nominations_updateInstance", method: "PATCH",
            pathTemplate: "/v1/nominations/{id}",
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

    public static var op_passtypeids_getcollection_4ae906760a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_getCollection", method: "GET",
            pathTemplate: "/v1/passTypeIds",
            pathParameterNames: [],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "filter[id]", "filter[identifier]", "filter[name]", "include", "limit", "limit[certificates]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_passtypeids_createinstance_4ecf035fd5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_createInstance", method: "POST",
            pathTemplate: "/v1/passTypeIds",
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

    public static var op_passtypeids_deleteinstance_58b2d4864c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/passTypeIds/{id}",
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

    public static var op_passtypeids_getinstance_ae0da6f48c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_getInstance", method: "GET",
            pathTemplate: "/v1/passTypeIds/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "include", "limit[certificates]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_passtypeids_updateinstance_3b724f09a5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_updateInstance", method: "PATCH",
            pathTemplate: "/v1/passTypeIds/{id}",
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

    public static var op_passtypeids_certificates_gettomanyrelated_73476c4236: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_certificates_getToManyRelated", method: "GET",
            pathTemplate: "/v1/passTypeIds/{id}/certificates",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "filter[certificateType]", "filter[displayName]", "filter[id]", "filter[serialNumber]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_passtypeids_certificates_gettomanyrelationship_300ed9225b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "passTypeIds_certificates_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/passTypeIds/{id}/relationships/certificates",
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

    public static var op_prereleaseversions_getcollection_f9eda27d13: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_getCollection", method: "GET",
            pathTemplate: "/v1/preReleaseVersions",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[builds]", "fields[preReleaseVersions]", "filter[app]", "filter[builds.buildAudienceType]", "filter[builds.expired]", "filter[builds.processingState]", "filter[builds.version]", "filter[builds]", "filter[platform]", "filter[version]", "include", "limit", "limit[builds]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_prereleaseversions_getinstance_e85b1ccad7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_getInstance", method: "GET",
            pathTemplate: "/v1/preReleaseVersions/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[builds]", "fields[preReleaseVersions]", "include", "limit[builds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_prereleaseversions_app_gettoonerelated_ec92f5f49f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/preReleaseVersions/{id}/app",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_prereleaseversions_builds_gettomanyrelated_4e78e16afa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_builds_getToManyRelated", method: "GET",
            pathTemplate: "/v1/preReleaseVersions/{id}/builds",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[builds]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_prereleaseversions_app_gettoonerelationship_c677c9d3cb: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/preReleaseVersions/{id}/relationships/app",
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

    public static var op_prereleaseversions_builds_gettomanyrelationship_708423d11b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "preReleaseVersions_builds_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/preReleaseVersions/{id}/relationships/builds",
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

    public static var op_profiles_getcollection_b86a8d1732: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_getCollection", method: "GET",
            pathTemplate: "/v1/profiles",
            pathParameterNames: [],
            queryParameterNames: ["fields[bundleIds]", "fields[certificates]", "fields[devices]", "fields[profiles]", "filter[id]", "filter[name]", "filter[profileState]", "filter[profileType]", "include", "limit", "limit[certificates]", "limit[devices]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_profiles_createinstance_f075c3c2cf: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_createInstance", method: "POST",
            pathTemplate: "/v1/profiles",
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

    public static var op_profiles_deleteinstance_65f2c20ec0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/profiles/{id}",
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

    public static var op_profiles_getinstance_4ee9b4ca6d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_getInstance", method: "GET",
            pathTemplate: "/v1/profiles/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[bundleIds]", "fields[certificates]", "fields[devices]", "fields[profiles]", "include", "limit[certificates]", "limit[devices]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_profiles_bundleid_gettoonerelated_cb87dc6a1c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_bundleId_getToOneRelated", method: "GET",
            pathTemplate: "/v1/profiles/{id}/bundleId",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[bundleIds]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_profiles_certificates_gettomanyrelated_04ed1fb1e8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_certificates_getToManyRelated", method: "GET",
            pathTemplate: "/v1/profiles/{id}/certificates",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_profiles_devices_gettomanyrelated_39dad4f2be: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_devices_getToManyRelated", method: "GET",
            pathTemplate: "/v1/profiles/{id}/devices",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[devices]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_profiles_bundleid_gettoonerelationship_ec6f76b752: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_bundleId_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/profiles/{id}/relationships/bundleId",
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

    public static var op_profiles_certificates_gettomanyrelationship_8c3c538e09: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_certificates_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/profiles/{id}/relationships/certificates",
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

    public static var op_profiles_devices_gettomanyrelationship_ba48726a52: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "profiles_devices_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/profiles/{id}/relationships/devices",
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

    public static var op_promotedpurchases_createinstance_abbe767801: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "promotedPurchases_createInstance", method: "POST",
            pathTemplate: "/v1/promotedPurchases",
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

    public static var op_promotedpurchases_deleteinstance_73f33bc3a7: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "promotedPurchases_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/promotedPurchases/{id}",
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

    public static var op_promotedpurchases_getinstance_940049fe0f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "promotedPurchases_getInstance", method: "GET",
            pathTemplate: "/v1/promotedPurchases/{id}",
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
}

extension ASCClient {
    /// DELETE /v1/marketplaceWebhooks/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacewebhooks_deleteinstance_a0d9caff67(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacewebhooks_deleteinstance_a0d9caff67,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/marketplaceWebhooks/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_marketplacewebhooks_updateinstance_d1010a81c8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_marketplacewebhooks_updateinstance_d1010a81c8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/merchantIds (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_getcollection_49ed657485(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_getcollection_49ed657485,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/merchantIds (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_createinstance_f8993386b1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_createinstance_f8993386b1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/merchantIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_deleteinstance_363627cf7b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_deleteinstance_363627cf7b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/merchantIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_getinstance_258ee165f2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_getinstance_258ee165f2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/merchantIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_updateinstance_dc39a3cdcf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_updateinstance_dc39a3cdcf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/merchantIds/{id}/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_certificates_gettomanyrelated_00b8328a4f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_certificates_gettomanyrelated_00b8328a4f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/merchantIds/{id}/relationships/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_merchantids_certificates_gettomanyrelationship_5fa0e01671(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_merchantids_certificates_gettomanyrelationship_5fa0e01671,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/nominations (raw transport response; no Codable guarantee).
    public func ascGenerated_nominations_getcollection_1c9e708566(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_nominations_getcollection_1c9e708566,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/nominations (raw transport response; no Codable guarantee).
    public func ascGenerated_nominations_createinstance_7f7a30b98a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_nominations_createinstance_7f7a30b98a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/nominations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_nominations_deleteinstance_ae50d0dd2c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_nominations_deleteinstance_ae50d0dd2c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/nominations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_nominations_getinstance_2b2399898f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_nominations_getinstance_2b2399898f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/nominations/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_nominations_updateinstance_729f3c4fba(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_nominations_updateinstance_729f3c4fba,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/passTypeIds (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_getcollection_4ae906760a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_getcollection_4ae906760a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/passTypeIds (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_createinstance_4ecf035fd5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_createinstance_4ecf035fd5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/passTypeIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_deleteinstance_58b2d4864c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_deleteinstance_58b2d4864c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/passTypeIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_getinstance_ae0da6f48c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_getinstance_ae0da6f48c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/passTypeIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_updateinstance_3b724f09a5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_updateinstance_3b724f09a5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/passTypeIds/{id}/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_certificates_gettomanyrelated_73476c4236(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_certificates_gettomanyrelated_73476c4236,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/passTypeIds/{id}/relationships/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_passtypeids_certificates_gettomanyrelationship_300ed9225b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_passtypeids_certificates_gettomanyrelationship_300ed9225b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_getcollection_f9eda27d13(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_getcollection_f9eda27d13,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_getinstance_e85b1ccad7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_getinstance_e85b1ccad7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_app_gettoonerelated_ec92f5f49f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_app_gettoonerelated_ec92f5f49f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions/{id}/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_builds_gettomanyrelated_4e78e16afa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_builds_gettomanyrelated_4e78e16afa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_app_gettoonerelationship_c677c9d3cb(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_app_gettoonerelationship_c677c9d3cb,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/preReleaseVersions/{id}/relationships/builds (raw transport response; no Codable guarantee).
    public func ascGenerated_prereleaseversions_builds_gettomanyrelationship_708423d11b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_prereleaseversions_builds_gettomanyrelationship_708423d11b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_getcollection_b86a8d1732(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_getcollection_b86a8d1732,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/profiles (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_createinstance_f075c3c2cf(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_createinstance_f075c3c2cf,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/profiles/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_deleteinstance_65f2c20ec0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_deleteinstance_65f2c20ec0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_getinstance_4ee9b4ca6d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_getinstance_4ee9b4ca6d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/bundleId (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_bundleid_gettoonerelated_cb87dc6a1c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_bundleid_gettoonerelated_cb87dc6a1c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_certificates_gettomanyrelated_04ed1fb1e8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_certificates_gettomanyrelated_04ed1fb1e8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/devices (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_devices_gettomanyrelated_39dad4f2be(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_devices_gettomanyrelated_39dad4f2be,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/relationships/bundleId (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_bundleid_gettoonerelationship_ec6f76b752(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_bundleid_gettoonerelationship_ec6f76b752,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/relationships/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_certificates_gettomanyrelationship_8c3c538e09(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_certificates_gettomanyrelationship_8c3c538e09,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/profiles/{id}/relationships/devices (raw transport response; no Codable guarantee).
    public func ascGenerated_profiles_devices_gettomanyrelationship_ba48726a52(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_profiles_devices_gettomanyrelationship_ba48726a52,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/promotedPurchases (raw transport response; no Codable guarantee).
    public func ascGenerated_promotedpurchases_createinstance_abbe767801(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_promotedpurchases_createinstance_abbe767801,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/promotedPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_promotedpurchases_deleteinstance_73f33bc3a7(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_promotedpurchases_deleteinstance_73f33bc3a7,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/promotedPurchases/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_promotedpurchases_getinstance_940049fe0f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_promotedpurchases_getinstance_940049fe0f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
