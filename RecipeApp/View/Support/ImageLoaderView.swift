//
//  ImageLoaderView.swift
//  RecipeApp
//
//  Created by Vijay Bhaskar on 01/02/21.
//

import SwiftUI

struct ImageLoaderView: View {
    // MARK: - PROPERTIES
    var imageUrl: String
    
    var body: some View {
        Image(imageUrl)
            .resizable()
            .scaledToFill()
    }
}

struct ImageLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLoaderView(imageUrl: "https://s3soft.com/wp-content/uploads/2020/03/logo-1.png")
    }
}
