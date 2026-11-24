//
//  FavoriteRepository.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

protocol FavoriteRepository {
    
    func getFavorites() throws -> Set<Int>
    func addFavorite(id: Int) throws
    func removeFavorite(id: Int) throws
    
}
