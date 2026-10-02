import Foundation
import XCTest

@testable import ASCAPIKit

final class ASCPreviewDownloadTests: XCTestCase {
    func testPreviewFrameImageDecodesModernImageAndState() throws {
        let json = """
        {
          "image": {
            "templateUrl":
              "https://cdn.example.com/frame/{w}x{h}bb.{f}",
            "width": 1320,
            "height": 2868
          },
          "state": {
            "errors": null,
            "warnings": null,
            "state": "COMPLETE"
          }
        }
        """

        let frame = try JSONDecoder().decode(
            ASCPreviewFrameImage.self,
            from: Data(json.utf8)
        )

        let image = try XCTUnwrap(frame.image)

        XCTAssertEqual(
            image.templateURL,
            "https://cdn.example.com/frame/{w}x{h}bb.{f}"
        )
        XCTAssertEqual(image.width, 1320)
        XCTAssertEqual(image.height, 2868)
        XCTAssertEqual(frame.state?.state, "COMPLETE")
    }

    func testPreviewFrameImageStateDecodesProcessing() throws {
        let json = """
        {
          "errors": null,
          "warnings": null,
          "state": "PROCESSING"
        }
        """

        let state = try JSONDecoder().decode(
            ASCPreviewFrameImageState.self,
            from: Data(json.utf8)
        )

        XCTAssertEqual(state.state, "PROCESSING")
        XCTAssertNil(state.errors)
        XCTAssertNil(state.warnings)
    }

