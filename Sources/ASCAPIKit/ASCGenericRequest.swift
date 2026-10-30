import Foundation

/// A lossless-enough JSON representation for App Store Connect request documents.
/// Use `.decimal` for values that must not pass through binary floating point.
public indirect enum ASCJSONValue: Codable, Equatable, Sendable {
    case object([String: ASCJSONValue])
    case array([ASCJSONValue])
    case string(String)
    case integer(Int64)
    case decimal(Decimal)
    case boolean(Bool)
    case null

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if container.decodeNil() {
            self = .null
        } else if let value = try? container.decode(Bool.self) {
            self = .boolean(value)
        } else if let value = try? container.decode(Int64.self) {
            self = .integer(value)
        } else if let value = try? container.decode(Decimal.self) {
            self = .decimal(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode([ASCJSONValue].self) {
            self = .array(value)
        } else if let value = try? container.decode([String: ASCJSONValue].self) {
            self = .object(value)
        } else {
            throw DecodingError.typeMismatch(
                ASCJSONValue.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unsupported JSON value")
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .object(let value): try container.encode(value)
        case .array(let value): try container.encode(value)
        case .string(let value): try container.encode(value)
        case .integer(let value): try container.encode(value)
        case .decimal(let value): try container.encode(value)
        case .boolean(let value): try container.encode(value)
        case .null: try container.encodeNil()
        }
    }
}

public enum ASCRequestMethod: String, Sendable {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
}

/// Single-resource JSON:API envelope. Used only for decoding `{"data": {...}}`.
private struct ASCGenericResourceDocument<Resource: Decodable & Sendable>: Decodable, Sendable {
    let data: Resource
}

extension ASCClient {
    /// Low-level authenticated request. Accepts relative paths such as
    /// `/v2/inAppPurchases/123`, never full URLs or presigned asset URLs.
    /// A successful response may be empty (for example HTTP 204 DELETE).
    /// The host owns authentication renewal, retries, and request scheduling.
    public func requestRaw(
        method: ASCRequestMethod,
        path: String,
        queryItems: [URLQueryItem] = [],
        body: ASCJSONValue? = nil
    ) async throws -> Data {
        guard ASCGenericRequestPath.isAllowed(path) else {
            throw ASCAPIError.invalidResponse
        }
        guard method != .get || body == nil else {
            throw ASCAPIError.invalidResponse
        }

        var encodedBody: Data?
        if let body {
            // JSON:API top-level documents must be JSON objects.
            guard case .object = body else {
                throw ASCAPIError.invalidResponse
            }
            do {
                let encoder = JSONEncoder()
                encoder.outputFormatting = [.sortedKeys]
                encodedBody = try encoder.encode(body)
            } catch {
                throw ASCAPIError.invalidResponse
            }
        }

        return try await sendAuthorized(
            method: method.rawValue,
            path: path,
            queryItems: queryItems,
            body: encodedBody
        )
    }

    /// Decode the complete JSON response document into any `Decodable` type.
    /// For `{"data": [...]}` responses, the caller's type must include `data`.
    public func requestDecoded<Response: Decodable & Sendable>(
        method: ASCRequestMethod,
        path: String,
        queryItems: [URLQueryItem] = [],
        body: ASCJSONValue? = nil,
        as responseType: Response.Type = Response.self
    ) async throws -> Response {
        let data = try await requestRaw(
            method: method,
            path: path,
            queryItems: queryItems,
            body: body
        )
        guard !data.isEmpty else {
            throw ASCAPIError.invalidResponse
        }
        do {
            return try JSONDecoder().decode(responseType, from: data)
        } catch {
            throw ASCAPIError.invalidResponse
        }
    }

    /// Decode an ordinary single-resource JSON:API response.
    public func requestResource<Resource: Decodable & Sendable>(
        method: ASCRequestMethod,
        path: String,
        queryItems: [URLQueryItem] = [],
        body: ASCJSONValue? = nil,
        as resourceType: Resource.Type = Resource.self
    ) async throws -> Resource {
        let document: ASCGenericResourceDocument<Resource> = try await requestDecoded(
            method: method,
            path: path,
            queryItems: queryItems,
            body: body,
            as: ASCGenericResourceDocument<Resource>.self
        )
        return document.data
    }
}

private enum ASCGenericRequestPath {
    static func isAllowed(_ path: String) -> Bool {
        guard path.hasPrefix("/"),
              !path.hasPrefix("//"),
              !path.contains("?"),
              !path.contains("#"),
              !path.contains("\\") else {
            return false
        }
        let segments = path.split(separator: "/", omittingEmptySubsequences: false)
        guard segments.count >= 3, segments[0].isEmpty,
              segments[1].first == "v" else {
            return false
        }
        let digits = segments[1].dropFirst()
        guard !digits.isEmpty,
              digits.first != "0",
              digits.allSatisfy({ $0 >= "0" && $0 <= "9" }) else {
            return false
        }
        return segments.dropFirst(2).allSatisfy {
            !$0.isEmpty && $0 != "." && $0 != ".."
        }
    }
}
