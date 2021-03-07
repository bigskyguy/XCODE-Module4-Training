//
//  RecipeListView.swift
//  Recipe List
//
//  Created by Jon Payne on 2/28/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        List(model.recipes) { r in
            
            HStack(spacing: 20.0) {
                Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width:50, height:50, alignment: .center)
                    .clipped()
                    .cornerRadius(5.0)
                Text(r.name)
                
                
            }
            
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
