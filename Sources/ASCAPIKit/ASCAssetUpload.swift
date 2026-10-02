import CryptoKit
import Foundation

extension ASCClient {
    /// Uploads the byte ranges described by App Store Connect upload operations.
    ///
    /// This method intentionally:
    /// - does not attach the App Store Connect JWT
    /// - does not retry
    /// - does not add scheduling or backoff policy
    /// - validates that the operations cover the complete file
    ///
    /// The returned string is the lowercase MD5 checksum of the complete file.
    public func uploadAsset(
        fileURL: URL,
        operations: [ASCUploadOperation]
    ) async throws -> String {
        let fileSize = try ascAssetFileSize(fileURL)

        try validateAssetOperations(
            operations,
            fileSize: fileSize
        )

        let checksum = try ascAssetMD5(fileURL)

        let handle: FileHandle

        do {
            handle = try FileHandle(
                forReadingFrom: fileURL
            )
        } catch {
            throw ASCAssetUploadError.invalidAssetFile
        }

        defer {
            try? handle.close()
        }

        for operation in operations {
            guard
                let uploadURL = URL(string: operation.url),
                uploadURL.scheme == "https",
                uploadURL.user == nil,
                uploadURL.password == nil
            else {
                throw ASCAssetUploadError.unsafeAssetUploadURL
            }

            guard
                operation.length > 0,
                operation.offset >= 0,
                operation.length <= Int64(Int.max)
            else {
                throw ASCAssetUploadError.invalidUploadOperation
            }

            do {
                try handle.seek(
                    toOffset: UInt64(operation.offset)
                )
            } catch {
                throw ASCAssetUploadError.invalidAssetFile
            }

            let body = try readAssetBytes(
                from: handle,
                count: Int(operation.length)
            )

            guard !operation.method.isEmpty else {
                throw ASCAssetUploadError.invalidUploadOperation
            }

            var request = URLRequest(url: uploadURL)
            request.httpMethod = operation.method
            request.httpBody = body

            for header in operation.requestHeaders {
                request.setValue(
                    header.value,
                    forHTTPHeaderField: header.name
                )
            }

            let (_, response) = try await sendRaw(request)

            guard (200..<300).contains(response.statusCode) else {
                throw ASCAssetUploadError.assetUploadFailed(
                    response.statusCode
                )
            }
        }

        return checksum
    }
}

private func readAssetBytes(
    from handle: FileHandle,
    count: Int
) throws -> Data {
    guard count > 0 else {
        throw ASCAssetUploadError.invalidUploadOperation
    }

    var result = Data()
    result.reserveCapacity(count)

    while result.count < count {
        let remaining = count - result.count

        let requestedCount = min(
            remaining,
            1_048_576
        )

        let chunk: Data

        do {
            chunk = try handle.read(
                upToCount: requestedCount
            ) ?? Data()
        } catch {
            throw ASCAssetUploadError.invalidAssetFile
        }

        guard !chunk.isEmpty else {
            throw ASCAssetUploadError.invalidUploadOperation
        }

        result.append(chunk)
    }

    return result
}

func ascAssetFileSize(
    _ fileURL: URL
) throws -> Int64 {
    guard fileURL.isFileURL else {
        throw ASCAssetUploadError.invalidAssetFile
    }

    var isDirectory: ObjCBool = false

    guard
        FileManager.default.fileExists(
            atPath: fileURL.path,
            isDirectory: &isDirectory
        ),
        !isDirectory.boolValue
    else {
        throw ASCAssetUploadError.invalidAssetFile
    }

    do {
        let attributes = try FileManager.default.attributesOfItem(
            atPath: fileURL.path
        )

        guard
            let number = attributes[.size] as? NSNumber
        else {
            throw ASCAssetUploadError.invalidAssetFile
        }

        let size = number.int64Value

        guard size > 0 else {
            throw ASCAssetUploadError.invalidAssetFile
        }

        return size
    } catch let error as ASCAssetUploadError {
        throw error
    } catch {
        throw ASCAssetUploadError.invalidAssetFile
    }
}

private func ascAssetMD5(
    _ fileURL: URL
) throws -> String {
    let handle: FileHandle

    do {
        handle = try FileHandle(
            forReadingFrom: fileURL
        )
    } catch {
        throw ASCAssetUploadError.invalidAssetFile
    }

    defer {
        try? handle.close()
    }

    var hasher = Insecure.MD5()

    while true {
        let chunk: Data

        do {
            chunk = try handle.read(
                upToCount: 1_048_576
            ) ?? Data()
        } catch {
            throw ASCAssetUploadError.invalidAssetFile
        }

        if chunk.isEmpty {
            break
        }

        hasher.update(data: chunk)
    }

    let digest = hasher.finalize()

    return digest
        .map {
            String(
                format: "%02x",
                $0
            )
        }
        .joined()
}

private func validateAssetOperations(
    _ operations: [ASCUploadOperation],
    fileSize: Int64
) throws {
    guard
        fileSize > 0,
        !operations.isEmpty
    else {
        throw ASCAssetUploadError.invalidUploadOperation
    }

    let ordered = operations.sorted {
        if $0.offset == $1.offset {
            return $0.length < $1.length
        }

        return $0.offset < $1.offset
    }

    var expectedOffset: Int64 = 0

    for operation in ordered {
        guard
            operation.offset == expectedOffset,
            operation.length > 0
        else {
            throw ASCAssetUploadError.invalidUploadOperation
        }

        let result = expectedOffset.addingReportingOverflow(
            operation.length
        )

        guard !result.overflow else {
            throw ASCAssetUploadError.invalidUploadOperation
        }

        expectedOffset = result.partialValue
    }

    guard expectedOffset == fileSize else {
        throw ASCAssetUploadError.invalidUploadOperation
    }
}
