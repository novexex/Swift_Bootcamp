//
//  Entity.swift
//  01
//
//  Created by Artour Ilyasov on 20.03.2023.
//

import Foundation

struct Recipe: Codable, Identifiable {
    var id = UUID()
    let name: String
    let description: String
    let steps: [String]
}
