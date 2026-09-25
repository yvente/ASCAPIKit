import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCModelsTests: XCTestCase {
    func testCredentialConfigurationNormalization() {
        let configuration = ASCCredentialConfiguration(
            kind: .team,
            keyID: "  KEY123 \n",
            issuerID: "\n ISSUER123  "
        )

        let normalized = configuration.normalized()

        XCTAssertEqual(
            normalized.keyID,
            "KEY123"
        )
        XCTAssertEqual(
            normalized.issuerID,
            "ISSUER123"
        )
        XCTAssertTrue(normalized.isComplete)
    }

    func testTeamCredentialRequiresIssuer() {
        let configuration = ASCCredentialConfiguration(
            kind: .team,
            keyID: "KEY123",
            issuerID: nil
        )

        XCTAssertFalse(configuration.isComplete)
    }

    func testIndividualCredentialDoesNotRequireIssuer() {
        let configuration = ASCCredentialConfiguration(
            kind: .individual,
            keyID: "KEY123",
            issuerID: nil
        )

        XCTAssertTrue(configuration.isComplete)
    }

    func testResourceModelsRemainCodable() throws {
        let original = ASCApp(
            id: "app-1",
            attributes: ASCApp.Attributes(
                name: "Example",
                bundleId: "com.example.app",
                primaryLocale: "en-US"
            )
        )

        let data = try JSONEncoder().encode(original)
        let decoded = try JSONDecoder().decode(
            ASCApp.self,
            from: data
        )

        XCTAssertEqual(decoded.id, "app-1")
        XCTAssertEqual(
            decoded.attributes.name,
            "Example"
        )
        XCTAssertEqual(
            decoded.attributes.bundleId,
            "com.example.app"
        )
        XCTAssertEqual(
            decoded.attributes.primaryLocale,
            "en-US"
        )
    }
}
