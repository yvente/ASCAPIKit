import CryptoKit
import Foundation

public enum ASCJWT {
    public static func makeToken(
        configuration: ASCCredentialConfiguration,
        privateKeyPEM: String,
        now: Date = Date()
    ) throws -> String {
        let configuration = configuration.normalized()

        guard configuration.isComplete else {
            throw ASCAPIError.incompleteCredential
        }

        let key: P256.Signing.PrivateKey

        do {
            key = try P256.Signing.PrivateKey(
                pemRepresentation: privateKeyPEM
            )
        } catch {
            throw ASCAPIError.invalidPrivateKey
        }

        let header: [String: Any] = [
            "alg": "ES256",
            "kid": configuration.keyID,
            "typ": "JWT"
        ]

        let issuedAt = Int(now.timeIntervalSince1970)

        var payload: [String: Any] = [
            "iat": issuedAt,
            "exp": issuedAt + 600,
            "aud": "appstoreconnect-v1"
        ]

        switch configuration.kind {
        case .team:
            payload["iss"] = configuration.issuerID

        case .individual:
            payload["sub"] = "user"
        }

        let signingInput = try "\(encode(header)).\(encode(payload))"
        let signature = try key.signature(
            for: Data(signingInput.utf8)
        )

        return "\(signingInput).\(signature.rawRepresentation.base64URLEncodedString())"
    }

    private static func encode(
        _ value: [String: Any]
    ) throws -> String {
        let data = try JSONSerialization.data(
            withJSONObject: value,
            options: [.sortedKeys]
        )

        return data.base64URLEncodedString()
    }
}

private extension Data {
    func base64URLEncodedString() -> String {
        base64EncodedString()
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "=", with: "")
    }
}
