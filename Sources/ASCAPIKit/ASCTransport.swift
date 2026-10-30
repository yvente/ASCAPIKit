import Foundation

public protocol ASCTransport: Sendable {
    func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse)
}

/// Offline-validated transport rules for requests that carry an
/// Authorization header. The default transport refuses to send a Bearer
/// token over plaintext HTTP, to a missing host, or to a URL containing
/// user information, before any network I/O occurs. The checks reuse the
/// existing structured `ASCAPIError` classification and add no user-facing
/// text. Unauthenticated requests are untouched: presigned asset uploads,
/// image downloads, and media downloads keep their own existing boundaries.
enum ASCAuthorizedRequestGuard {
    /// Validate a request that may carry an Authorization header.
    /// Requests without an Authorization header pass through unchanged.
    static func validateRequestURL(
        _ request: URLRequest
    ) throws {
        guard
            request.value(
                forHTTPHeaderField: "Authorization"
            ) != nil
        else {
            return
        }

        guard let url = request.url else {
            throw ASCAPIError.invalidResponse
        }

        try validateAuthorizedURL(url)
    }

    static func validateAuthorizedURL(
        _ url: URL
    ) throws {
        guard
            url.scheme?.lowercased() == "https",
            let host = url.host,
            !host.isEmpty,
            url.user == nil,
            url.password == nil
        else {
            throw ASCAPIError.invalidResponse
        }
    }

    /// Decide whether a redirect may be followed for the original request.
    /// A redirect of an authenticated request to a different origin is
    /// refused: the caller passes no replacement request to URLSession, so
    /// the task completes with the original 3xx response instead of sending
    /// the Authorization header to another origin. Unauthenticated requests
    /// keep the default URLSession redirect behavior.
    static func allowsAuthenticatedRedirect(
        original: URLRequest?,
        redirected: URLRequest
    ) -> Bool {
        guard let original else {
            // Without the original request the origin cannot be verified,
            // so the redirect is refused.
            return false
        }

        guard
            original.value(
                forHTTPHeaderField: "Authorization"
            ) != nil
        else {
            return true
        }

        guard
            let from = original.url,
            let to = redirected.url
        else {
            return false
        }

        return from.scheme?.lowercased() == to.scheme?.lowercased()
            && from.host == to.host
            && from.port == to.port
    }
}

/// Session-level redirect guard for the default transport. Internal so the
/// offline test suite can drive it through a stubbed URL protocol.
final class ASCRedirectGuardDelegate:
    NSObject,
    URLSessionTaskDelegate,
    @unchecked Sendable
{
    func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void
    ) {
        if ASCAuthorizedRequestGuard.allowsAuthenticatedRedirect(
            original: task.originalRequest,
            redirected: request
        ) {
            completionHandler(request)
        } else {
            completionHandler(nil)
        }
    }
}

public struct URLSessionASCTransport: ASCTransport {
    private let session: URLSession

    public init() {
        self.session = URLSession(
            configuration: .default,
            delegate: ASCRedirectGuardDelegate(),
            delegateQueue: nil
        )
    }

    public func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse) {
        try ASCAuthorizedRequestGuard.validateRequestURL(
            request
        )

        let (data, response) = try await session.data(
            for: request
        )

        guard let response = response as? HTTPURLResponse else {
            throw ASCAPIError.invalidResponse
        }

        return (data, response)
    }
}
