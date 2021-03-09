//
//  RecipeListViewModel.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import Foundation

// MARK: - RECIPES DATA

final class RecipeListViewModel: ObservableObject {
    
    @Published var dataIsLoading: Bool = false
    @Published var dataEditorChoiceIsLoading: Bool = false
    @Published var dataTrendingIsLoading: Bool = false
    @Published var recipeData: [Recipe] = []
    @Published var editorRecipesData: [Recipe] = []
    @Published var trendingRecipesData: [Recipe] = []
    
    init() {
        readAllData()
    }
    
    func readAllData() {
        
        self.dataIsLoading = true
        self.dataEditorChoiceIsLoading = true
        self.dataTrendingIsLoading = true
        
        self.recipeData = []
        self.editorRecipesData = []
        self.trendingRecipesData = []
        
        self.recipeData = sampleRecipes
        
        SearchDataManager.shared.setOriginalList(list: self.recipeData)
        
        for recipe in self.recipeData {
            // Add editor's list if flag true
            if recipe.isEditorChoice {
                self.editorRecipesData.append(recipe)
            }
            // Add trendings's list if flag true
            if recipe.isTrending {
                self.trendingRecipesData.append(recipe)
            }
        }
        
        self.dataIsLoading = false
        self.dataEditorChoiceIsLoading = false
        self.dataTrendingIsLoading = false
    }
    
}

