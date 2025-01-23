//
//  SwiftUIMVVMApp.swift
//  SwiftUIMVVM
//
//  Created by Angelos Staboulis on 23/1/25.
//

import SwiftUI

@main
struct SwiftUIMVVMApp: App {
    @StateObject var viewModel = ViewModel(currentIP: "")
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
