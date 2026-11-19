//
//  RecipeApi.swift
//  EasyRecipe
//
//  Created by Alumnos on 19/11/26.
//

import Foundation

class RecipeApi {
    let baseUrl = "https://recipeapp-frgjf0fdcna7gtck.eastus-01.azurewebsites.net/api/recipes"
    
    func getRecipes() async throws -> [RecipeDto] {
        
        guard let url = URL(string: baseUrl) else {
            throw NetworkError.invalidURL
        }
        
        let session = URLSession.shared
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await session.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            let recipesDto = try JSONDecoder().decode(RecipesDto.self, from: data)
            return recipesDto.recipes
        } catch {
            throw NetworkError.decodingError
        }
            
            
            
    }
}

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case decodingError
}
