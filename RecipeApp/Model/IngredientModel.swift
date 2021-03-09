//
//  IngredientModel.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import Foundation

struct Ingredient:Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String
    var items: [IngredientItem]
}

struct IngredientItem:Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var done: Bool
}
