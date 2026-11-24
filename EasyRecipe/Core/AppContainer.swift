//
//  AppContainer.swift
//  EasyRecipe
//
//  Created by Alumnos on 24/11/26.
//

class AppContainer {
    
    
    lazy var recipeApi = RecipeApi()
    
    var recipeRepository: any RecipeRepository {
        return RecipeRepositoryImpl(api: recipeApi)
    }
    
    var getRecipesUseCase: GetRecipesUseCase {
        return GetRecipesUseCase(repository: recipeRepository)
    }
    
    lazy var favoriteDao = FavoriteDao()
    
    var favoriteRepository: any FavoriteRepository {
        return FavoriteRepositoryImpl(dao: favoriteDao)
    }
    
    var getFavoritesUseCase: GetFavoritesUseCase {
        return GetFavoritesUseCase(repository: favoriteRepository)
    }
    
    var toggleFavoriteUseCase: ToggleFavoriteUseCase {
        return ToggleFavoriteUseCase(repository: favoriteRepository)
    }
    
    func makeViewModel() -> HomeViewModel {
        return HomeViewModel(getRecipes: getRecipesUseCase,
                             getFavorites: getFavoritesUseCase,
                             toggleFavorite: toggleFavoriteUseCase
        )
    }
}
