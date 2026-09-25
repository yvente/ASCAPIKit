import Foundation

public struct ASCClient: Sendable {
    private let token: String
    private let transport: any ASCTransport
    private let baseURL: URL

    public init(
        configuration: ASCCredentialConfiguration,
        privateKeyPEM: String,
        transport: any ASCTransport = URLSessionASCTransport(),
        baseURL: URL = URL(
            string: "https://api.appstoreconnect.apple.com"
        )!
    ) throws {
        self.token = try ASCJWT.makeToken(
            configuration: configuration,
            privateKeyPEM: privateKeyPEM
        )

        self.transport = transport
        self.baseURL = baseURL
    }

    // MARK: - Typed read conveniences

    public func listApps() async throws -> [ASCApp] {
        try await list(
            "/v1/apps",
            resourceType: "apps",
            fields: "name,bundleId,primaryLocale"
        )
    }

    public func listVersions(
        appID: String
    ) async throws -> [ASCVersion] {
        try await list(
            "/v1/apps/\(appID)/appStoreVersions",
            resourceType: "appStoreVersions",
            fields: "platform,versionString,appVersionState"
        )
    }

    public func listAppInfos(
        appID: String
    ) async throws -> [ASCAppInfo] {
        try await list(
            "/v1/apps/\(appID)/appInfos",
            resourceType: "appInfos",
            fields: "state"
        )
    }

    public func listVersionLocalizations(
        versionID: String
    ) async throws -> [ASCVersionLocalization] {
        try await list(
            "/v1/appStoreVersions/\(versionID)/appStoreVersionLocalizations",
            resourceType: "appStoreVersionLocalizations",
            fields: "locale,keywords,promotionalText,description,whatsNew"
        )
    }

    public func listAppInfoLocalizations(
        appInfoID: String
    ) async throws -> [ASCAppInfoLocalization] {
        try await list(
            "/v1/appInfos/\(appInfoID)/appInfoLocalizations",
            resourceType: "appInfoLocalizations",
            fields: "locale,name,subtitle"
        )
    }

    // MARK: - Typed write conveniences

    public func updateAppInfoLocalization(
        id: String,
        attributes: [String: String]
    ) async throws -> ASCAppInfoLocalization {
        try await mutate(
            method: "PATCH",
            path: "/v1/appInfoLocalizations/\(id)",
            resourceType: "appInfoLocalizations",
            id: id,
            attributes: attributes
        )
    }

    public func updateVersionLocalization(
        id: String,
        attributes: [String: String]
    ) async throws -> ASCVersionLocalization {
        try await mutate(
            method: "PATCH",
            path: "/v1/appStoreVersionLocalizations/\(id)",
            resourceType: "appStoreVersionLocalizations",
            id: id,
            attributes: attributes
        )
    }

    public func createAppInfoLocalization(
        appInfoID: String,
        locale: String,
        attributes: [String: String]
    ) async throws -> ASCAppInfoLocalization {
        try await mutate(
            method: "POST",
            path: "/v1/appInfoLocalizations",
            resourceType: "appInfoLocalizations",
            attributes: attributes.merging(
                ["locale": locale]
            ) { _, new in new },
            relationship: (
                name: "appInfo",
                type: "appInfos",
                id: appInfoID
            )
        )
    }

    public func createVersionLocalization(
        versionID: String,
        locale: String,
        attributes: [String: String]
    ) async throws -> ASCVersionLocalization {
        try await mutate(
            method: "POST",
            path: "/v1/appStoreVersionLocalizations",
            resourceType: "appStoreVersionLocalizations",
            attributes: attributes.merging(
                ["locale": locale]
            ) { _, new in new },
            relationship: (
                name: "appStoreVersion",
                type: "appStoreVersions",
                id: versionID
            )
        )
    }

    // MARK: - Generic read primitive