    func testGetPreviewDecodesPreviewFrameImage() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: try TestSupport.single([
                    "type": "appPreviews",
                    "id": "PREVIEW_ID",
                    "attributes": [
                        "videoUrl":
                            "https://video.example.com/preview.mp4",
                        "previewFrameImage": [
                            "image": [
                                "templateUrl":
                                    "https://cdn.example.com/frame/{w}x{h}bb.{f}",
                                "width": 1320,
                                "height": 2868
                            ],
                            "state": [
                                "state": "COMPLETE"
                            ]
                        ]
                    ]
                ]))
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = try await client.getPreview(id: "PREVIEW_ID")

        XCTAssertEqual(preview.id, "PREVIEW_ID")
        XCTAssertEqual(
            preview.attributes.videoURL,
            "https://video.example.com/preview.mp4"
        )

        let frame = try XCTUnwrap(
            preview.attributes.previewFrameImage
        )

        let image = try XCTUnwrap(frame.image)

        XCTAssertEqual(
            image.templateURL,
            "https://cdn.example.com/frame/{w}x{h}bb.{f}"
        )
        XCTAssertEqual(image.width, 1320)
        XCTAssertEqual(image.height, 2868)
        XCTAssertEqual(frame.state?.state, "COMPLETE")
    }

    func testDownloadPreviewVideoReturnsDataWithoutBearerToken() async throws {
        let expected = Data(
            [0x00, 0x01, 0x02, 0x03]
        )

        let transport = StubTransport(
            responses: [
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: "https://cdn.example.com/preview.mp4",
            videoState: "PROCESSING"
        )

        let data = try await client.downloadPreviewVideo(
            preview
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        XCTAssertEqual(
            request.url?.absoluteString,
            "https://cdn.example.com/preview.mp4"
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testDownloadPreviewVideoFailsWhenVideoUnavailable() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: nil
        )

        do {
            _ = try await client.downloadPreviewVideo(
                preview
            )

            XCTFail("Expected videoUnavailable")
        } catch let error as ASCPreviewDownloadError {
            XCTAssertEqual(error, .videoUnavailable)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testDownloadPreviewVideoRejectsHTTP() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: "http://cdn.example.com/preview.mp4"
        )

        do {
            _ = try await client.downloadPreviewVideo(
                preview
            )

            XCTFail("Expected unsafeVideoURL")
        } catch let error as ASCPreviewDownloadError {
            XCTAssertEqual(error, .unsafeVideoURL)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testDownloadPreviewVideoRejectsCredentials() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL:
                "https://user:password@cdn.example.com/preview.mp4"
        )

        do {
            _ = try await client.downloadPreviewVideo(
                preview
            )

            XCTFail("Expected unsafeVideoURL")
        } catch let error as ASCPreviewDownloadError {
            XCTAssertEqual(error, .unsafeVideoURL)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testDownloadPreviewVideoMapsNon2xx() async throws {
        let transport = StubTransport(
            responses: [
                .init(
                    data: Data(),
                    statusCode: 404
                )
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: "https://cdn.example.com/preview.mp4"
        )

        do {
            _ = try await client.downloadPreviewVideo(
                preview
            )

            XCTFail("Expected downloadFailed(404)")
        } catch let error as ASCPreviewDownloadError {
            XCTAssertEqual(error, .downloadFailed(404))
        }
    }

    func testDownloadPreviewVideoRejectsEmptyResponse() async throws {
        let transport = StubTransport(
            responses: [
                .init(data: Data())
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: "https://cdn.example.com/preview.mp4"
        )

        do {
            _ = try await client.downloadPreviewVideo(
                preview
            )

            XCTFail("Expected emptyResponse")
        } catch let error as ASCPreviewDownloadError {
            XCTAssertEqual(error, .emptyResponse)
        }
    }

    func testDownloadPreviewVideoIDFetchesMetadataThenDownloadsWithoutBearer() async throws {
        let expected = Data(
            [0x00, 0x01, 0x02, 0x03]
        )

        let metadata = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
                "fileSize": 1000,
                "videoUrl":
                    "https://cdn.example.com/preview.mp4"
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: metadata),
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let data = try await client.downloadPreviewVideo(
            id: "PREVIEW_ID"
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 2)

        let metadataRequest = requests[0]

        XCTAssertEqual(
            metadataRequest.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            metadataRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            metadataRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let videoRequest = requests[1]

        XCTAssertEqual(
            videoRequest.url?.absoluteString,
            "https://cdn.example.com/preview.mp4"
        )
        XCTAssertEqual(
            videoRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            videoRequest.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testDownloadPreviewFrameImageUsesExistingImageAsset() async throws {
        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let transport = StubTransport(
            responses: [
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: "https://cdn.example.com/preview.mp4",
            previewFrameImage: makeFrame(
                state: "PROCESSING"
            )
        )

        let data = try await client.downloadPreviewFrameImage(
            preview,
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)

        let request = try XCTUnwrap(requests.first)

        XCTAssertEqual(
            request.httpMethod,
            "GET"
        )

        XCTAssertEqual(
            request.url?.absoluteString,
            "https://cdn.example.com/frame/1320x2868bb.png"
        )

        XCTAssertTrue(
            request.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testDownloadPreviewFrameImageFailsWhenUnavailable() async throws {
        let transport = StubTransport(responses: [])

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let noFrame = makePreview(
            videoURL: nil
        )

        do {
            _ = try await client.downloadPreviewFrameImage(
                noFrame,
                format: .png
            )

            XCTFail("Expected imageUnavailable")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .imageUnavailable)
        }

        let emptyFrame = makePreview(
            videoURL: nil,
            previewFrameImage: ASCPreviewFrameImage(
                image: nil,
                state: nil
            )
        )

        do {
            _ = try await client.downloadPreviewFrameImage(
                emptyFrame,
                format: .png
            )

            XCTFail("Expected imageUnavailable")
        } catch let error as ASCImageDownloadError {
            XCTAssertEqual(error, .imageUnavailable)
        }

        let requests = await transport.recordedRequests()

        XCTAssertTrue(requests.isEmpty)
    }

    func testDownloadPreviewFrameImageIDFetchesMetadataThenDownloadsWithoutBearer() async throws {
        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let metadata = try TestSupport.single([
            "type": "appPreviews",
            "id": "PREVIEW_ID",
            "attributes": [
                "fileName": "preview.mp4",
                "fileSize": 1000,
                "previewFrameImage": [
                    "image": [
                        "templateUrl":
                            "https://cdn.example.com/frame/{w}x{h}bb.{f}",
                        "width": 1320,
                        "height": 2868
                    ],
                    "state": [
                        "state": "COMPLETE"
                    ]
                ]
            ]
        ])

        let transport = StubTransport(
            responses: [
                .init(data: metadata),
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let data = try await client.downloadPreviewFrameImage(
            id: "PREVIEW_ID",
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 2)

        let metadataRequest = requests[0]

        XCTAssertEqual(
            metadataRequest.url?.path,
            "/v1/appPreviews/PREVIEW_ID"
        )
        XCTAssertEqual(
            metadataRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            metadataRequest.value(forHTTPHeaderField: "Authorization") != nil
        )

        let imageRequest = requests[1]

        XCTAssertEqual(
            imageRequest.url?.absoluteString,
            "https://cdn.example.com/frame/1320x2868bb.png"
        )
        XCTAssertEqual(
            imageRequest.httpMethod,
            "GET"
        )
        XCTAssertTrue(
            imageRequest.value(forHTTPHeaderField: "Authorization") == nil
        )
    }

    func testFrameImageDownloadNotGatedByProcessingState() async throws {
        let expected = Data(
            [0x89, 0x50, 0x4E, 0x47]
        )

        let transport = StubTransport(
            responses: [
                .init(data: expected)
            ]
        )

        let client = try TestSupport.makeClient(
            transport: transport,
            key: TestSupport.makePrivateKey()
        )

        let preview = makePreview(
            videoURL: nil,
            previewFrameImage: makeFrame(
                state: "PROCESSING"
            )
        )

        XCTAssertEqual(
            preview.attributes
                .previewFrameImage?
                .state?
                .state,
            "PROCESSING"
        )

        let data = try await client.downloadPreviewFrameImage(
            preview,
            format: .png
        )

        XCTAssertEqual(data, expected)

        let requests = await transport.recordedRequests()

        XCTAssertEqual(requests.count, 1)
    }

    private func makeFrame(
        state: String?
    ) -> ASCPreviewFrameImage {
        ASCPreviewFrameImage(
            image: ASCImageAsset(
                templateURL:
                    "https://cdn.example.com/frame/{w}x{h}bb.{f}",
                width: 1320,
                height: 2868
            ),
            state: ASCPreviewFrameImageState(
                errors: nil,
                warnings: nil,
                state: state
            )
        )
    }

    private func makePreview(
        videoURL: String?,
        previewFrameImage: ASCPreviewFrameImage? = nil,
        videoState: String? = nil
    ) -> ASCAppPreview {
        ASCAppPreview(
            id: "PREVIEW_ID",
            attributes: .init(
                fileSize: 1000,
                fileName: "preview.mp4",
                sourceFileChecksum: nil,
                previewFrameTimeCode: nil,
                mimeType: "video/mp4",
                videoURL: videoURL,
                uploadOperations: nil,
                videoDeliveryState: videoState.map {
                    ASCVideoDeliveryState(
                        errors: nil,
                        warnings: nil,
                        state: $0
                    )
                },
                previewFrameImage: previewFrameImage
            )
        )
    }
}
