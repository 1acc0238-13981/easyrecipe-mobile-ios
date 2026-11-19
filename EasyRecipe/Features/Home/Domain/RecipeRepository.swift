//
//  RecipeRepository.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

protocol RecipeRepository {
    func getRecipes() async throws -> [Recipe]
}
