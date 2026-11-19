//
//  RecipeDetailView.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    var body: some View {
        VStack {
            GeometryReader { geometry in
                AsyncImage(url: URL(string: recipe.image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                    case .failure:
                        Image(systemName: "cuisine")
                            .resizable()
                    @unknown default:
                        EmptyView()
                    }
                }
                .scaledToFill()
                .frame(width: geometry.size.width, height: 300)
                .clipped()
                    
                        
            
            
            }
            
            Text(recipe.name)
                .font(.headline)
                .padding()
            
            List {
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text(ingredient)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            }
            .listStyle(.plain)
        }
        
        
        .ignoresSafeArea()
    }
}
