//
//  GetRecipesUseCase.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

class GetRecipesUseCase {
    let repository: any RecipeRepository
    init(repository: any RecipeRepository) {
        self.repository = repository
    }
    
    func execute() async throws -> [Recipe] {
        try await repository.getRecipes()
    }
}
