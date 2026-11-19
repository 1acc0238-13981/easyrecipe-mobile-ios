//
//  RecipeRepositoryImpl.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

class RecipeRepositoryImpl: RecipeRepository {
    private let api = RecipeApi()
    func getRecipes() async throws -> [Recipe] {
        let dtos = try await api.getRecipes()
        return dtos.map { dto in
            Recipe(id: dto.id,
                   name: dto.name,
                   ingredients: dto.ingredients,
                   instructions: dto.instructions,
                   image: dto.image,
                   cuisine: dto.cuisine)
        }
    }
    
    
}
