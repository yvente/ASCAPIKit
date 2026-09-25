import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCJWTTests: XCTestCase {
    func testTeamTokenContainsExpectedHeaderAndPayload() throws {
        let key = TestSupport.makePrivateKey()

        let configuration = ASCCredentialConfiguration(
            kind: .team,
            keyID: "KEY123",
            issuerID: "ISSUER123"
        )

        let now = Date(
            timeIntervalSince1970: 1_700_000_000
        )

        let token = try ASCJWT.makeToken(
            configuration: configuration,
            privateKeyPEM: key.pemRepresentation,
            now: now
        )

        let parts = token.split(
            separator: ".",
            omittingEmptySubsequences: false
        )

        XCTAssertEqual(parts.count, 3)

        let header = try TestSupport.decodeJSONObject(parts[0])
        let payload = try TestSupport.decodeJSONObject(parts[1])

        XCTAssertEqual(header["alg"] as? String, "ES256")
        XCTAssertEqual(header["kid"] as? String, "KEY123")
        XCTAssertEqual(header["typ"] as? String, "JWT")

        XCTAssertEqual(
            (payload["iat"] as? NSNumber)?.intValue,
            1_700_000_000
        )
        XCTAssertEqual(
            (payload["exp"] as? NSNumber)?.intValue,
            1_700_000_600
        )
        XCTAssertEqual(
            payload["aud"] as? String,
            "appstoreconnect-v1"
        )
        XCTAssertEqual(
            payload["iss"] as? String,
            "ISSUER123"
        )
        XCTAssertNil(payload["sub"])
    }

    func testIndividualTokenUsesSubAndDoesNotRequireIssuer() throws {
        let key = TestSupport.makePrivateKey()

        let configuration = ASCCredentialConfiguration(
            kind: .individual,
            keyID: "INDIVIDUAL123",
            issuerID: nil
        )

        let token = try ASCJWT.makeToken(
            configuration: configuration,
            privateKeyPEM: key.pemRepresentation,
            now: Date(
                timeIntervalSince1970: 1_700_000_000
            )
        )

        let parts = token.split(
            separator: ".",
            omittingEmptySubsequences: false
        )

        XCTAssertEqual(parts.count, 3)

        let payload = try TestSupport.decodeJSONObject(parts[1])

        XCTAssertEqual(
            payload["sub"] as? String,
            "user"
        )
        XCTAssertNil(payload["iss"])
    }

    func testSignatureCanBeVerifiedByPublicKey() throws {
        let key = TestSupport.makePrivateKey()

        let token = try ASCJWT.makeToken(
            configuration: TestSupport.teamConfiguration(),
            privateKeyPEM: key.pemRepresentation,
            now: Date(
                timeIntervalSince1970: 1_700_000_000
            )
        )

        let parts = token.split(
            separator: ".",
            omittingEmptySubsequences: false
        )

        XCTAssertEqual(parts.count, 3)

        let signingInput = "\(parts[0]).\(parts[1])"

        let signatureData = try TestSupport.decodeBase64URL(
            parts[2]
        )

        let signature = try P256.Signing.ECDSASignature(
            rawRepresentation: signatureData
        )

        XCTAssertTrue(
            key.publicKey.isValidSignature(
                signature,
                for: Data(signingInput.utf8)
            )
        )
    }

    func testEveryTokenSegmentUsesUnpaddedBase64URL() throws {
        let key = TestSupport.makePrivateKey()

        let token = try ASCJWT.makeToken(
            configuration: TestSupport.teamConfiguration(),
            privateKeyPEM: key.pemRepresentation,
            now: Date(
                timeIntervalSince1970: 1_700_000_000
            )
        )

        let parts = token.split(
            separator: ".",
            omittingEmptySubsequences: false
        )

        XCTAssertEqual(parts.count, 3)

        for part in parts {
            XCTAssertFalse(part.contains("="))
            XCTAssertFalse(part.contains("+"))
            XCTAssertFalse(part.contains("/"))
        }
    }

    func testIncompleteCredentialThrowsExpectedError() throws {
        let key = TestSupport.makePrivateKey()

        let configuration = ASCCredentialConfiguration(
            kind: .team,
            keyID: "   ",
            issuerID: "   "
        )

        XCTAssertThrowsError(
            try ASCJWT.makeToken(
                configuration: configuration,
                privateKeyPEM: key.pemRepresentation
            )
        ) { error in
            XCTAssertEqual(
                error as? ASCAPIError,
                .incompleteCredential
            )
        }
    }

    func testInvalidPrivateKeyThrowsExpectedError() {
        let configuration = TestSupport.teamConfiguration()

        XCTAssertThrowsError(
            try ASCJWT.makeToken(
                configuration: configuration,
                privateKeyPEM: "not-a-valid-private-key"
            )
        ) { error in
            XCTAssertEqual(
                error as? ASCAPIError,
                .invalidPrivateKey
            )
        }
    }
}
