//
//  MainView.swift
//  EasyRecipe
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Favorites", systemImage: "heart") {
                
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
