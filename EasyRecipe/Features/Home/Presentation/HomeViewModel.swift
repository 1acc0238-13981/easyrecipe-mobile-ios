//
//  HomeViewModel.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import Observation

@Observable
class HomeViewModel {
    private let getRecipes: GetRecipesUseCase
    private let getFavorites: GetFavoritesUseCase
    private let toggleFavorite: ToggleFavoriteUseCase
    
    init(getRecipes: GetRecipesUseCase, getFavorites: GetFavoritesUseCase, toggleFavorite: ToggleFavoriteUseCase) {
        self.getRecipes = getRecipes
        self.getFavorites = getFavorites
        self.toggleFavorite = toggleFavorite
    }
    
    private(set) var recipes: [Recipe] = []
    
    func loadRecipes() async {
        do {
            recipes = try await getRecipes.execute()
        } catch {
            
        }
        
    }
}
