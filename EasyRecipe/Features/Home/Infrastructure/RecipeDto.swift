//
//  RecipeDto.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

struct RecipeDto: Decodable {
    let id: Int
    let name: String
    let ingredients: [String]
    let instructions: [String]
    let image: String
    let cuisine: String
}

struct RecipesDto: Decodable {
    let count: Int
    let recipes: [RecipeDto]
    
    enum CodingKeys: String, CodingKey {
        case count
        case recipes = "results"
    }
}
