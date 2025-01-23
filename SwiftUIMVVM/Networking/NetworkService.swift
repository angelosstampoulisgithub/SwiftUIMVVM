//
//  NetworkService.swift
//  SwiftUIMVVM
//
//  Created by Angelos Staboulis on 23/1/25.
//

import Foundation
actor NetworkService{
    let apiclient = APIClient()
    func fetchCurrentIP() async -> Result<Model, Error>  {
        do {
            let response = try await apiclient.request(method: .get, url: "https://api.ipify.org/?format=json",of: Model.self)
            return .success(response)
        } catch {
            return .failure(error)
        }
    }
}
