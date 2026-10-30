import Foundation

/// Accepts canonical API resource paths, including future versioned namespaces.
/// The path is intentionally narrower than a URL: filters belong in queryItems.
enum ASCGenericPaginationPath {
    static func isAllowed(_ path: String) -> Bool {
        guard path.hasPrefix("/"),
              !path.hasPrefix("//"),
              !path.contains("?"),
              !path.contains("#"),
              !path.contains("\\"),
              !path.contains("%") else {
            return false
        }
        let parts = path.split(separator: "/", omittingEmptySubsequences: false)
        guard parts.count >= 3,
              parts[0].isEmpty,
              parts[1].first == "v" else {
            return false
        }
        let version = parts[1].dropFirst()
        guard !version.isEmpty,
              version.first != "0",
              version.allSatisfy({ $0 >= "0" && $0 <= "9" }) else {
            return false
        }
        return parts.dropFirst(2).allSatisfy { !$0.isEmpty && $0 != "." && $0 != ".." }
    }
}

private struct ASCGenericPaginationDocument<Resource: Decodable & Sendable>: Decodable, Sendable {
    let data: [Resource]
    let links: Links?

    struct Links: Decodable, Sendable {
        let next: String?
    }
}

/// JSON:API resource identifier, used by relationship endpoints.
public struct ASCResourceIdentifier: Codable, Hashable, Sendable {
    public let type: String
    public let id: String

    public init(type: String, id: String) {
        self.type = type
        self.id = id
    }
}

extension ASCClient {
    /// Fetch a complete JSON:API collection over `links.next` using the original
    /// Apple-supplied URL without reconstructing its percent-encoded query.
    ///
    /// `maxPages` is a safety ceiling, not truncation: hitting the ceiling while
    /// more pages remain throws `.invalidResponse` instead of returning partial data.
    /// The host owns token renewal, rate-limit handling and retry policy.
    public func listAll<Resource: Decodable & Sendable>(
        _ path: String,
        queryItems: [URLQueryItem] = [],
        maxPages: Int = 500,
        as resourceType: Resource.Type = Resource.self
    ) async throws -> [Resource] {
        guard ASCGenericPaginationPath.isAllowed(path), maxPages > 0 else {
            throw ASCAPIError.invalidResponse
        }
        let endpoint = baseURL.appending(path: path)
        guard var components = URLComponents(
            url: endpoint,
            resolvingAgainstBaseURL: false
        ) else {
            throw ASCAPIError.invalidResponse
        }
        if !queryItems.isEmpty {
            components.queryItems = queryItems
        }
        guard var currentURL = components.url else {
            throw ASCAPIError.invalidResponse
        }

        var collected: [Resource] = []
        var seen = Set<URL>()
        var completedPages = 0

        while true {
            guard seen.insert(currentURL).inserted else {
                throw ASCAPIError.invalidResponse
            }
            // This helper validates scheme, origin, credentials, fragment, and
            // the exact canonical path before sending the Bearer token.
            let response = try await sendAuthorizedPaginatedGET(
                currentURL,
                expectedPath: path
            )
            let page: ASCGenericPaginationDocument<Resource>
            do {
                page = try JSONDecoder().decode(
                    ASCGenericPaginationDocument<Resource>.self,
                    from: response
                )
            } catch {
                throw ASCAPIError.invalidResponse
            }
            collected.append(contentsOf: page.data)
            completedPages += 1

            guard let next = page.links?.next else {
                return collected
            }
            guard completedPages < maxPages else {
                throw ASCAPIError.invalidResponse
            }
            guard !next.isEmpty,
                  let nextURL = URL(string: next, relativeTo: currentURL)?.absoluteURL else {
                throw ASCAPIError.unsafePaginationURL
            }
            currentURL = nextURL
        }
    }

    /// Read a paginated to-many relationship, verifying every linkage type.
    public func listRelationshipIdentifiers(
        _ path: String,
        resourceType: String,
        queryItems: [URLQueryItem] = [],
        maxPages: Int = 500
    ) async throws -> [ASCResourceIdentifier] {
        guard !resourceType.isEmpty else {
            throw ASCAPIError.invalidResponse
        }
        let identifiers: [ASCResourceIdentifier] = try await listAll(
            path,
            queryItems: queryItems,
            maxPages: maxPages
        )
        guard identifiers.allSatisfy({ $0.type == resourceType && !$0.id.isEmpty }) else {
            throw ASCAPIError.invalidResponse
        }
        return identifiers
    }
}
