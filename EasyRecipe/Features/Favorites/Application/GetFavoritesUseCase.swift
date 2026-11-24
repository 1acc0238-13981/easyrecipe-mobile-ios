//
//  GetFavoritesUseCase.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

class GetFavoritesUseCase {
    private let repository: any FavoriteRepository
    
    init(repository: any FavoriteRepository) {
        self.repository = repository
    }
    
    func execute() throws -> Set<Int> {
        try repository.getFavorites()
    }
}
