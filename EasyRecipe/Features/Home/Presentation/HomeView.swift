//
//  HomeView.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.recipes) { recipe in
                    Text(recipe.name)
                }
            }
        }
        .task {
            await viewModel.loadRecipes()
        }
    }
}

#Preview {
    HomeView()
}
