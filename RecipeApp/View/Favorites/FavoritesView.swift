//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//
import SwiftUI

struct FavoritesView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var favoriteViewModel: FavoriteViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    ForEach(favoriteViewModel.favoriteRecipes) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
            }
            .navigationBarTitle(Text("Favorites"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .environmentObject(FavoriteViewModel())   
    }
}
