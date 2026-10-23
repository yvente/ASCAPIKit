import Foundation

public struct ASCSalesReportType:
    RawRepresentable,
    Equatable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static let sales = Self(
        rawValue: "SALES"
    )

    public static let preOrder = Self(
        rawValue: "PRE_ORDER"
    )

    public static let newsstand = Self(
        rawValue: "NEWSSTAND"
    )

    public static let subscription = Self(
        rawValue: "SUBSCRIPTION"
    )

    public static let subscriptionEvent = Self(
        rawValue: "SUBSCRIPTION_EVENT"
    )

    public static let subscriber = Self(
        rawValue: "SUBSCRIBER"
    )

    public static let subscriptionOfferCodeRedemption =
        Self(
            rawValue:
                "SUBSCRIPTION_OFFER_CODE_REDEMPTION"
        )

    public static let installs = Self(
        rawValue: "INSTALLS"
    )

    public static let firstAnnual = Self(
        rawValue: "FIRST_ANNUAL"
    )

    public static let winBackEligibility = Self(
        rawValue: "WIN_BACK_ELIGIBILITY"
    )
}

public struct ASCSalesReportSubType:
    RawRepresentable,
    Equatable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static let summary = Self(
        rawValue: "SUMMARY"
    )

    public static let detailed = Self(
        rawValue: "DETAILED"
    )

    public static let summaryInstallType = Self(
        rawValue: "SUMMARY_INSTALL_TYPE"
    )

    public static let summaryTerritory = Self(
        rawValue: "SUMMARY_TERRITORY"
    )

    public static let summaryChannel = Self(
        rawValue: "SUMMARY_CHANNEL"
    )
}

public struct ASCSalesReportFrequency:
    RawRepresentable,
    Equatable,
    Hashable,
    Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static let daily = Self(
        rawValue: "DAILY"
    )

    public static let weekly = Self(
        rawValue: "WEEKLY"
    )

    public static let monthly = Self(
        rawValue: "MONTHLY"
    )

    public static let yearly = Self(
        rawValue: "YEARLY"
    )
}

public struct ASCSalesReportRequest:
    Equatable,
    Sendable
{
    public let reportType: ASCSalesReportType
    public let reportSubType:
        ASCSalesReportSubType
    public let frequency:
        ASCSalesReportFrequency
    public let vendorNumber: String
    public let reportDate: String?
    public let version: String?

    public init(
        reportType: ASCSalesReportType,
        reportSubType:
            ASCSalesReportSubType,
        frequency:
            ASCSalesReportFrequency,
        vendorNumber: String,
        reportDate: String? = nil,
        version: String? = nil
    ) {
        self.reportType = reportType
        self.reportSubType = reportSubType
        self.frequency = frequency
        self.vendorNumber = vendorNumber
        self.reportDate = reportDate
        self.version = version
    }
}

extension ASCClient {
    public func downloadSalesReport(
        _ request: ASCSalesReportRequest
    ) async throws -> Data {
        var queryItems: [URLQueryItem] = [
            URLQueryItem(
                name: "filter[frequency]",
                value:
                    request.frequency.rawValue
            ),
            URLQueryItem(
                name: "filter[reportSubType]",
                value:
                    request.reportSubType.rawValue
            ),
            URLQueryItem(
                name: "filter[reportType]",
                value:
                    request.reportType.rawValue
            ),
            URLQueryItem(
                name: "filter[vendorNumber]",
                value:
                    request.vendorNumber
            )
        ]

        if let reportDate = request.reportDate {
            queryItems.append(
                URLQueryItem(
                    name: "filter[reportDate]",
                    value: reportDate
                )
            )
        }

        if let version = request.version {
            queryItems.append(
                URLQueryItem(
                    name: "filter[version]",
                    value: version
                )
            )
        }

        return try await sendAuthorizedReport(
            path: "/v1/salesReports",
            queryItems: queryItems
        )
    }

    public func downloadFinanceReport(
        regionCode: String,
        reportDate: String,
        vendorNumber: String
    ) async throws -> Data {
        try await sendAuthorizedReport(
            path: "/v1/financeReports",
            queryItems: [
                URLQueryItem(
                    name: "filter[regionCode]",
                    value: regionCode
                ),
                URLQueryItem(
                    name: "filter[reportDate]",
                    value: reportDate
                ),
                URLQueryItem(
                    name: "filter[reportType]",
                    value: "FINANCIAL"
                ),
                URLQueryItem(
                    name:
                        "filter[vendorNumber]",
                    value: vendorNumber
                )
            ]
        )
    }
}
