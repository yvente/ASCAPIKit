// Batch 7 offline HTTP request smoke; compile only with generated typed-query fixture.
import Foundation
import CryptoKit
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

actor QueryStub: ASCTransport {
    private(set) var capturedURL: URL?
    func send(_ request: URLRequest) async throws -> (Data, HTTPURLResponse) {
        capturedURL = request.url
        let reply = #"{"data":{"id":"A-1","type":"apps","attributes":{"name":"Fixture"}}}"#
        return (Data(reply.utf8), HTTPURLResponse(url: request.url!, statusCode: 200,
                                                   httpVersion: nil, headerFields: nil)!)
    }
}

@main
struct Batch7QuerySmoke {
    static func main() async throws {
        let query = ASCTypedGetAppQuery(fields_apps_: ["name", "bundleId"],
                                        filter_name_: "a+b & 中文", include: ["builds", "appInfos"],
                                        limit: 12, price: Decimal(string: "12.50")!, show: false)
        let items = query.urlQueryItems()
        func values(_ name: String) -> [String] {
            items.filter { $0.name == name }.compactMap(\.value)
        }
        guard values("fields[apps]") == ["name,bundleId"],
              values("filter[name]") == ["a+b & 中文"],
              values("include") == ["builds", "appInfos"],
              values("limit") == ["12"],
              values("price") == ["12.5"],
              values("show") == ["false"] else { fatalError("Query encoding mismatch") }
        let transport = QueryStub()
        let key = P256.Signing.PrivateKey()
        let client = try ASCClient(
            configuration: ASCCredentialConfiguration(
                kind: .team,
                keyID: "TESTKEY123",
                issuerID: "00000000-0000-0000-0000-000000000000"
            ),
            privateKeyPEM: key.pemRepresentation,
            transport: transport
        )
        let app = try await client.ascTypedGetApp(id: "A-1", query: query)
        guard app.data.id == "A-1", app.data.attributes?.name == "Fixture" else {
            fatalError("Response decoding mismatch")
        }
        guard let requestURL = await transport.capturedURL,
              requestURL.host == "api.appstoreconnect.apple.com",
              requestURL.path == "/v1/apps/A-1" else { fatalError("Wrong destination") }
        let actual = URLComponents(url: requestURL, resolvingAgainstBaseURL: false)?.queryItems ?? []
        guard actual.map(\.name) == items.map(\.name),
              actual.map(\.value) == items.map(\.value) else {
            fatalError("URLComponents lost query items")
        }
        print("BATCH7_TYPED_QUERY_SMOKE_OK")
    }
}
