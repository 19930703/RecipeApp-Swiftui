//
//  SearchDataManager.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import Foundation

class SearchDataManager: ObservableObject {
    
    static let shared = SearchDataManager()
    
    @Published var recipeList = [Recipe]()
    
    var originalRecipeList = [Recipe]()
    
    func setOriginalList(list:[Recipe]) {
        self.originalRecipeList = list
        self.recipeList = list
    }
    
    func resetToOriginal() {
        if recipeList.count != originalRecipeList.count {
            recipeList = originalRecipeList
        }
    }
    
    func setEmpty() {
        if !recipeList.isEmpty {
            recipeList.removeAll()
        }
    }
    
    func search(text: String) {
        recipeList = originalRecipeList.filter{ $0.title.lowercased().contains(text.lowercased()) }
    }
}
