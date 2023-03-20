//
//  Entity.swift
//  02&03
//
//  Created by Artour Ilyasov on 20.03.2023.
//

import Foundation

struct Recipe: Codable {
    let name: String
    let description: String
    let steps: [String]
}

struct RecipeData: Codable {
    let recipes: [Recipe]
}
