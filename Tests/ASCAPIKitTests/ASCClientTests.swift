import CryptoKit
import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCClientTests: XCTestCase {
    func testGenericListBuildsFieldsAndLimitQuery() async throws {
        let data = try TestSupport.page([
            ["id": "1"]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: data)
            ]
        )

        let key = TestSupport.makePrivateKey()

        let client = try TestSupport.makeClient(
            transport: transport,
            key: key
        )

        let resources: [TestResource] = try await client.list(
            "/v1/exampleResources",
            resourceType: "exampleResources",
            fields: "name,value",
            limit: 42
        )

        XCTAssertEqual(
            resources,
            [TestResource(id: "1")]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)
        let query = try TestSupport.queryItems(for: request)

        XCTAssertEqual(
            query["limit"],
            "42"
        )
        XCTAssertEqual(
            query["fields[exampleResources]"],
            "name,value"
        )
    }

    func testPaginationCombinesMultiplePages() async throws {
        let secondURL =
            "https://api.appstoreconnect.apple.com/v1/exampleResources?cursor=2"

        let firstPage = try TestSupport.page(
            [
                ["id": "1"],
                ["id": "2"]
            ],
            next: secondURL
        )

        let secondPage = try TestSupport.page([
            ["id": "3"]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: firstPage),
                .init(data: secondPage)
            ]
        )

        let key = TestSupport.makePrivateKey()

        let client = try TestSupport.makeClient(
            transport: transport,
            key: key
        )

        let resources: [TestResource] = try await client.list(
            "/v1/exampleResources",
            resourceType: "exampleResources",
            fields: "name"
        )

        XCTAssertEqual(
            resources.map(\.id),
            ["1", "2", "3"]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 2)
        XCTAssertEqual(
            requests[1].url?.absoluteString,
            secondURL
        )
    }

    func testUnsafePaginationURLsAreRejected() async throws {
        let unsafeURLs = [
            "http://api.appstoreconnect.apple.com/v1/exampleResources?cursor=2",
            "https://example.com/v1/exampleResources?cursor=2",
            "https://api.appstoreconnect.apple.com/v2/exampleResources?cursor=2"
        ]

        let key = TestSupport.makePrivateKey()

        for next in unsafeURLs {
            let page = try TestSupport.page(
                [
                    ["id": "1"]
                ],
                next: next
            )

            let transport = StubTransport(
                responses: [
                    .init(data: page)
                ]
            )

            let client = try TestSupport.makeClient(
                transport: transport,
                key: key
            )

            do {
                let _: [TestResource] = try await client.list(
                    "/v1/exampleResources",
                    resourceType: "exampleResources",
                    fields: "name"
                )

                XCTFail(
                    "Expected unsafePaginationURL"
                )
            } catch {
                XCTAssertEqual(
                    error as? ASCAPIError,
                    .unsafePaginationURL
                )
            }

            let requests = await transport.recordedRequests()

            XCTAssertEqual(
                requests.count,
                1
            )
        }
    }

    func testPaginationRejectsEmbeddedCredentials() async throws {
        let page = try TestSupport.page(
            [
                ["id": "1"]
            ],
            next:
                "https://user:password@api.appstoreconnect.apple.com/v1/exampleResources?cursor=2"
        )

        let transport = StubTransport(
            responses: [
                .init(data: page)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            let _: [TestResource] = try await client.list(
                "/v1/exampleResources",
                resourceType: "exampleResources",
                fields: "name"
            )

            XCTFail("Expected unsafePaginationURL")
        } catch {
            XCTAssertEqual(
                error as? ASCAPIError,
                .unsafePaginationURL
            )
        }
    }

    func testPaginationLoopIsRejected() async throws {
        let repeatedURL =
            "https://api.appstoreconnect.apple.com/v1/exampleResources?cursor=2"

        let firstPage = try TestSupport.page(
            [
                ["id": "1"]
            ],
            next: repeatedURL
        )

        let secondPage = try TestSupport.page(
            [
                ["id": "2"]
            ],
            next: repeatedURL
        )

        let transport = StubTransport(
            responses: [
                .init(data: firstPage),
                .init(data: secondPage)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            let _: [TestResource] = try await client.list(
                "/v1/exampleResources",
                resourceType: "exampleResources",
                fields: "name"
            )

            XCTFail("Expected invalidResponse")
        } catch {
            XCTAssertEqual(
                error as? ASCAPIError,
                .invalidResponse
            )
        }

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.count,
            2
        )
    }

    func testHTTPStatusClassificationAndDetailPassThrough() async throws {
        let testCases: [
            (
                status: Int,
                details: [String?],
                expected: ASCAPIError
            )
        ] = [
            (
                401,
                ["Authentication failed"],
                .unauthorized
            ),
            (
                403,
                ["Permission A", "Permission B"],
                .forbidden("Permission A; Permission B")
            ),
            (
                429,
                ["Too many requests"],
                .rateLimited
            ),
            (
                500,
                ["Internal detail"],
                .serviceError(
                    500,
                    "Internal detail"
                )
            ),
            (
                503,
                [nil],
                .serviceError(
                    503,
                    ""
                )
            )
        ]

        let key = TestSupport.makePrivateKey()

        for testCase in testCases {
            let data = try TestSupport.errorResponse(
                details: testCase.details
            )

            let transport = StubTransport(
                responses: [
                    .init(
                        data: data,
                        statusCode: testCase.status
                    )
                ]
            )

            let client = try TestSupport.makeClient(
                transport: transport,
                key: key
            )

            do {
                let _: [TestResource] = try await client.list(
                    "/v1/exampleResources",
                    resourceType: "exampleResources",
                    fields: "name"
                )

                XCTFail("Expected request to fail")
            } catch {
                XCTAssertEqual(
                    error as? ASCAPIError,
                    testCase.expected
                )
            }
        }
    }

    func testForbiddenCanCarryEmptyRawDetail() async throws {
        let data = try TestSupport.errorResponse(
            details: [nil]
        )

        let transport = StubTransport(
            responses: [
                .init(
                    data: data,
                    statusCode: 403
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            let _: [TestResource] = try await client.list(
                "/v1/exampleResources",
                resourceType: "exampleResources",
                fields: "name"
            )

            XCTFail("Expected request to fail")
        } catch {
            XCTAssertEqual(
                error as? ASCAPIError,
                .forbidden("")
            )
        }
    }

    func testAuthorizationHeaderContainsConstructedJWT() async throws {
        let data = try TestSupport.page([
            ["id": "1"]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: data)
            ]
        )

        let key = TestSupport.makePrivateKey()

        let client = try TestSupport.makeClient(
            transport: transport,
            key: key
        )

        let _: [TestResource] = try await client.list(
            "/v1/exampleResources",
            resourceType: "exampleResources",
            fields: "name"
        )

        let requests = await transport.recordedRequests()
        let request = try XCTUnwrap(requests.first)

        guard let authorization = request.value(
            forHTTPHeaderField: "Authorization"
        ) else {
            return XCTFail(
                "Missing Authorization header"
            )
        }

        XCTAssertTrue(
            authorization.hasPrefix("Bearer ")
        )

        let token = authorization.dropFirst(
            "Bearer ".count
        )

        let parts = token.split(
            separator: ".",
            omittingEmptySubsequences: false
        )

        XCTAssertEqual(parts.count, 3)

        let header = try TestSupport.decodeJSONObject(
            parts[0]
        )

        XCTAssertEqual(
            header["kid"] as? String,
            "TESTKEY123"
        )

        let signingInput =
            "\(parts[0]).\(parts[1])"

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

    func testTypedReadConveniencesUseExpectedEndpointsAndFields() async throws {
        let responses: [StubTransport.StubResponse] = [
            .init(
                data: try TestSupport.page([
                    [
                        "id": "app-1",
                        "attributes": [
                            "name": "Example",
                            "bundleId": "com.example.app",
                            "primaryLocale": "en-US"
                        ]
                    ]
                ])
            ),
            .init(
                data: try TestSupport.page([
                    [
                        "id": "version-1",
                        "attributes": [
                            "platform": "IOS",
                            "versionString": "1.0",
                            "appVersionState": "READY_FOR_SALE"
                        ]
                    ]
                ])
            ),
            .init(
                data: try TestSupport.page([
                    [
                        "id": "info-1",
                        "attributes": [
                            "state": "READY_FOR_SALE"
                        ]
                    ]
                ])
            ),
            .init(
                data: try TestSupport.page([
                    [
                        "id": "version-localization-1",
                        "attributes": [
                            "locale": "en-US",
                            "keywords": "one,two",
                            "promotionalText": "Promo",
                            "description": "Description",
                            "whatsNew": "Changes"
                        ]
                    ]
                ])
            ),
            .init(
                data: try TestSupport.page([
                    [
                        "id": "info-localization-1",
                        "attributes": [
                            "locale": "en-US",
                            "name": "Example",
                            "subtitle": "Subtitle"
                        ]
                    ]
                ])
            )
        ]

        let transport = StubTransport(
            responses: responses
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.listApps()
        _ = try await client.listVersions(
            appID: "app-1"
        )
        _ = try await client.listAppInfos(
            appID: "app-1"
        )
        _ = try await client.listVersionLocalizations(
            versionID: "version-1"
        )
        _ = try await client.listAppInfoLocalizations(
            appInfoID: "info-1"
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.map(\.url?.path),
            [
                "/v1/apps",
                "/v1/apps/app-1/appStoreVersions",
                "/v1/apps/app-1/appInfos",
                "/v1/appStoreVersions/version-1/appStoreVersionLocalizations",
                "/v1/appInfos/info-1/appInfoLocalizations"
            ]
        )

        let expectedFields: [
            (
                key: String,
                value: String
            )
        ] = [
            (
                "fields[apps]",
                "name,bundleId,primaryLocale"
            ),
            (
                "fields[appStoreVersions]",
                "platform,versionString,appVersionState"
            ),
            (
                "fields[appInfos]",
                "state"
            ),
            (
                "fields[appStoreVersionLocalizations]",
                "locale,keywords,promotionalText,description,whatsNew"
            ),
            (
                "fields[appInfoLocalizations]",
                "locale,name,subtitle"
            )
        ]

        for index in requests.indices {
            XCTAssertEqual(
                requests[index].httpMethod,
                "GET"
            )

            let query = try TestSupport.queryItems(
                for: requests[index]
            )

            XCTAssertEqual(
                query[expectedFields[index].key],
                expectedFields[index].value
            )
        }
    }

    func testMutationConveniencesUseExpectedJSONAPIBodies() async throws {
        let appInfoLocalizationResponse =
            try TestSupport.single([
                "id": "ail-1",
                "attributes": [
                    "locale": "en-US",
                    "name": "Name",
                    "subtitle": "Subtitle"
                ]
            ])

        let versionLocalizationResponse =
            try TestSupport.single([
                "id": "vl-1",
                "attributes": [
                    "locale": "en-US",
                    "keywords": "one,two",
                    "promotionalText": "Promo",
                    "description": "Description",
                    "whatsNew": "Changes"
                ]
            ])

        let transport = StubTransport(
            responses: [
                .init(
                    data: appInfoLocalizationResponse
                ),
                .init(
                    data: versionLocalizationResponse
                ),
                .init(
                    data: appInfoLocalizationResponse
                ),
                .init(
                    data: versionLocalizationResponse
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        _ = try await client.updateAppInfoLocalization(
            id: "ail-1",
            attributes: [
                "name": "Updated"
            ]
        )

        _ = try await client.updateVersionLocalization(
            id: "vl-1",
            attributes: [
                "description": "Updated description"
            ]
        )

        _ = try await client.createAppInfoLocalization(
            appInfoID: "info-1",
            locale: "fr-FR",
            attributes: [
                "name": "Nom"
            ]
        )

        _ = try await client.createVersionLocalization(
            versionID: "version-1",
            locale: "de-DE",
            attributes: [
                "keywords": "eins,zwei"
            ]
        )

        let requests = await transport.recordedRequests()

        XCTAssertEqual(
            requests.map(\.httpMethod),
            [
                "PATCH",
                "PATCH",
                "POST",
                "POST"
            ]
        )

        XCTAssertEqual(
            requests.map(\.url?.path),
            [
                "/v1/appInfoLocalizations/ail-1",
                "/v1/appStoreVersionLocalizations/vl-1",
                "/v1/appInfoLocalizations",
                "/v1/appStoreVersionLocalizations"
            ]
        )

        try assertPatchBody(
            request: requests[0],
            type: "appInfoLocalizations",
            id: "ail-1",
            expectedAttributes: [
                "name": "Updated"
            ]
        )

        try assertPatchBody(
            request: requests[1],
            type: "appStoreVersionLocalizations",
            id: "vl-1",
            expectedAttributes: [
                "description": "Updated description"
            ]
        )

        try assertPostBody(
            request: requests[2],
            type: "appInfoLocalizations",
            expectedAttributes: [
                "locale": "fr-FR",
                "name": "Nom"
            ],
            relationshipName: "appInfo",
            relationshipType: "appInfos",
            relationshipID: "info-1"
        )

        try assertPostBody(
            request: requests[3],
            type: "appStoreVersionLocalizations",
            expectedAttributes: [
                "locale": "de-DE",
                "keywords": "eins,zwei"
            ],
            relationshipName: "appStoreVersion",
            relationshipType: "appStoreVersions",
            relationshipID: "version-1"
        )

        for request in requests {
            XCTAssertEqual(
                request.value(
                    forHTTPHeaderField: "Accept"
                ),
                "application/json"
            )

            XCTAssertEqual(
                request.value(
                    forHTTPHeaderField: "Content-Type"
                ),
                "application/json"
            )
        }
    }

    func testInvalidListResponseThrowsInvalidResponse() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data("not-json".utf8)
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            let _: [TestResource] = try await client.list(
                "/v1/exampleResources",
                resourceType: "exampleResources",
                fields: "name"
            )

            XCTFail("Expected invalidResponse")
        } catch {
            XCTAssertEqual(
                error as? ASCAPIError,
                .invalidResponse
            )
        }
    }

    func testInvalidMutationResponseThrowsInvalidResponse() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data("not-json".utf8)
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        do {
            let _: TestResource = try await client.mutate(
                method: "PATCH",
                path: "/v1/exampleResources/resource-1",
                resourceType: "exampleResources",
                id: "resource-1",
                attributes: [
                    "name": "Updated"
                ]
            )

            XCTFail("Expected invalidResponse")
        } catch {
            XCTAssertEqual(
                error as? ASCAPIError,
                .invalidResponse
            )
        }
    }

    private func assertPatchBody(
        request: URLRequest,
        type: String,
        id: String,
        expectedAttributes: [String: String],
        file: StaticString = #filePath,
        line: UInt = #line
    ) throws {
        let body = try XCTUnwrap(
            request.httpBody,
            file: file,
            line: line
        )

        let root = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: body
            ) as? [String: Any],
            file: file,
            line: line
        )

        let data = try XCTUnwrap(
            root["data"] as? [String: Any],
            file: file,
            line: line
        )

        XCTAssertEqual(
            data["type"] as? String,
            type,
            file: file,
            line: line
        )

        XCTAssertEqual(
            data["id"] as? String,
            id,
            file: file,
            line: line
        )

        XCTAssertEqual(
            data["attributes"] as? [String: String],
            expectedAttributes,
            file: file,
            line: line
        )

        XCTAssertNil(
            data["relationships"],
            file: file,
            line: line
        )
    }

    private func assertPostBody(
        request: URLRequest,
        type: String,
        expectedAttributes: [String: String],
        relationshipName: String,
        relationshipType: String,
        relationshipID: String,
        file: StaticString = #filePath,
        line: UInt = #line
    ) throws {
        let body = try XCTUnwrap(
            request.httpBody,
            file: file,
            line: line
        )

        let root = try XCTUnwrap(
            try JSONSerialization.jsonObject(
                with: body
            ) as? [String: Any],
            file: file,
            line: line
        )

        let data = try XCTUnwrap(
            root["data"] as? [String: Any],
            file: file,
            line: line
        )

        XCTAssertEqual(
            data["type"] as? String,
            type,
            file: file,
            line: line
        )

        XCTAssertNil(
            data["id"],
            file: file,
            line: line
        )

        XCTAssertEqual(
            data["attributes"] as? [String: String],
            expectedAttributes,
            file: file,
            line: line
        )

        let relationships = try XCTUnwrap(
            data["relationships"] as? [String: Any],
            file: file,
            line: line
        )

        let relationship = try XCTUnwrap(
            relationships[relationshipName] as? [String: Any],
            file: file,
            line: line
        )

        let relationshipData = try XCTUnwrap(
            relationship["data"] as? [String: Any],
            file: file,
            line: line
        )

        XCTAssertEqual(
            relationshipData["type"] as? String,
            relationshipType,
            file: file,
            line: line
        )

        XCTAssertEqual(
            relationshipData["id"] as? String,
            relationshipID,
            file: file,
            line: line
        )
    }
}
