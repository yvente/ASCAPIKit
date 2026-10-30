// Shared generated path validation; only unreserved RFC3986 characters are accepted.
import Foundation

enum ASCTypedPath {
    static func safeSegment(_ value: String) throws -> String {
        guard !value.isEmpty, value.utf8.count <= 512,
              value != ".", value != "..",
              value.utf8.allSatisfy({ byte in
                (byte >= 65 && byte <= 90) || (byte >= 97 && byte <= 122) ||
                (byte >= 48 && byte <= 57) || byte == 45 || byte == 46 ||
                byte == 95 || byte == 126
              }) else { throw ASCAPIError.invalidResponse }
        return value
    }
}
