//
//  FavoriteView.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

import SwiftUI

struct FavoriteView: View {
    @State private var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List {
            ForEach(viewModel.favorites) { recipe in
                RecipeCard(recipe: recipe, isFavorite: viewModel.favoriteIds.contains(recipe.id)) {
                    viewModel.toggleFavoriteRecipe(id: recipe.id)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        viewModel.toggleFavoriteRecipe(id: recipe.id)
                    } label: {
                        Label("Remove", systemImage: "trash")
                    }

                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}
