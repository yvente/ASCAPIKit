import Foundation
import XCTest

@testable import ASCAPIKit

/// Offline security tests for the default transport's authorized-request
/// boundaries. These tests never reach the real network: rejected requests
/// fail validation before any URLSession I/O, and every potentially dialable
/// URL targets loopback port 1 so a regression cannot leave the machine.
final class ASCTransportSecurityTests: XCTestCase {
    private let loopback = URL(
        string: "https://127.0.0.1:1"
    )!

    private func authorizedRequest(
        _ url: URL,
        token: String = "Bearer test-only-token"
    ) -> URLRequest {
        var request = URLRequest(url: url)
        request.setValue(
            token,
            forHTTPHeaderField: "Authorization"
        )
        return request
    }

    // MARK: - Plaintext HTTP is refused before network I/O

    func testPlainHTTPWithAuthorizationIsRejected() async throws {
        let transport = URLSessionASCTransport()
        let url = URL(string: "http://127.0.0.1:1/v1/apps")!

        do {
            _ = try await transport.send(
                authorizedRequest(url)
            )
            XCTFail("Plaintext HTTP must not carry an Authorization header")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }
    }

    func testPlainHTTPRejectionHappensBeforeTransportIO() throws {
        // The guard must throw synchronously from URL inspection alone.
        let url = URL(string: "http://127.0.0.1:1/v1/apps")!
        XCTAssertThrowsError(
            try ASCAuthorizedRequestGuard.validateRequestURL(
                authorizedRequest(url)
            )
        )
    }

    // MARK: - URL credentials are refused

    func testURLWithUserInformationAndAuthorizationIsRejected() throws {
        let variants = [
            "https://user@127.0.0.1:1/v1/apps",
            "https://user:password@127.0.0.1:1/v1/apps",
            "https://:password@127.0.0.1:1/v1/apps"
        ]

        for candidate in variants {
            let url = try XCTUnwrap(URL(string: candidate))
            XCTAssertThrowsError(
                try ASCAuthorizedRequestGuard.validateAuthorizedURL(url),
                candidate
            ) { error in
                XCTAssertEqual(
                    error as? ASCAPIError,
                    .invalidResponse
                )
            }
        }
    }

    func testMissingHostWithAuthorizationIsRejected() throws {
        let url = try XCTUnwrap(
            URL(string: "https:///v1/apps")
        )
        XCTAssertThrowsError(
            try ASCAuthorizedRequestGuard.validateAuthorizedURL(url)
        ) { error in
            XCTAssertEqual(
                error as? ASCAPIError,
                .invalidResponse
            )
        }
    }

    // MARK: - Normal HTTPS requests are not refused by the new checks

    func testNormalHTTPSAuthorizedURLPassesValidation() throws {
        let urls = [
            URL(string: "https://api.appstoreconnect.apple.com/v1/apps")!,
            URL(string: "https://127.0.0.1:1/v1/apps")!,
            URL(string: "HTTPS://api.appstoreconnect.apple.com/v1/apps")!
        ]

        for url in urls {
            XCTAssertNoThrow(
                try ASCAuthorizedRequestGuard.validateAuthorizedURL(url),
                url.absoluteString
            )
            XCTAssertNoThrow(
                try ASCAuthorizedRequestGuard.validateRequestURL(
                    authorizedRequest(url)
                ),
                url.absoluteString
            )
        }
    }

    func testRequestWithoutAuthorizationHeaderIsNotBlocked() throws {
        var request = URLRequest(
            url: URL(string: "http://127.0.0.1:1/v1/asset")!
        )
        request.setValue(
            "application/octet-stream",
            forHTTPHeaderField: "Content-Type"
        )

        // Unauthenticated requests keep their own existing per-domain
        // boundaries; the new guard does not apply to them.
        XCTAssertNoThrow(
            try ASCAuthorizedRequestGuard.validateRequestURL(request)
        )
    }

    // MARK: - Guard errors carry no token material

