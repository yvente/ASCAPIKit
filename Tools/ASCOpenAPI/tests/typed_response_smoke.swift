import Foundation

/// Compiled against the real Batch 5 generated production types; no network calls.
@main
struct Batch6TypedResponseSmoke {
    static func main() throws {
        guard CommandLine.arguments.count == 2 else {
            fatalError("Usage: typed-response-smoke <schema-fixture-directory>")
        }
        let root = URL(fileURLWithPath: CommandLine.arguments[1], isDirectory: true)
        let decoder = JSONDecoder()
        let app = try decoder.decode(ASCTypedGetAppResponse.self,
                                     from: Data(contentsOf: root.appendingPathComponent("GetApp.json")))
        precondition(app.data.id == "APP-1")
        let build = try decoder.decode(ASCTypedGetBuildResponse.self,
                                       from: Data(contentsOf: root.appendingPathComponent("GetBuild.json")))
        precondition(build.data.id == "BUILD-1")
        let version = try decoder.decode(ASCTypedGetAppStoreVersionResponse.self,
                                         from: Data(contentsOf: root.appendingPathComponent("GetAppStoreVersion.json")))
        precondition(version.data.id == "V-1")
        let created = try decoder.decode(ASCTypedCreateAppStoreVersionResponse.self,
                                         from: Data(contentsOf: root.appendingPathComponent("CreateAppStoreVersion.json")))
        precondition(created.data.id == "V-new")
        let updated = try decoder.decode(ASCTypedUpdateAppStoreVersionResponse.self,
                                         from: Data(contentsOf: root.appendingPathComponent("UpdateAppStoreVersion.json")))
        precondition(updated.data.id == "V-1")
        print("BATCH6_TYPED_RESPONSE_SMOKE_OK")
    }
}
