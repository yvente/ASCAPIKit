import Foundation

private struct ASCSingleRelationshipDocument: Decodable, Sendable {
    let data: ASCResourceIdentifier?

    private enum CodingKeys: String, CodingKey { case data }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        guard container.contains(.data) else {
            throw DecodingError.keyNotFound(
                CodingKeys.data,
                .init(codingPath: decoder.codingPath, debugDescription: "Missing JSON:API data")
            )
        }
        data = try container.decodeIfPresent(ASCResourceIdentifier.self, forKey: .data)
    }
}

extension ASCClient {
    /// Add, replace, or remove relationships of a to-many association.
    /// JSON:API uses an array in `data` for all three operations.
    /// Returned 200/201 bodies are intentionally ignored; 204 is also success.
    public func modifyToManyRelationship(
        method: ASCRequestMethod,
        path: String,
        identifiers: [ASCResourceIdentifier]
    ) async throws {
        guard method == .post || method == .patch || method == .delete,
              ASCGenericRelationshipPath.isAllowed(path),
              identifiers.allSatisfy({ !$0.type.isEmpty && !$0.id.isEmpty }) else {
            throw ASCAPIError.invalidResponse
        }
        let linkedResources: [ASCJSONValue] = identifiers.map { identifier in
            .object([
                "type": .string(identifier.type),
                "id": .string(identifier.id)
            ])
        }
        _ = try await requestRaw(
            method: method,
            path: path,
            body: .object(["data": .array(linkedResources)])
        )
    }

    /// Set or clear a to-one relationship using PATCH and `data` object/null.
    public func setToOneRelationship(
        path: String,
        identifier: ASCResourceIdentifier?
    ) async throws {
        guard ASCGenericRelationshipPath.isAllowed(path),
              identifier.map({ !$0.type.isEmpty && !$0.id.isEmpty }) ?? true else {
            throw ASCAPIError.invalidResponse
        }
        let value: ASCJSONValue
        if let identifier {
            value = .object([
                "type": .string(identifier.type),
                "id": .string(identifier.id)
            ])
        } else {
            value = .null
        }
        _ = try await requestRaw(
            method: .patch,
            path: path,
            body: .object(["data": value])
        )
    }

    /// Read a to-one linkage, including an unassigned relationship (`data: null`).
    public func getToOneRelationship(
        path: String
    ) async throws -> ASCResourceIdentifier? {
        guard ASCGenericRelationshipPath.isAllowed(path) else {
            throw ASCAPIError.invalidResponse
        }
        let document: ASCSingleRelationshipDocument = try await requestDecoded(
            method: .get,
            path: path
        )
        guard document.data.map({ !$0.type.isEmpty && !$0.id.isEmpty }) ?? true else {
            throw ASCAPIError.invalidResponse
        }
        return document.data
    }
}

private enum ASCGenericRelationshipPath {
    static func isAllowed(_ path: String) -> Bool {
        guard ASCGenericPaginationPath.isAllowed(path) else {
            return false
        }
        let parts = path.split(separator: "/")
        guard let relationIndex = parts.firstIndex(of: "relationships") else {
            return false
        }
        // Require `/vN/<resource>/<id>/relationships/<relationship>`.
        return relationIndex == 3 && parts.count == 5
    }
}
