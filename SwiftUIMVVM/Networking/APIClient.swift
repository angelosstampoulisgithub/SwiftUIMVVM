//
//  APIClient.swift
//  SwiftUIMVVM
//
//  Created by Angelos Staboulis on 23/1/25.
//

import Foundation
import Alamofire
actor APIClient {
    func request<T: Decodable>(
        method: HTTPMethod,
        url: String,
        of type: T.Type
    ) async throws -> T {
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(
                url,
                method: method
            ).responseDecodable(of: type) { response in
                switch response.result {
                case let .success(data):
                    continuation.resume(returning: data)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
