//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Angelos Staboulis on 23/1/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel:ViewModel
    var body: some View {
        VStack {
            ZStack{
                VStack{
                    Text("SwiftUI Example MVVM Pattern")
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
                VStack{
                    Text("Current IP="+String(viewModel.currentIP))
                }.frame(maxWidth: .infinity,maxHeight: 65,alignment: .center)
            }
         
        }.task {
            viewModel.fetchCurrentViewModelIP()
        }
       
    }
}

#Preview {
    ContentView()
}
