// Offline smoke test for generated code from typed-fixture.json ONLY.
// This file is not part of Package.swift and does not contact Apple services.
import Foundation

@main
struct ASCTypedSmoke {
    static func main() throws {
        let payload = #"{"data":{"id":"123","type":"apps","attributes":{"name":"Demo","bundleId":"dev.example.demo","isOrEverWasMadeForKids":false},"relationships":{"builds":{"data":[]}}},"links":{"self":"https://example.test/v1/apps/123"},"included":[]}"#
        let app = try JSONDecoder().decode(ASCTypedGetAppResponse.self, from: Data(payload.utf8))
        guard app.data.id == "123", app.data.attributes?.name == "Demo",
              app.data.attributes?.isOrEverWasMadeForKids == false else {
            fatalError("Failed to decode typed App response")
        }
        let attrs = ASCTypedCreateAppStoreVersionRequestAttributes(
            platform: "IOS", versionString: "1.2.3", copyright: "Example")
        let body = ASCTypedCreateAppStoreVersionRequest(data:
            ASCTypedCreateAppStoreVersionRequestData(type: "appStoreVersions", attributes: attrs,
                relationships: .object(["app": .object(["data": .object(["type": .string("apps"), "id": .string("123")])])])))
        let encoded = try JSONEncoder().encode(body)
        let value = try JSONSerialization.jsonObject(with: encoded) as! [String: Any]
        let data = value["data"] as! [String: Any]
        let typedAttrs = data["attributes"] as! [String: Any]
        guard typedAttrs["versionString"] as? String == "1.2.3",
              (data["relationships"] as? [String: Any])?["app"] != nil else {
            fatalError("Failed to encode typed request or relationship")
        }
        guard try ASCTypedPath.safeSegment("id-._~123") == "id-._~123" else {
            fatalError("Valid ID rejected")
        }
        for bad in ["", ".", "..", "foo/bar", "foo%2Fbar", "foo?bar", "foo bar"] {
            do {
                _ = try ASCTypedPath.safeSegment(bad)
                fatalError("Unsafe path ID accepted: \(bad)")
            } catch ASCAPIError.invalidResponse {
                // Expected: reject before constructing authorized HTTP request.
            }
        }
        print("BATCH4_SWIFT_SMOKE_OK")
    }
}
