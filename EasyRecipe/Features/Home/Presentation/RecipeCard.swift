//
//  RecipeCard.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe
    var body: some View {
        HStack {
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
            .scaledToFit()
            .frame(width: 90, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack (alignment: .leading){
                Text(recipe.name)
                    .font(.headline)
                Text(recipe.cuisine)
                    .font(.subheadline)
            }
        }
        
    }
}
