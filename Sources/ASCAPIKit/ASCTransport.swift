import Foundation

public protocol ASCTransport: Sendable {
    func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse)
}

public struct URLSessionASCTransport: ASCTransport {
    public init() {}

    public func send(
        _ request: URLRequest
    ) async throws -> (Data, HTTPURLResponse) {
        let (data, response) = try await URLSession.shared.data(
            for: request
        )

        guard let response = response as? HTTPURLResponse else {
            throw ASCAPIError.invalidResponse
        }

        return (data, response)
    }
}
