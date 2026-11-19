//
//  HomeViewModel.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import Observation

@Observable
class HomeViewModel {
    private var repository: RecipeRepository = RecipeRepositoryImpl()
    private(set) var recipes: [Recipe] = []
    
    func loadRecipes() async {
        do {
           recipes = try await repository.getRecipes()
        } catch {
            
        }
        
    }
}
