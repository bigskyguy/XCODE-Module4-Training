//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Jon Payne on 2/28/21.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
    }
}
