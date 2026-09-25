import Foundation

public enum ASCKeyKind: String, Codable, CaseIterable, Sendable {
    case team
    case individual
}

public struct ASCCredentialConfiguration: Codable, Equatable, Sendable {
    public let kind: ASCKeyKind
    public let keyID: String
    public let issuerID: String?

    public init(
        kind: ASCKeyKind,
        keyID: String,
        issuerID: String?
    ) {
        self.kind = kind
        self.keyID = keyID
        self.issuerID = issuerID
    }

    public func normalized() -> Self {
        Self(
            kind: kind,
            keyID: keyID.trimmingCharacters(in: .whitespacesAndNewlines),
            issuerID: issuerID?.trimmingCharacters(in: .whitespacesAndNewlines)
        )
    }

    public var isComplete: Bool {
        !keyID.isEmpty &&
            (kind == .individual || !(issuerID ?? "").isEmpty)
    }
}

public struct ASCApp: Codable, Sendable {
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes: Codable, Sendable {
        public let name: String
        public let bundleId: String
        public let primaryLocale: String?

        public init(
            name: String,
            bundleId: String,
            primaryLocale: String?
        ) {
            self.name = name
            self.bundleId = bundleId
            self.primaryLocale = primaryLocale
        }
    }
}

public struct ASCVersion: Codable, Sendable {
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes: Codable, Sendable {
        public let platform: String
        public let versionString: String
        public let appVersionState: String?

        public init(
            platform: String,
            versionString: String,
            appVersionState: String?
        ) {
            self.platform = platform
            self.versionString = versionString
            self.appVersionState = appVersionState
        }
    }
}

public struct ASCAppInfo: Codable, Sendable {
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes: Codable, Sendable {
        public let state: String?

        public init(state: String?) {
            self.state = state
        }
    }
}

public struct ASCVersionLocalization: Codable, Sendable {
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes: Codable, Sendable {
        public let locale: String
        public let keywords: String?
        public let promotionalText: String?
        public let description: String?
        public let whatsNew: String?

        public init(
            locale: String,
            keywords: String?,
            promotionalText: String?,
            description: String?,
            whatsNew: String?
        ) {
            self.locale = locale
            self.keywords = keywords
            self.promotionalText = promotionalText
            self.description = description
            self.whatsNew = whatsNew
        }
    }
}

public struct ASCAppInfoLocalization: Codable, Sendable {
    public let id: String
    public let attributes: Attributes

    public init(
        id: String,
        attributes: Attributes
    ) {
        self.id = id
        self.attributes = attributes
    }

    public struct Attributes: Codable, Sendable {
        public let locale: String?
        public let name: String?
        public let subtitle: String?

        public init(
            locale: String?,
            name: String?,
            subtitle: String?
        ) {
            self.locale = locale
            self.name = name
            self.subtitle = subtitle
        }
    }
}