    func testGuardErrorContainsNoTokenMaterial() {
        let secret = "Bearer secret-jwt-value"
        let url = URL(string: "http://127.0.0.1:1/v1/apps")!
        var thrown: Error?

        XCTAssertThrowsError(
            try ASCAuthorizedRequestGuard.validateRequestURL(
                authorizedRequest(url, token: secret)
            )
        ) {
            thrown = $0
        }

        let description = String(describing: thrown)
        XCTAssertFalse(description.contains(secret))
        XCTAssertFalse(description.contains("secret-jwt-value"))
    }

    // MARK: - Cross-origin authenticated redirects are refused

    func testAuthenticatedCrossOriginRedirectsAreRefused() throws {
        let original = authorizedRequest(
            URL(string: "https://api.appstoreconnect.apple.com/v1/apps")!
        )

        let crossHost = URLRequest(
            url: URL(string: "https://attacker.example/v1/apps")!
        )
        let crossScheme = URLRequest(
            url: URL(string: "http://api.appstoreconnect.apple.com/v1/apps")!
        )
        let crossPort = URLRequest(
            url: URL(string: "https://api.appstoreconnect.apple.com:8443/v1/apps")!
        )

        for redirected in [crossHost, crossScheme, crossPort] {
            XCTAssertFalse(
                ASCAuthorizedRequestGuard.allowsAuthenticatedRedirect(
                    original: original,
                    redirected: redirected
                ),
                redirected.url?.absoluteString ?? "missing URL"
            )
        }
    }

    func testAuthenticatedSameOriginRedirectIsAllowed() throws {
        let original = authorizedRequest(
            URL(string: "https://api.appstoreconnect.apple.com/v1/apps")!
        )
        let redirected = URLRequest(
            url: URL(
                string: "https://api.appstoreconnect.apple.com/v1/apps?cursor=2"
            )!
        )

        XCTAssertTrue(
            ASCAuthorizedRequestGuard.allowsAuthenticatedRedirect(
                original: original,
                redirected: redirected
            )
        )
    }

    func testUnauthenticatedRedirectKeepsDefaultBehavior() throws {
        let original = URLRequest(
            url: URL(string: "https://cdn.example.com/image")!
        )
        let redirected = URLRequest(
            url: URL(string: "https://other-cdn.example/image")!
        )

        XCTAssertTrue(
            ASCAuthorizedRequestGuard.allowsAuthenticatedRedirect(
                original: original,
                redirected: redirected
            )
        )
    }

    func testRedirectWithUnknowableOriginalIsRefused() throws {
        let redirected = URLRequest(
            url: URL(string: "https://attacker.example/v1/apps")!
        )

        XCTAssertFalse(
            ASCAuthorizedRequestGuard.allowsAuthenticatedRedirect(
                original: nil,
                redirected: redirected
            )
        )
    }

    // MARK: - Catalog transport requires HTTPS

    func testCatalogRequestOverPlainHTTPBaseURLIsRejected() async throws {
        let transport = StubTransport(responses: [])
        let client = try ASCClient(
            configuration: TestSupport.teamConfiguration(),
            privateKeyPEM: TestSupport.makePrivateKey().pemRepresentation,
            transport: transport,
            baseURL: URL(string: "http://127.0.0.1:1")!
        )
        let op = try XCTUnwrap(
            ASCOpenAPICatalog.all.first {
                $0.method == "GET" && $0.pathTemplate == "/v1/apps/{id}"
            }
        )

        do {
            _ = try await client.ascOpenAPI(
                op,
                pathParameters: ["id": "APP-1"]
            )
            XCTFail("HTTP catalog request must be refused")
        } catch let error as ASCAPIError {
            XCTAssertEqual(error, .invalidResponse)
        }

        let recorded = await transport.recordedRequests()
        XCTAssertTrue(recorded.isEmpty)
    }
}

/// Offline URLProtocol stub that answers the first request with a redirect
/// to a cross-origin target and records whether the target is ever served.
/// The URLSession redirect pipeline (including the session delegate) runs
/// normally above the protocol layer, so the real redirect guard can be
/// exercised without any network I/O.
private final class RedirectStubURLProtocol: URLProtocol {
    static let redirectTarget = URL(
        string: "https://attacker.example/target"
    )!

    private static let lock = NSLock()
    private static var targetHits = 0

    static func resetTargetHits() {
        lock.lock()
        defer { lock.unlock() }
        targetHits = 0
    }

