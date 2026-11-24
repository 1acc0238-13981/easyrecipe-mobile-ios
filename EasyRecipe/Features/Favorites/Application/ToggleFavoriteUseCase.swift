//
//  ToggleFavoriteUseCase.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

class ToggleFavoriteUseCase {
    private let repository: FavoriteRepository
    
    init(repository: FavoriteRepository) {
        self.repository = repository
    }
    
    func execute(id: Int) throws {
        
        let favorites = try repository.getFavorites()
        
        if favorites.contains(id) {
            try? repository.removeFavorite(id: id)
        } else {
            try? repository.addFavorite(id: id)
        }
    
        
    }
}
