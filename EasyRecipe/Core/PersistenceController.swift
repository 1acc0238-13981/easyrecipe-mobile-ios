//
//  PersistenceController.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

import SwiftData

class PersistenceController {
    
    static let shared = PersistenceController()
    
    let container: ModelContainer
    
    private init() {
        do {
            container = try ModelContainer(for: Favorite.self, configurations: ModelConfiguration())
        } catch {
            fatalError("Failed to load container")
        }
    }
}