    static func recordedTargetHits() -> Int {
        lock.lock()
        defer { lock.unlock() }
        return targetHits
    }

    override class func canInit(
        with request: URLRequest
    ) -> Bool {
        true
    }

    override class func canonicalRequest(
        for request: URLRequest
    ) -> URLRequest {
        request
    }

    override func startLoading() {
        let isTarget = request.url == Self.redirectTarget

        Self.lock.lock()
        if isTarget {
            Self.targetHits += 1
        }
        Self.lock.unlock()

        if isTarget {
            let response = HTTPURLResponse(
                url: request.url!,
                statusCode: 200,
                httpVersion: "HTTP/1.1",
                headerFields: ["Content-Length": "2"]
            )!
            client?.urlProtocol(
                self,
                didReceive: response,
                cacheStoragePolicy: .notAllowed
            )
            client?.urlProtocol(self, didLoad: Data("hi".utf8))
            client?.urlProtocolDidFinishLoading(self)
            return
        }

        // Report the redirect explicitly: custom URL protocols drive their
        // own redirect handling, and this routes the follow-up request back
        // through the session's normal redirect pipeline, including the
        // session delegate. The 302 is also delivered as a normal response
        // so the task has a valid final response if the delegate refuses
        // the redirect.
        let redirectResponse = HTTPURLResponse(
            url: request.url!,
            statusCode: 302,
            httpVersion: "HTTP/1.1",
            headerFields: [
                "Location": Self.redirectTarget.absoluteString,
                "Content-Length": "0"
            ]
        )!
        let redirectRequest = URLRequest(url: Self.redirectTarget)
        client?.urlProtocol(
            self,
            wasRedirectedTo: redirectRequest,
            redirectResponse: redirectResponse
        )
        client?.urlProtocol(
            self,
            didReceive: redirectResponse,
            cacheStoragePolicy: .notAllowed
        )
        client?.urlProtocol(self, didLoad: Data())
        client?.urlProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}
}

extension ASCTransportSecurityTests {
    /// End-to-end offline check through the real URLSession redirect
    /// machinery: an authenticated request whose redirect crosses origins
    /// is not followed, and the redirect target is never requested.
    func testAuthenticatedRedirectRefusedEndToEnd() async throws {
        RedirectStubURLProtocol.resetTargetHits()

        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [RedirectStubURLProtocol.self]
        let session = URLSession(
            configuration: configuration,
            delegate: ASCRedirectGuardDelegate(),
            delegateQueue: nil
        )
        defer { session.finishTasksAndInvalidate() }

        var request = URLRequest(
            url: URL(string: "https://api.appstoreconnect.apple.com/v1/apps")!
        )
        request.setValue(
            "Bearer test-only-token",
            forHTTPHeaderField: "Authorization"
        )

        let (data, response) = try await session.data(for: request)

        let http = try XCTUnwrap(response as? HTTPURLResponse)
        XCTAssertEqual(http.statusCode, 302)
        XCTAssertEqual(data.count, 0)
        XCTAssertEqual(
            RedirectStubURLProtocol.recordedTargetHits(),
            0,
            "Cross-origin redirect target must never be requested"
        )
    }

    /// Control case: the same redirect without an Authorization header keeps
    /// the default URLSession behavior and is followed. This also proves the
    /// stub's redirect machinery works, so the refused case above is
    /// meaningful.
    func testUnauthenticatedRedirectFollowedEndToEnd() async throws {
        RedirectStubURLProtocol.resetTargetHits()

        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [RedirectStubURLProtocol.self]
        let session = URLSession(
            configuration: configuration,
            delegate: ASCRedirectGuardDelegate(),
            delegateQueue: nil
        )
        defer { session.finishTasksAndInvalidate() }

        let request = URLRequest(
            url: URL(string: "https://api.appstoreconnect.apple.com/v1/apps")!
        )

        let (data, response) = try await session.data(for: request)

        let http = try XCTUnwrap(response as? HTTPURLResponse)
        XCTAssertEqual(http.statusCode, 200)
        XCTAssertEqual(data, Data("hi".utf8))
        XCTAssertEqual(
            RedirectStubURLProtocol.recordedTargetHits(),
            1
        )
    }
}
