//
//  Recipe.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

struct Recipe: Identifiable, Hashable {
    let id: Int
    let name: String
    let ingredients: [String]
    let instructions: [String]
    let image: String
    let cuisine: String
}
