// Generated for Batch 8 from pinned Apple OpenAPI 4.5.1.
// Additive typed query overloads only: existing GET methods and response models are unchanged.
// Not fully schema-typed; not live-Apple-verified.
import Foundation

public struct ASCTypedGetAppQuery: Sendable {
    public var fields_androidToIosAppMappingDetails_: [String]?
    public var fields_appClips_: [String]?
    public var fields_appCustomProductPages_: [String]?
    public var fields_appEncryptionDeclarations_: [String]?
    public var fields_appEvents_: [String]?
    public var fields_appInfos_: [String]?
    public var fields_appStoreVersionExperiments_: [String]?
    public var fields_appStoreVersions_: [String]?
    public var fields_apps_: [String]?
    public var fields_betaAppLocalizations_: [String]?
    public var fields_betaAppReviewDetails_: [String]?
    public var fields_betaGroups_: [String]?
    public var fields_betaLicenseAgreements_: [String]?
    public var fields_buildIcons_: [String]?
    public var fields_builds_: [String]?
    public var fields_ciProducts_: [String]?
    public var fields_endUserLicenseAgreements_: [String]?
    public var fields_gameCenterDetails_: [String]?
    public var fields_gameCenterEnabledVersions_: [String]?
    public var fields_inAppPurchases_: [String]?
    public var fields_preReleaseVersions_: [String]?
    public var fields_promotedPurchases_: [String]?
    public var fields_reviewSubmissions_: [String]?
    public var fields_subscriptionGracePeriods_: [String]?
    public var fields_subscriptionGroups_: [String]?
    public var include: [String]?
    public var limit_androidToIosAppMappingDetails_: Int64?
    public var limit_appClips_: Int64?
    public var limit_appCustomProductPages_: Int64?
    public var limit_appEncryptionDeclarations_: Int64?
    public var limit_appEvents_: Int64?
    public var limit_appInfos_: Int64?
    public var limit_appStoreVersionExperimentsV2_: Int64?
    public var limit_appStoreVersions_: Int64?
    public var limit_betaAppLocalizations_: Int64?
    public var limit_betaGroups_: Int64?
    public var limit_builds_: Int64?
    public var limit_gameCenterEnabledVersions_: Int64?
    public var limit_inAppPurchasesV2_: Int64?
    public var limit_inAppPurchases_: Int64?
    public var limit_preReleaseVersions_: Int64?
    public var limit_promotedPurchases_: Int64?
    public var limit_reviewSubmissions_: Int64?
    public var limit_subscriptionGroups_: Int64?
    public init(fields_androidToIosAppMappingDetails_: [String]? = nil, fields_appClips_: [String]? = nil, fields_appCustomProductPages_: [String]? = nil, fields_appEncryptionDeclarations_: [String]? = nil, fields_appEvents_: [String]? = nil, fields_appInfos_: [String]? = nil, fields_appStoreVersionExperiments_: [String]? = nil, fields_appStoreVersions_: [String]? = nil, fields_apps_: [String]? = nil, fields_betaAppLocalizations_: [String]? = nil, fields_betaAppReviewDetails_: [String]? = nil, fields_betaGroups_: [String]? = nil, fields_betaLicenseAgreements_: [String]? = nil, fields_buildIcons_: [String]? = nil, fields_builds_: [String]? = nil, fields_ciProducts_: [String]? = nil, fields_endUserLicenseAgreements_: [String]? = nil, fields_gameCenterDetails_: [String]? = nil, fields_gameCenterEnabledVersions_: [String]? = nil, fields_inAppPurchases_: [String]? = nil, fields_preReleaseVersions_: [String]? = nil, fields_promotedPurchases_: [String]? = nil, fields_reviewSubmissions_: [String]? = nil, fields_subscriptionGracePeriods_: [String]? = nil, fields_subscriptionGroups_: [String]? = nil, include: [String]? = nil, limit_androidToIosAppMappingDetails_: Int64? = nil, limit_appClips_: Int64? = nil, limit_appCustomProductPages_: Int64? = nil, limit_appEncryptionDeclarations_: Int64? = nil, limit_appEvents_: Int64? = nil, limit_appInfos_: Int64? = nil, limit_appStoreVersionExperimentsV2_: Int64? = nil, limit_appStoreVersions_: Int64? = nil, limit_betaAppLocalizations_: Int64? = nil, limit_betaGroups_: Int64? = nil, limit_builds_: Int64? = nil, limit_gameCenterEnabledVersions_: Int64? = nil, limit_inAppPurchasesV2_: Int64? = nil, limit_inAppPurchases_: Int64? = nil, limit_preReleaseVersions_: Int64? = nil, limit_promotedPurchases_: Int64? = nil, limit_reviewSubmissions_: Int64? = nil, limit_subscriptionGroups_: Int64? = nil) {
        self.fields_androidToIosAppMappingDetails_ = fields_androidToIosAppMappingDetails_
        self.fields_appClips_ = fields_appClips_
        self.fields_appCustomProductPages_ = fields_appCustomProductPages_
        self.fields_appEncryptionDeclarations_ = fields_appEncryptionDeclarations_
        self.fields_appEvents_ = fields_appEvents_
        self.fields_appInfos_ = fields_appInfos_
        self.fields_appStoreVersionExperiments_ = fields_appStoreVersionExperiments_
        self.fields_appStoreVersions_ = fields_appStoreVersions_
        self.fields_apps_ = fields_apps_
        self.fields_betaAppLocalizations_ = fields_betaAppLocalizations_
        self.fields_betaAppReviewDetails_ = fields_betaAppReviewDetails_
        self.fields_betaGroups_ = fields_betaGroups_
        self.fields_betaLicenseAgreements_ = fields_betaLicenseAgreements_
        self.fields_buildIcons_ = fields_buildIcons_
        self.fields_builds_ = fields_builds_
        self.fields_ciProducts_ = fields_ciProducts_
        self.fields_endUserLicenseAgreements_ = fields_endUserLicenseAgreements_
        self.fields_gameCenterDetails_ = fields_gameCenterDetails_
        self.fields_gameCenterEnabledVersions_ = fields_gameCenterEnabledVersions_
        self.fields_inAppPurchases_ = fields_inAppPurchases_
        self.fields_preReleaseVersions_ = fields_preReleaseVersions_
        self.fields_promotedPurchases_ = fields_promotedPurchases_
        self.fields_reviewSubmissions_ = fields_reviewSubmissions_
        self.fields_subscriptionGracePeriods_ = fields_subscriptionGracePeriods_
        self.fields_subscriptionGroups_ = fields_subscriptionGroups_
        self.include = include
        self.limit_androidToIosAppMappingDetails_ = limit_androidToIosAppMappingDetails_
        self.limit_appClips_ = limit_appClips_
        self.limit_appCustomProductPages_ = limit_appCustomProductPages_
        self.limit_appEncryptionDeclarations_ = limit_appEncryptionDeclarations_
        self.limit_appEvents_ = limit_appEvents_
        self.limit_appInfos_ = limit_appInfos_
        self.limit_appStoreVersionExperimentsV2_ = limit_appStoreVersionExperimentsV2_
        self.limit_appStoreVersions_ = limit_appStoreVersions_
        self.limit_betaAppLocalizations_ = limit_betaAppLocalizations_
        self.limit_betaGroups_ = limit_betaGroups_
        self.limit_builds_ = limit_builds_
        self.limit_gameCenterEnabledVersions_ = limit_gameCenterEnabledVersions_
        self.limit_inAppPurchasesV2_ = limit_inAppPurchasesV2_
        self.limit_inAppPurchases_ = limit_inAppPurchases_
        self.limit_preReleaseVersions_ = limit_preReleaseVersions_
        self.limit_promotedPurchases_ = limit_promotedPurchases_
        self.limit_reviewSubmissions_ = limit_reviewSubmissions_
        self.limit_subscriptionGroups_ = limit_subscriptionGroups_
    }

