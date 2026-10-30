// OpenAPI 4.5.1 catalog dispatcher. Generated operation definitions live in separate files.
// This layer exposes byte responses and does not claim complete Codable Schema coverage.
import Foundation

public enum ASCOpenAPIBody: Sendable {
    case json(ASCJSONValue)
    /// Caller owns the exact bytes, including multipart framing when applicable.
    case bytes(Data, contentType: String)
}

public enum ASCOpenAPICatalogError: Error, Sendable, Equatable {
    case unsupportedOperation(String)
    case invalidPathParameter(String)
    case unexpectedPathParameter(String)
    case invalidQueryParameter(String)
    case missingRequiredQueryParameter(String)
    case missingRequiredBody
    case unexpectedBody
    case unsupportedContentType(String)
    case unsupportedAccept(String)
}

public struct ASCOpenAPIOperation: Sendable {
    public let id: String
    public let method: String
    public let pathTemplate: String
    public let pathParameterNames: [String]
    public let queryParameterNames: [String]
    public let requiredQueryParameterNames: [String]
    public let requestContentTypes: [String]
    public let requestBodyRequired: Bool
    public let responseContentTypes: [String]
    public let deprecated: Bool
    public let transportBlocker: String?

    // Only the offline pinned OpenAPI generator constructs catalog operations.
    internal init(
        id: String, method: String, pathTemplate: String,
        pathParameterNames: [String], queryParameterNames: [String],
        requiredQueryParameterNames: [String], requestContentTypes: [String],
        requestBodyRequired: Bool, responseContentTypes: [String],
        deprecated: Bool, transportBlocker: String?
    ) {
        self.id = id
        self.method = method
        self.pathTemplate = pathTemplate
        self.pathParameterNames = pathParameterNames
        self.queryParameterNames = queryParameterNames
        self.requiredQueryParameterNames = requiredQueryParameterNames
        self.requestContentTypes = requestContentTypes
        self.requestBodyRequired = requestBodyRequired
        self.responseContentTypes = responseContentTypes
        self.deprecated = deprecated
        self.transportBlocker = transportBlocker
    }
}

public enum ASCOpenAPICatalog {}

extension ASCClient {
    /// Invoke a pinned operation with caller-supplied JSON:API payload or raw bytes.
    /// Does not automatically retry, refresh tokens, or follow links.next.
    /// Never pass upload-operation presigned URLs here: those use the existing uploader.
    public func ascOpenAPI(
        _ operation: ASCOpenAPIOperation,
        pathParameters: [String: String] = [:],
        queryItems: [URLQueryItem] = [],
        body: ASCOpenAPIBody? = nil,
        accept: String? = nil
    ) async throws -> Data {
        if let reason = operation.transportBlocker {
            throw ASCOpenAPICatalogError.unsupportedOperation(reason)
        }
        let required = Set(operation.pathParameterNames)
        for key in pathParameters.keys where !required.contains(key) {
            throw ASCOpenAPICatalogError.unexpectedPathParameter(key)
        }
        var parts: [String] = []
        for component in operation.pathTemplate.split(separator: "/") {
            let part = String(component)
            if part.hasPrefix("{") && part.hasSuffix("}") {
                let name = String(part.dropFirst().dropLast())
                guard let value = pathParameters[name],
                      !value.isEmpty, value.utf8.count <= 512,
                      value != ".", value != "..",
                      value.utf8.allSatisfy({ byte in
                          (65...90).contains(byte) || (97...122).contains(byte) ||
                          (48...57).contains(byte) || byte == 45 ||
                          byte == 46 || byte == 95 || byte == 126
                      }) else {
                    throw ASCOpenAPICatalogError.invalidPathParameter(name)
                }
                parts.append(value)
            } else {
                parts.append(part)
            }
        }
        let path = "/" + parts.joined(separator: "/")
        guard path.hasPrefix("/v"), !path.contains("?"), !path.contains("#"),
              !path.contains("\\"), !parts.contains("..") else {
            throw ASCOpenAPICatalogError.unsupportedOperation("unsafe path")
        }
        let allowedQueries = Set(operation.queryParameterNames)
        let seenQueries = Set(queryItems.map(\.name))
        for item in queryItems where !allowedQueries.contains(item.name) {
            throw ASCOpenAPICatalogError.invalidQueryParameter(item.name)
        }
        for name in operation.requiredQueryParameterNames where !seenQueries.contains(name) {
            throw ASCOpenAPICatalogError.missingRequiredQueryParameter(name)
        }
        if operation.requestBodyRequired && body == nil {
            throw ASCOpenAPICatalogError.missingRequiredBody
        }
        if body != nil && operation.requestContentTypes.isEmpty {
            throw ASCOpenAPICatalogError.unexpectedBody
        }
        var rawBody: Data?
        var bodyType: String?
        switch body {
        case nil: break
        case .json(let value):
            let type = operation.requestContentTypes.first(where: {
                $0 == "application/json" || $0 == "application/vnd.api+json"
            })
            guard let type else {
                throw ASCOpenAPICatalogError.unsupportedContentType("application/json")
            }
            // requestRaw's JSON:API object requirement is preserved.
            guard case .object = value else {
                throw ASCOpenAPICatalogError.unsupportedContentType("non-object JSON")
            }
            rawBody = try JSONEncoder().encode(value)
            bodyType = type
        case .bytes(let bytes, let contentType):
            guard !contentType.contains("\r"), !contentType.contains("\n"),
                  !contentType.isEmpty else {
                throw ASCOpenAPICatalogError.unsupportedContentType(contentType)
            }
            let baseType = contentType.split(separator: ";", maxSplits: 1).first
                .map(String.init)?.trimmingCharacters(in: .whitespaces) ?? ""
            guard operation.requestContentTypes.contains(baseType) else {
                throw ASCOpenAPICatalogError.unsupportedContentType(contentType)
            }
            rawBody = bytes
            bodyType = contentType
        }
        let defaultAccept = operation.responseContentTypes.contains("application/json")
            ? "application/json" : (operation.responseContentTypes.first ?? "application/json")
        let selectedAccept = accept ?? defaultAccept
        guard !selectedAccept.contains("\r"), !selectedAccept.contains("\n"),
              (operation.responseContentTypes.isEmpty
               ? selectedAccept == "application/json"
               : operation.responseContentTypes.contains(selectedAccept)) else {
            throw ASCOpenAPICatalogError.unsupportedAccept(selectedAccept)
        }
        return try await sendCatalogAuthorized(
            method: operation.method, path: path,
            queryItems: queryItems, body: rawBody,
            accept: selectedAccept, contentType: bodyType
        )
    }
}
