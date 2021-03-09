//
//  RecipeViewModel.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import SwiftUI

// MARK: - RECIPE DATA

final class RecipeViewModel: ObservableObject {

    @Published var favorite: Bool = false
    
    var recipe: Recipe
    
    init(recipe: Recipe) {
        self.recipe = recipe
        
        let data = UserDefaults.standard.data(forKey: keyFavorites)
        if (data != nil) {
            let favoriteRecipes = try! JSONDecoder().decode([Recipe].self, from: data!)
            if favoriteRecipes.firstIndex(of: recipe) != nil {
                self.favorite = true
            }
        }
    }
}

extension RecipeViewModel {
    func setFavorite(flag: Bool) {
        self.favorite = flag
    }
}
