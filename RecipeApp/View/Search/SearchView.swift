//
//  SearchView.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var searchVM = SearchViewModel()
    @ObservedObject var searchManager = SearchDataManager.shared
    
    var body: some View {
        VStack {
            SearchBarView(text: $searchVM.searchText, isEditing: $searchVM.isSearching)
                .padding(.vertical, 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    ForEach(searchManager.recipeList) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 160)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
