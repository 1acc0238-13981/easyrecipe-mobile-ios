//
//  MainView.swift
//  EasyRecipe
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct MainView: View {
    @State private var viewModel = AppContainer().makeViewModel()

    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView(viewModel: viewModel)
            }
            Tab("Favorites", systemImage: "heart") {
                FavoriteView(viewModel: viewModel)
            }
            Tab("Profile", systemImage: "person") {
                
            }
        }
        .navigationBarBackButtonHidden()
        .tint(.green)
        
    }
}


#Preview {
    MainView()
}
