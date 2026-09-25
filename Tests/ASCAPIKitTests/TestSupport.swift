import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

actor StubTransport: ASCTransport {
    struct StubResponse: Sendable {
        let data: Data
        let statusCode: Int

        init(
            data: Data,
            statusCode: Int = 200
        ) {
            self.data = data
            self.statusCode = statusCode
        }
    }

    enum StubError: Error {
        case exhausted
        case invalidRequestURL
        case invalidHTTPResponse
    }

    private var responses: [StubResponse]
    private var requests: [URLRequest] = []

    init(
        responses: [StubResponse]
    ) {
        self.responses = responses
    }

    func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse) {
        requests.append(request)

        guard !responses.isEmpty else {
            throw StubError.exhausted
        }

        let stub = responses.removeFirst()

        guard let url = request.url else {
            throw StubError.invalidRequestURL
        }

        guard let response = HTTPURLResponse(
            url: url,
            statusCode: stub.statusCode,
            httpVersion: nil,
            headerFields: nil
        ) else {
            throw StubError.invalidHTTPResponse
        }

        return (
            stub.data,
            response
        )
    }

    func recordedRequests() -> [URLRequest] {
        requests
    }
}

enum TestSupport {
    static let defaultBaseURL = URL(
        string: "https://api.appstoreconnect.apple.com"
    )!

    static func makePrivateKey() -> P256.Signing.PrivateKey {
        P256.Signing.PrivateKey()
    }

    static func teamConfiguration(
        keyID: String = "TESTKEY123",
        issuerID: String = "00000000-0000-0000-0000-000000000000"
    ) -> ASCCredentialConfiguration {
        ASCCredentialConfiguration(
            kind: .team,
            keyID: keyID,
            issuerID: issuerID
        )
    }

    static func makeClient(
        transport: any ASCTransport,
        key: P256.Signing.PrivateKey
    ) throws -> ASCClient {
        try ASCClient(
            configuration: teamConfiguration(),
            privateKeyPEM: key.pemRepresentation,
            transport: transport,
            baseURL: defaultBaseURL
        )
    }

    static func jsonData(
        _ object: Any
    ) throws -> Data {
        try JSONSerialization.data(
            withJSONObject: object,
            options: [.sortedKeys]
        )
    }

    static func page(
        _ resources: [[String: Any]],
        next: String? = nil
    ) throws -> Data {
        var object: [String: Any] = [
            "data": resources
        ]

        if let next {
            object["links"] = [
                "next": next
            ]
        }

        return try jsonData(object)
    }

    static func single(
        _ resource: [String: Any]
    ) throws -> Data {
        try jsonData([
            "data": resource
        ])
    }

    static func errorResponse(
        details: [String?]
    ) throws -> Data {
        let errors: [[String: Any]] = details.map { detail in
            if let detail {
                return ["detail": detail]
            } else {
                return [:]
            }
        }

        return try jsonData([
            "errors": errors
        ])
    }

    static func decodeBase64URL(
        _ value: Substring
    ) throws -> Data {
        var base64 = String(value)
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")

        let remainder = base64.count % 4

        if remainder != 0 {
            base64 += String(
                repeating: "=",
                count: 4 - remainder
            )
        }

        guard let data = Data(base64Encoded: base64) else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: [],
                    debugDescription: "Invalid base64url input"
                )
            )
        }

        return data
    }

    static func decodeJSONObject(
        _ segment: Substring
    ) throws -> [String: Any] {
        let data = try decodeBase64URL(segment)

        guard let object = try JSONSerialization.jsonObject(
            with: data
        ) as? [String: Any] else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: [],
                    debugDescription: "Expected JSON object"
                )
            )
        }

        return object
    }

    static func queryItems(
        for request: URLRequest
    ) throws -> [String: String] {
        guard
            let url = request.url,
            let components = URLComponents(
                url: url,
                resolvingAgainstBaseURL: false
            )
        else {
            throw StubTransport.StubError.invalidRequestURL
        }

        return Dictionary(
            uniqueKeysWithValues: (components.queryItems ?? []).map {
                ($0.name, $0.value ?? "")
            }
        )
    }
}

struct TestResource: Codable, Equatable, Sendable {
    let id: String
}
