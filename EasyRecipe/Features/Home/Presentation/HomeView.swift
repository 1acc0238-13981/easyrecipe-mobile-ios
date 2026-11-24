//
//  HomeView.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    @State private var selectedRecipe: Recipe?
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.recipes) { recipe in
                    RecipeCard(recipe: recipe)
                        .onTapGesture {
                            selectedRecipe = recipe
                        }
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            }
            .listStyle(.plain)
        }
        
        .task {
            await viewModel.loadRecipes()
        }
        .navigationDestination(item: $selectedRecipe, destination: { recipe in
            RecipeDetailView(recipe: recipe)
        })
        
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