    public func list<Resource: Decodable & Sendable>(
        _ path: String,
        resourceType: String,
        fields: String,
        limit: Int = 200
    ) async throws -> [Resource] {
        let endpoint = baseURL.appending(path: path)

        guard var components = URLComponents(
            url: endpoint,
            resolvingAgainstBaseURL: false
        ) else {
            throw ASCAPIError.invalidResponse
        }

        components.queryItems = [
            URLQueryItem(
                name: "limit",
                value: String(limit)
            ),
            URLQueryItem(
                name: "fields[\(resourceType)]",
                value: fields
            )
        ]

        guard var nextURL = components.url else {
            throw ASCAPIError.invalidResponse
        }

        var result: [Resource] = []
        var seen = Set<URL>()

        while true {
            guard seen.insert(nextURL).inserted else {
                throw ASCAPIError.invalidResponse
            }

            try validatePaginationURL(nextURL)

            var request = URLRequest(url: nextURL)
            request.httpMethod = "GET"
            request.setValue(
                "Bearer \(token)",
                forHTTPHeaderField: "Authorization"
            )
            request.setValue(
                "application/json",
                forHTTPHeaderField: "Accept"
            )

            let (data, response) = try await transport.send(request)

            guard (200..<300).contains(response.statusCode) else {
                throw error(
                    for: response.statusCode,
                    data: data
                )
            }

            let page: ASCPage<Resource>

            do {
                page = try JSONDecoder().decode(
                    ASCPage<Resource>.self,
                    from: data
                )
            } catch {
                throw ASCAPIError.invalidResponse
            }

            result.append(contentsOf: page.data)

            guard let next = page.links?.next else {
                break
            }

            guard let parsed = URL(
                string: next,
                relativeTo: baseURL
            )?.absoluteURL else {
                throw ASCAPIError.invalidResponse
            }

            nextURL = parsed
        }

        return result
    }

    // MARK: - Generic write primitive

    public func mutate<Resource: Decodable>(
        method: String,
        path: String,
        resourceType: String,
        id: String? = nil,
        attributes: [String: String],
        relationship: (
            name: String,
            type: String,
            id: String
        )? = nil
    ) async throws -> Resource {
        var resource: [String: Any] = [
            "type": resourceType,
            "attributes": attributes
        ]

        if let id {
            resource["id"] = id
        }

        if let relationship {
            resource["relationships"] = [
                relationship.name: [
                    "data": [
                        "type": relationship.type,
                        "id": relationship.id
                    ]
                ]
            ]
        }

        let document: [String: Any] = [
            "data": resource
        ]

        guard JSONSerialization.isValidJSONObject(document) else {
            throw ASCAPIError.invalidResponse
        }

        let body: Data

        do {
            body = try JSONSerialization.data(
                withJSONObject: document
            )
        } catch {
            throw ASCAPIError.invalidResponse
        }

        let url = baseURL.appending(path: path)

        var request = URLRequest(url: url)
        request.httpMethod = method
        request.httpBody = body

        request.setValue(
            "Bearer \(token)",
            forHTTPHeaderField: "Authorization"
        )
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Accept"
        )
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Content-Type"
        )

        let (data, response) = try await transport.send(request)

        guard (200..<300).contains(response.statusCode) else {
            throw error(
                for: response.statusCode,
                data: data
            )
        }

        do {
            return try JSONDecoder()
                .decode(
                    ASCSingleResource<Resource>.self,
                    from: data
                )
                .data
        } catch {
            throw ASCAPIError.invalidResponse
        }
    }

    // MARK: - Pagination safety

    private func validatePaginationURL(
        _ url: URL
    ) throws {
        guard
            url.scheme == "https",
            url.host == baseURL.host,
            url.port == baseURL.port,
            url.user == nil,
            url.password == nil,
            url.path.hasPrefix("/v1/")
        else {
            throw ASCAPIError.unsafePaginationURL
        }
    }

    // MARK: - Error classification

    private func error(
        for status: Int,
        data: Data
    ) -> ASCAPIError {
        let details = (
            try? JSONDecoder().decode(
                ASCErrorResponse.self,
                from: data
            )
        )?
        .errors
        .compactMap(\.detail)
        .joined(separator: "; ") ?? ""

        switch status {
        case 401:
            return .unauthorized

        case 403:
            return .forbidden(details)

        case 429:
            return .rateLimited

        default:
            return .serviceError(
                status,
                details
            )
        }
    }
}

private struct ASCPage<Resource: Decodable>: Decodable {
    let data: [Resource]
    let links: Links?

    struct Links: Decodable {
        let next: String?
    }
}

private struct ASCSingleResource<Resource: Decodable>: Decodable {
    let data: Resource
}

private struct ASCErrorResponse: Decodable {
    let errors: [Item]

    struct Item: Decodable {
        let detail: String?
    }
}