    public func urlQueryItems() -> [URLQueryItem] {
        var result: [URLQueryItem] = []
        if let value = fields_androidToIosAppMappingDetails_ {
            result.append(URLQueryItem(name: "fields[androidToIosAppMappingDetails]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appClips_ {
            result.append(URLQueryItem(name: "fields[appClips]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appCustomProductPages_ {
            result.append(URLQueryItem(name: "fields[appCustomProductPages]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appEncryptionDeclarations_ {
            result.append(URLQueryItem(name: "fields[appEncryptionDeclarations]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appEvents_ {
            result.append(URLQueryItem(name: "fields[appEvents]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appInfos_ {
            result.append(URLQueryItem(name: "fields[appInfos]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersionExperiments_ {
            result.append(URLQueryItem(name: "fields[appStoreVersionExperiments]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersions_ {
            result.append(URLQueryItem(name: "fields[appStoreVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_apps_ {
            result.append(URLQueryItem(name: "fields[apps]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaAppLocalizations_ {
            result.append(URLQueryItem(name: "fields[betaAppLocalizations]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaAppReviewDetails_ {
            result.append(URLQueryItem(name: "fields[betaAppReviewDetails]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaGroups_ {
            result.append(URLQueryItem(name: "fields[betaGroups]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaLicenseAgreements_ {
            result.append(URLQueryItem(name: "fields[betaLicenseAgreements]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_buildIcons_ {
            result.append(URLQueryItem(name: "fields[buildIcons]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_builds_ {
            result.append(URLQueryItem(name: "fields[builds]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_ciProducts_ {
            result.append(URLQueryItem(name: "fields[ciProducts]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_endUserLicenseAgreements_ {
            result.append(URLQueryItem(name: "fields[endUserLicenseAgreements]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_gameCenterDetails_ {
            result.append(URLQueryItem(name: "fields[gameCenterDetails]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_gameCenterEnabledVersions_ {
            result.append(URLQueryItem(name: "fields[gameCenterEnabledVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_inAppPurchases_ {
            result.append(URLQueryItem(name: "fields[inAppPurchases]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_preReleaseVersions_ {
            result.append(URLQueryItem(name: "fields[preReleaseVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_promotedPurchases_ {
            result.append(URLQueryItem(name: "fields[promotedPurchases]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_reviewSubmissions_ {
            result.append(URLQueryItem(name: "fields[reviewSubmissions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_subscriptionGracePeriods_ {
            result.append(URLQueryItem(name: "fields[subscriptionGracePeriods]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_subscriptionGroups_ {
            result.append(URLQueryItem(name: "fields[subscriptionGroups]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = include {
            result.append(URLQueryItem(name: "include", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = limit_androidToIosAppMappingDetails_ {
            result.append(URLQueryItem(name: "limit[androidToIosAppMappingDetails]", value: String(value)))
        }
        if let value = limit_appClips_ {
            result.append(URLQueryItem(name: "limit[appClips]", value: String(value)))
        }
        if let value = limit_appCustomProductPages_ {
            result.append(URLQueryItem(name: "limit[appCustomProductPages]", value: String(value)))
        }
        if let value = limit_appEncryptionDeclarations_ {
            result.append(URLQueryItem(name: "limit[appEncryptionDeclarations]", value: String(value)))
        }
        if let value = limit_appEvents_ {
            result.append(URLQueryItem(name: "limit[appEvents]", value: String(value)))
        }
        if let value = limit_appInfos_ {
            result.append(URLQueryItem(name: "limit[appInfos]", value: String(value)))
        }
        if let value = limit_appStoreVersionExperimentsV2_ {
            result.append(URLQueryItem(name: "limit[appStoreVersionExperimentsV2]", value: String(value)))
        }
        if let value = limit_appStoreVersions_ {
            result.append(URLQueryItem(name: "limit[appStoreVersions]", value: String(value)))
        }
        if let value = limit_betaAppLocalizations_ {
            result.append(URLQueryItem(name: "limit[betaAppLocalizations]", value: String(value)))
        }
        if let value = limit_betaGroups_ {
            result.append(URLQueryItem(name: "limit[betaGroups]", value: String(value)))
        }
        if let value = limit_builds_ {
            result.append(URLQueryItem(name: "limit[builds]", value: String(value)))
        }
        if let value = limit_gameCenterEnabledVersions_ {
            result.append(URLQueryItem(name: "limit[gameCenterEnabledVersions]", value: String(value)))
        }
        if let value = limit_inAppPurchasesV2_ {
            result.append(URLQueryItem(name: "limit[inAppPurchasesV2]", value: String(value)))
        }
        if let value = limit_inAppPurchases_ {
            result.append(URLQueryItem(name: "limit[inAppPurchases]", value: String(value)))
        }
        if let value = limit_preReleaseVersions_ {
            result.append(URLQueryItem(name: "limit[preReleaseVersions]", value: String(value)))
        }
        if let value = limit_promotedPurchases_ {
            result.append(URLQueryItem(name: "limit[promotedPurchases]", value: String(value)))
        }
        if let value = limit_reviewSubmissions_ {
            result.append(URLQueryItem(name: "limit[reviewSubmissions]", value: String(value)))
        }
        if let value = limit_subscriptionGroups_ {
            result.append(URLQueryItem(name: "limit[subscriptionGroups]", value: String(value)))
        }
        return result
    }
}

extension ASCClient {
    /// Typed OpenAPI query for GET /v1/apps/{id}; use `queryItems:` for legacy/raw behavior.
    public func ascTypedGetApp(id: String, query: ASCTypedGetAppQuery) async throws -> ASCTypedGetAppResponse {
        return try await ascTypedGetApp(id: id, queryItems: query.urlQueryItems())
    }
}

public struct ASCTypedGetBuildQuery: Sendable {
    public var fields_appEncryptionDeclarations_: [String]?
    public var fields_appStoreVersions_: [String]?
    public var fields_apps_: [String]?
    public var fields_betaAppReviewSubmissions_: [String]?
    public var fields_betaBuildLocalizations_: [String]?
    public var fields_betaGroups_: [String]?
    public var fields_betaTesters_: [String]?
    public var fields_buildBetaDetails_: [String]?
    public var fields_buildBundles_: [String]?
    public var fields_buildIcons_: [String]?
    public var fields_buildUploads_: [String]?
    public var fields_builds_: [String]?
    public var fields_preReleaseVersions_: [String]?
    public var include: [String]?
    public var limit_betaBuildLocalizations_: Int64?
    public var limit_betaGroups_: Int64?
    public var limit_buildBundles_: Int64?
    public var limit_icons_: Int64?
    public var limit_individualTesters_: Int64?
    public init(fields_appEncryptionDeclarations_: [String]? = nil, fields_appStoreVersions_: [String]? = nil, fields_apps_: [String]? = nil, fields_betaAppReviewSubmissions_: [String]? = nil, fields_betaBuildLocalizations_: [String]? = nil, fields_betaGroups_: [String]? = nil, fields_betaTesters_: [String]? = nil, fields_buildBetaDetails_: [String]? = nil, fields_buildBundles_: [String]? = nil, fields_buildIcons_: [String]? = nil, fields_buildUploads_: [String]? = nil, fields_builds_: [String]? = nil, fields_preReleaseVersions_: [String]? = nil, include: [String]? = nil, limit_betaBuildLocalizations_: Int64? = nil, limit_betaGroups_: Int64? = nil, limit_buildBundles_: Int64? = nil, limit_icons_: Int64? = nil, limit_individualTesters_: Int64? = nil) {
        self.fields_appEncryptionDeclarations_ = fields_appEncryptionDeclarations_
        self.fields_appStoreVersions_ = fields_appStoreVersions_
        self.fields_apps_ = fields_apps_
        self.fields_betaAppReviewSubmissions_ = fields_betaAppReviewSubmissions_
        self.fields_betaBuildLocalizations_ = fields_betaBuildLocalizations_
        self.fields_betaGroups_ = fields_betaGroups_
        self.fields_betaTesters_ = fields_betaTesters_
        self.fields_buildBetaDetails_ = fields_buildBetaDetails_
        self.fields_buildBundles_ = fields_buildBundles_
        self.fields_buildIcons_ = fields_buildIcons_
        self.fields_buildUploads_ = fields_buildUploads_
        self.fields_builds_ = fields_builds_
        self.fields_preReleaseVersions_ = fields_preReleaseVersions_
        self.include = include
        self.limit_betaBuildLocalizations_ = limit_betaBuildLocalizations_
        self.limit_betaGroups_ = limit_betaGroups_
        self.limit_buildBundles_ = limit_buildBundles_
        self.limit_icons_ = limit_icons_
        self.limit_individualTesters_ = limit_individualTesters_
    }

    public func urlQueryItems() -> [URLQueryItem] {
        var result: [URLQueryItem] = []
        if let value = fields_appEncryptionDeclarations_ {
            result.append(URLQueryItem(name: "fields[appEncryptionDeclarations]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersions_ {
            result.append(URLQueryItem(name: "fields[appStoreVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_apps_ {
            result.append(URLQueryItem(name: "fields[apps]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaAppReviewSubmissions_ {
            result.append(URLQueryItem(name: "fields[betaAppReviewSubmissions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaBuildLocalizations_ {
            result.append(URLQueryItem(name: "fields[betaBuildLocalizations]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaGroups_ {
            result.append(URLQueryItem(name: "fields[betaGroups]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_betaTesters_ {
            result.append(URLQueryItem(name: "fields[betaTesters]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_buildBetaDetails_ {
            result.append(URLQueryItem(name: "fields[buildBetaDetails]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_buildBundles_ {
            result.append(URLQueryItem(name: "fields[buildBundles]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_buildIcons_ {
            result.append(URLQueryItem(name: "fields[buildIcons]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_buildUploads_ {
            result.append(URLQueryItem(name: "fields[buildUploads]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_builds_ {
            result.append(URLQueryItem(name: "fields[builds]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_preReleaseVersions_ {
            result.append(URLQueryItem(name: "fields[preReleaseVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = include {
            result.append(URLQueryItem(name: "include", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = limit_betaBuildLocalizations_ {
            result.append(URLQueryItem(name: "limit[betaBuildLocalizations]", value: String(value)))
        }
        if let value = limit_betaGroups_ {
            result.append(URLQueryItem(name: "limit[betaGroups]", value: String(value)))
        }
        if let value = limit_buildBundles_ {
            result.append(URLQueryItem(name: "limit[buildBundles]", value: String(value)))
        }
        if let value = limit_icons_ {
            result.append(URLQueryItem(name: "limit[icons]", value: String(value)))
        }
        if let value = limit_individualTesters_ {
            result.append(URLQueryItem(name: "limit[individualTesters]", value: String(value)))
        }
        return result
    }
}

extension ASCClient {
    /// Typed OpenAPI query for GET /v1/builds/{id}; use `queryItems:` for legacy/raw behavior.
    public func ascTypedGetBuild(id: String, query: ASCTypedGetBuildQuery) async throws -> ASCTypedGetBuildResponse {
        return try await ascTypedGetBuild(id: id, queryItems: query.urlQueryItems())
    }
}

public struct ASCTypedGetAppStoreVersionQuery: Sendable {
    public var fields_alternativeDistributionPackages_: [String]?
    public var fields_appClipDefaultExperiences_: [String]?
    public var fields_appStoreReviewDetails_: [String]?
    public var fields_appStoreVersionExperiments_: [String]?
    public var fields_appStoreVersionLocalizations_: [String]?
    public var fields_appStoreVersionPhasedReleases_: [String]?
    public var fields_appStoreVersionSubmissions_: [String]?
    public var fields_appStoreVersions_: [String]?
    public var fields_apps_: [String]?
    public var fields_builds_: [String]?
    public var fields_gameCenterAppVersions_: [String]?
    public var fields_routingAppCoverages_: [String]?
    public var include: [String]?
    public var limit_appStoreVersionExperimentsV2_: Int64?
    public var limit_appStoreVersionExperiments_: Int64?
    public var limit_appStoreVersionLocalizations_: Int64?
    public init(fields_alternativeDistributionPackages_: [String]? = nil, fields_appClipDefaultExperiences_: [String]? = nil, fields_appStoreReviewDetails_: [String]? = nil, fields_appStoreVersionExperiments_: [String]? = nil, fields_appStoreVersionLocalizations_: [String]? = nil, fields_appStoreVersionPhasedReleases_: [String]? = nil, fields_appStoreVersionSubmissions_: [String]? = nil, fields_appStoreVersions_: [String]? = nil, fields_apps_: [String]? = nil, fields_builds_: [String]? = nil, fields_gameCenterAppVersions_: [String]? = nil, fields_routingAppCoverages_: [String]? = nil, include: [String]? = nil, limit_appStoreVersionExperimentsV2_: Int64? = nil, limit_appStoreVersionExperiments_: Int64? = nil, limit_appStoreVersionLocalizations_: Int64? = nil) {
        self.fields_alternativeDistributionPackages_ = fields_alternativeDistributionPackages_
        self.fields_appClipDefaultExperiences_ = fields_appClipDefaultExperiences_
        self.fields_appStoreReviewDetails_ = fields_appStoreReviewDetails_
        self.fields_appStoreVersionExperiments_ = fields_appStoreVersionExperiments_
        self.fields_appStoreVersionLocalizations_ = fields_appStoreVersionLocalizations_
        self.fields_appStoreVersionPhasedReleases_ = fields_appStoreVersionPhasedReleases_
        self.fields_appStoreVersionSubmissions_ = fields_appStoreVersionSubmissions_
        self.fields_appStoreVersions_ = fields_appStoreVersions_
        self.fields_apps_ = fields_apps_
        self.fields_builds_ = fields_builds_
        self.fields_gameCenterAppVersions_ = fields_gameCenterAppVersions_
        self.fields_routingAppCoverages_ = fields_routingAppCoverages_
        self.include = include
        self.limit_appStoreVersionExperimentsV2_ = limit_appStoreVersionExperimentsV2_
        self.limit_appStoreVersionExperiments_ = limit_appStoreVersionExperiments_
        self.limit_appStoreVersionLocalizations_ = limit_appStoreVersionLocalizations_
    }

    public func urlQueryItems() -> [URLQueryItem] {
        var result: [URLQueryItem] = []
        if let value = fields_alternativeDistributionPackages_ {
            result.append(URLQueryItem(name: "fields[alternativeDistributionPackages]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appClipDefaultExperiences_ {
            result.append(URLQueryItem(name: "fields[appClipDefaultExperiences]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreReviewDetails_ {
            result.append(URLQueryItem(name: "fields[appStoreReviewDetails]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersionExperiments_ {
            result.append(URLQueryItem(name: "fields[appStoreVersionExperiments]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersionLocalizations_ {
            result.append(URLQueryItem(name: "fields[appStoreVersionLocalizations]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersionPhasedReleases_ {
            result.append(URLQueryItem(name: "fields[appStoreVersionPhasedReleases]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersionSubmissions_ {
            result.append(URLQueryItem(name: "fields[appStoreVersionSubmissions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_appStoreVersions_ {
            result.append(URLQueryItem(name: "fields[appStoreVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_apps_ {
            result.append(URLQueryItem(name: "fields[apps]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_builds_ {
            result.append(URLQueryItem(name: "fields[builds]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_gameCenterAppVersions_ {
            result.append(URLQueryItem(name: "fields[gameCenterAppVersions]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = fields_routingAppCoverages_ {
            result.append(URLQueryItem(name: "fields[routingAppCoverages]", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = include {
            result.append(URLQueryItem(name: "include", value: value.map { element in element }.joined(separator: ",")))
        }
        if let value = limit_appStoreVersionExperimentsV2_ {
            result.append(URLQueryItem(name: "limit[appStoreVersionExperimentsV2]", value: String(value)))
        }
        if let value = limit_appStoreVersionExperiments_ {
            result.append(URLQueryItem(name: "limit[appStoreVersionExperiments]", value: String(value)))
        }
        if let value = limit_appStoreVersionLocalizations_ {
            result.append(URLQueryItem(name: "limit[appStoreVersionLocalizations]", value: String(value)))
        }
        return result
    }
}

extension ASCClient {
    /// Typed OpenAPI query for GET /v1/appStoreVersions/{id}; use `queryItems:` for legacy/raw behavior.
    public func ascTypedGetAppStoreVersion(id: String, query: ASCTypedGetAppStoreVersionQuery) async throws -> ASCTypedGetAppStoreVersionResponse {
        return try await ascTypedGetAppStoreVersion(id: id, queryItems: query.urlQueryItems())
    }
}

