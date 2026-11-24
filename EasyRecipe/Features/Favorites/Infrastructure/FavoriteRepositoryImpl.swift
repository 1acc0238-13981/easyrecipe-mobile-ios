//
//  FavoriteRepositoryImpl.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

class FavoriteRepositoryImpl: FavoriteRepository {
    
    
    private let dao: FavoriteDao
    
    init(dao: FavoriteDao) {
        self.dao = dao
    }
    
    func getFavorites() throws -> Set<Int> {
        let favorites = try dao.getFavorites()
        
        return Set(favorites.map { favorite in
            favorite.id
        })
    }
    
    func addFavorite(id: Int) throws {
        try dao.addFavorite(id: id)
    }
    
    func removeFavorite(id: Int) throws {
        try dao.removeFavorite(id: id)
    }
    
    
}
