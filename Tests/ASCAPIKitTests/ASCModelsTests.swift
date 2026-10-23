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

    func testVersionDecodesDateAttributesAsWireStrings() throws {
        let data = try TestSupport.jsonData([
            "type": "appStoreVersions",
            "id": "version-1",
            "attributes": [
                "platform": "IOS",
                "versionString": "1.2.3",
                "appVersionState":
                    "READY_FOR_SALE",
                "createdDate":
                    "2026-01-02T03:04:05Z",
                "earliestReleaseDate":
                    "2026-02-03T04:05:06Z"
            ]
        ])

        let version = try JSONDecoder().decode(
            ASCVersion.self,
            from: data
        )

        XCTAssertEqual(
            version.attributes.createdDate,
            "2026-01-02T03:04:05Z"
        )
        XCTAssertEqual(
            version.attributes
                .earliestReleaseDate,
            "2026-02-03T04:05:06Z"
        )
    }

    func testVersionDateAttributesAreNilWhenMissing() throws {
        let data = try TestSupport.jsonData([
            "type": "appStoreVersions",
            "id": "version-1",
            "attributes": [
                "platform": "IOS",
                "versionString": "1.2.3"
            ]
        ])

        let version = try JSONDecoder().decode(
            ASCVersion.self,
            from: data
        )

        XCTAssertNil(version.attributes.createdDate)
        XCTAssertNil(
            version.attributes
                .earliestReleaseDate
        )
    }

    func testVersionDateAttributesAreNilWhenNull() throws {
        let data = try TestSupport.jsonData([
            "type": "appStoreVersions",
            "id": "version-1",
            "attributes": [
                "platform": "IOS",
                "versionString": "1.2.3",
                "createdDate": NSNull(),
                "earliestReleaseDate": NSNull()
            ]
        ])

        let version = try JSONDecoder().decode(
            ASCVersion.self,
            from: data
        )

        XCTAssertNil(version.attributes.createdDate)
        XCTAssertNil(
            version.attributes
                .earliestReleaseDate
        )
    }
}
