//
//  ViewModel.swift
//  SwiftUIMVVM
//
//  Created by Angelos Staboulis on 23/1/25.
//

import Foundation
@MainActor
class ViewModel:ObservableObject{
    @Published var currentIP:String
    let networkService = NetworkService()
    init(currentIP: String) {
        self.currentIP = currentIP
    }
    func fetchCurrentViewModelIP()   {
        Task{
            let response =  await networkService.fetchCurrentIP()
            currentIP = try response.get().ip
        }
    }
}
