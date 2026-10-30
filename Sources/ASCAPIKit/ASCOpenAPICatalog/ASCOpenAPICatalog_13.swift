// Generated from pinned Apple App Store Connect OpenAPI 4.5.1.
import Foundation

extension ASCOpenAPICatalog {
    public static var op_builds_buildbetadetail_gettoonerelated_4780b4bde1: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_buildBetaDetail_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/buildBetaDetail",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildBetaDetails]", "fields[builds]", "include"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_diagnosticsignatures_gettomanyrelated_e924cf0de8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_diagnosticSignatures_getToManyRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/diagnosticSignatures",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[diagnosticSignatures]", "filter[diagnosticType]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_icons_gettomanyrelated_14fd6948e4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_icons_getToManyRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/icons",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[buildIcons]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_individualtesters_gettomanyrelated_dd730564e2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_individualTesters_getToManyRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/individualTesters",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[betaTesters]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_betabuildusages_getmetrics_1b3960cba4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaBuildUsages_getMetrics", method: "GET",
            pathTemplate: "/v1/builds/{id}/metrics/betaBuildUsages",
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

    public static var op_builds_perfpowermetrics_gettomanyrelated_d5127f80a2: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_perfPowerMetrics_getToManyRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/perfPowerMetrics",
            pathParameterNames: ["id"],
            queryParameterNames: ["filter[deviceType]", "filter[metricType]", "filter[platform]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/vnd.apple.xcode-metrics+json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_prereleaseversion_gettoonerelated_e97d931b9b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_preReleaseVersion_getToOneRelated", method: "GET",
            pathTemplate: "/v1/builds/{id}/preReleaseVersion",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[preReleaseVersions]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_builds_app_gettoonerelationship_28f26c05aa: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/app",
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

    public static var op_builds_appencryptiondeclaration_gettoonerelationship_87393f0e77: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_appEncryptionDeclaration_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/appEncryptionDeclaration",
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

    public static var op_builds_appencryptiondeclaration_updatetoonerelationship_cad1ad5a84: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_appEncryptionDeclaration_updateToOneRelationship", method: "PATCH",
            pathTemplate: "/v1/builds/{id}/relationships/appEncryptionDeclaration",
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

    public static var op_builds_appstoreversion_gettoonerelationship_196d0fc8c4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_appStoreVersion_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/appStoreVersion",
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

    public static var op_builds_betaappreviewsubmission_gettoonerelationship_b4ed7091f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaAppReviewSubmission_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/betaAppReviewSubmission",
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

    public static var op_builds_betabuildlocalizations_gettomanyrelationship_5841d02b1d: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaBuildLocalizations_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/betaBuildLocalizations",
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

    public static var op_builds_betagroups_deletetomanyrelationship_eef39caa6a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaGroups_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/builds/{id}/relationships/betaGroups",
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

    public static var op_builds_betagroups_createtomanyrelationship_35bdf1b72e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_betaGroups_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/builds/{id}/relationships/betaGroups",
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

    public static var op_builds_buildbetadetail_gettoonerelationship_6c055fca03: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_buildBetaDetail_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/buildBetaDetail",
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

    public static var op_builds_diagnosticsignatures_gettomanyrelationship_25210bbd4c: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_diagnosticSignatures_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/diagnosticSignatures",
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

    public static var op_builds_icons_gettomanyrelationship_af98abfbee: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_icons_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/icons",
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

    public static var op_builds_individualtesters_deletetomanyrelationship_7c553fcb7e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_individualTesters_deleteToManyRelationship", method: "DELETE",
            pathTemplate: "/v1/builds/{id}/relationships/individualTesters",
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

    public static var op_builds_individualtesters_gettomanyrelationship_e713bc78b9: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_individualTesters_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/individualTesters",
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

    public static var op_builds_individualtesters_createtomanyrelationship_1206d85509: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_individualTesters_createToManyRelationship", method: "POST",
            pathTemplate: "/v1/builds/{id}/relationships/individualTesters",
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

    public static var op_builds_prereleaseversion_gettoonerelationship_58dd5573f0: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "builds_preReleaseVersion_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/builds/{id}/relationships/preReleaseVersion",
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

    public static var op_bundleidcapabilities_createinstance_1764d399de: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIdCapabilities_createInstance", method: "POST",
            pathTemplate: "/v1/bundleIdCapabilities",
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

    public static var op_bundleidcapabilities_deleteinstance_0126bc4758: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIdCapabilities_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/bundleIdCapabilities/{id}",
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

    public static var op_bundleidcapabilities_updateinstance_2954488ca3: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIdCapabilities_updateInstance", method: "PATCH",
            pathTemplate: "/v1/bundleIdCapabilities/{id}",
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

    public static var op_bundleids_getcollection_aefbd1f115: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_getCollection", method: "GET",
            pathTemplate: "/v1/bundleIds",
            pathParameterNames: [],
            queryParameterNames: ["fields[apps]", "fields[bundleIdCapabilities]", "fields[bundleIds]", "fields[profiles]", "filter[id]", "filter[identifier]", "filter[name]", "filter[platform]", "filter[seedId]", "include", "limit", "limit[bundleIdCapabilities]", "limit[profiles]", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_bundleids_createinstance_a1aefa3f3a: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_createInstance", method: "POST",
            pathTemplate: "/v1/bundleIds",
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

    public static var op_bundleids_deleteinstance_0c56943e19: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/bundleIds/{id}",
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

    public static var op_bundleids_getinstance_ca98731c28: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_getInstance", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[apps]", "fields[bundleIdCapabilities]", "fields[bundleIds]", "fields[profiles]", "include", "limit[bundleIdCapabilities]", "limit[profiles]"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_bundleids_updateinstance_e9fd4a9ddd: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_updateInstance", method: "PATCH",
            pathTemplate: "/v1/bundleIds/{id}",
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

    public static var op_bundleids_app_gettoonerelated_7adbab657f: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_app_getToOneRelated", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/app",
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

    public static var op_bundleids_bundleidcapabilities_gettomanyrelated_505609eff4: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_bundleIdCapabilities_getToManyRelated", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/bundleIdCapabilities",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[bundleIdCapabilities]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_bundleids_profiles_gettomanyrelated_846bcb624e: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_profiles_getToManyRelated", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/profiles",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[profiles]", "limit"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_bundleids_app_gettoonerelationship_374ff1a2c8: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_app_getToOneRelationship", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/relationships/app",
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

    public static var op_bundleids_bundleidcapabilities_gettomanyrelationship_36a5063986: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_bundleIdCapabilities_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/relationships/bundleIdCapabilities",
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

    public static var op_bundleids_profiles_gettomanyrelationship_cb3af48b59: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "bundleIds_profiles_getToManyRelationship", method: "GET",
            pathTemplate: "/v1/bundleIds/{id}/relationships/profiles",
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

    public static var op_certificates_getcollection_6c12d0cd3b: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_getCollection", method: "GET",
            pathTemplate: "/v1/certificates",
            pathParameterNames: [],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "filter[certificateType]", "filter[displayName]", "filter[id]", "filter[serialNumber]", "include", "limit", "sort"],
            requiredQueryParameterNames: [],
            requestContentTypes: [],
            requestBodyRequired: false,
            responseContentTypes: ["application/json"],
            deprecated: false,
            transportBlocker: nil
        )
    }

    public static var op_certificates_createinstance_b13088ef62: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_createInstance", method: "POST",
            pathTemplate: "/v1/certificates",
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

    public static var op_certificates_deleteinstance_15dd710fa5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_deleteInstance", method: "DELETE",
            pathTemplate: "/v1/certificates/{id}",
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

    public static var op_certificates_getinstance_6e6a3cc2f5: ASCOpenAPIOperation {
        ASCOpenAPIOperation(
            id: "certificates_getInstance", method: "GET",
            pathTemplate: "/v1/certificates/{id}",
            pathParameterNames: ["id"],
            queryParameterNames: ["fields[certificates]", "fields[passTypeIds]", "include"],
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
    /// GET /v1/builds/{id}/buildBetaDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_buildbetadetail_gettoonerelated_4780b4bde1(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_buildbetadetail_gettoonerelated_4780b4bde1,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/diagnosticSignatures (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_diagnosticsignatures_gettomanyrelated_e924cf0de8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_diagnosticsignatures_gettomanyrelated_e924cf0de8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/icons (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_icons_gettomanyrelated_14fd6948e4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_icons_gettomanyrelated_14fd6948e4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/individualTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_individualtesters_gettomanyrelated_dd730564e2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_individualtesters_gettomanyrelated_dd730564e2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/metrics/betaBuildUsages (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betabuildusages_getmetrics_1b3960cba4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betabuildusages_getmetrics_1b3960cba4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/perfPowerMetrics (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_perfpowermetrics_gettomanyrelated_d5127f80a2(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_perfpowermetrics_gettomanyrelated_d5127f80a2,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/preReleaseVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_prereleaseversion_gettoonerelated_e97d931b9b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_prereleaseversion_gettoonerelated_e97d931b9b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_app_gettoonerelationship_28f26c05aa(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_app_gettoonerelationship_28f26c05aa,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/appEncryptionDeclaration (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_appencryptiondeclaration_gettoonerelationship_87393f0e77(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_appencryptiondeclaration_gettoonerelationship_87393f0e77,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/builds/{id}/relationships/appEncryptionDeclaration (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_appencryptiondeclaration_updatetoonerelationship_cad1ad5a84(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_appencryptiondeclaration_updatetoonerelationship_cad1ad5a84,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/appStoreVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_appstoreversion_gettoonerelationship_196d0fc8c4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_appstoreversion_gettoonerelationship_196d0fc8c4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/betaAppReviewSubmission (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betaappreviewsubmission_gettoonerelationship_b4ed7091f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betaappreviewsubmission_gettoonerelationship_b4ed7091f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/betaBuildLocalizations (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betabuildlocalizations_gettomanyrelationship_5841d02b1d(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betabuildlocalizations_gettomanyrelationship_5841d02b1d,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/builds/{id}/relationships/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betagroups_deletetomanyrelationship_eef39caa6a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betagroups_deletetomanyrelationship_eef39caa6a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/builds/{id}/relationships/betaGroups (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_betagroups_createtomanyrelationship_35bdf1b72e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_betagroups_createtomanyrelationship_35bdf1b72e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/buildBetaDetail (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_buildbetadetail_gettoonerelationship_6c055fca03(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_buildbetadetail_gettoonerelationship_6c055fca03,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/diagnosticSignatures (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_diagnosticsignatures_gettomanyrelationship_25210bbd4c(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_diagnosticsignatures_gettomanyrelationship_25210bbd4c,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/icons (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_icons_gettomanyrelationship_af98abfbee(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_icons_gettomanyrelationship_af98abfbee,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/builds/{id}/relationships/individualTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_individualtesters_deletetomanyrelationship_7c553fcb7e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_individualtesters_deletetomanyrelationship_7c553fcb7e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/individualTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_individualtesters_gettomanyrelationship_e713bc78b9(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_individualtesters_gettomanyrelationship_e713bc78b9,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/builds/{id}/relationships/individualTesters (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_individualtesters_createtomanyrelationship_1206d85509(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_individualtesters_createtomanyrelationship_1206d85509,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/builds/{id}/relationships/preReleaseVersion (raw transport response; no Codable guarantee).
    public func ascGenerated_builds_prereleaseversion_gettoonerelationship_58dd5573f0(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_builds_prereleaseversion_gettoonerelationship_58dd5573f0,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/bundleIdCapabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleidcapabilities_createinstance_1764d399de(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleidcapabilities_createinstance_1764d399de,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/bundleIdCapabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleidcapabilities_deleteinstance_0126bc4758(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleidcapabilities_deleteinstance_0126bc4758,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/bundleIdCapabilities/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleidcapabilities_updateinstance_2954488ca3(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleidcapabilities_updateinstance_2954488ca3,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_getcollection_aefbd1f115(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_getcollection_aefbd1f115,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/bundleIds (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_createinstance_a1aefa3f3a(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_createinstance_a1aefa3f3a,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/bundleIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_deleteinstance_0c56943e19(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_deleteinstance_0c56943e19,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_getinstance_ca98731c28(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_getinstance_ca98731c28,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// PATCH /v1/bundleIds/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_updateinstance_e9fd4a9ddd(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_updateinstance_e9fd4a9ddd,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/app (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_app_gettoonerelated_7adbab657f(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_app_gettoonerelated_7adbab657f,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/bundleIdCapabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_bundleidcapabilities_gettomanyrelated_505609eff4(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_bundleidcapabilities_gettomanyrelated_505609eff4,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/profiles (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_profiles_gettomanyrelated_846bcb624e(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_profiles_gettomanyrelated_846bcb624e,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/relationships/app (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_app_gettoonerelationship_374ff1a2c8(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_app_gettoonerelationship_374ff1a2c8,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/relationships/bundleIdCapabilities (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_bundleidcapabilities_gettomanyrelationship_36a5063986(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_bundleidcapabilities_gettomanyrelationship_36a5063986,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/bundleIds/{id}/relationships/profiles (raw transport response; no Codable guarantee).
    public func ascGenerated_bundleids_profiles_gettomanyrelationship_cb3af48b59(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_bundleids_profiles_gettomanyrelationship_cb3af48b59,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_getcollection_6c12d0cd3b(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_getcollection_6c12d0cd3b,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// POST /v1/certificates (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_createinstance_b13088ef62(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_createinstance_b13088ef62,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// DELETE /v1/certificates/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_deleteinstance_15dd710fa5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_deleteinstance_15dd710fa5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }

    /// GET /v1/certificates/{id} (raw transport response; no Codable guarantee).
    public func ascGenerated_certificates_getinstance_6e6a3cc2f5(
        pathParameters: [String: String] = [:], queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil, accept: String? = nil
    ) async throws -> Data {
        try await ascOpenAPI(ASCOpenAPICatalog.op_certificates_getinstance_6e6a3cc2f5,
            pathParameters: pathParameters, queryItems: queryItems,
            body: body, accept: accept)
    }
}
