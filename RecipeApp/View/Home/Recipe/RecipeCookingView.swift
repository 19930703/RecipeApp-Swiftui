//
//  RecipeCookingView.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            })
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)\(unitNamePrep)")
            })
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)\(unitNameCooking)")
            })
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: sampleRecipes[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
