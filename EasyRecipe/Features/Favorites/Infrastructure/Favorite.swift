//
//  Favorite.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

import SwiftData

@Model
class Favorite {
    @Attribute(.unique)
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
}
