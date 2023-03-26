//
//  ContentView.swift
//  02&03
//
//  Created by Artour Ilyasov on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var recipes = [Recipe]()
    
    var body: some View {
        NavigationView {
            List(0..<recipes.count, id: \.self) { recipe in
                NavigationLink(destination: DetailView(recipe: recipes[recipe])) {
                    HStack {
                        Image(recipes[recipe].name)
                            .resizable()
                            .frame(width: 90, height: 90)
                        VStack {
                            Text(recipes[recipe].name)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(recipes[recipe].description)
                                .font(.system(size: 13))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .lineLimit(5)
                        }
                    }
                }
            }
            .onAppear {
                guard let url = Bundle.main.url(forResource: "recipes", withExtension: "json") else {
                    fatalError("Failed to find recipes.json")
                }
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let recipeData = try decoder.decode(RecipeData.self, from: data)
                    recipes = recipeData.recipes
                } catch {
                    print("Failed to parse JSON: \(error.localizedDescription)")
                }
            }
            .navigationTitle("Recipes")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top, -30)
        }
        
    }
}

struct DetailView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack {
                Image(recipe.name)
                    .resizable()
                    .frame(width: 360, height: 360)
                    .cornerRadius(30)
                Text(recipe.name)
                    .font(.system(size: 20, weight: .bold))
                    .padding()
                ForEach(recipe.steps.indices, id: \.self) { index in
                    Text("Step \(index+1):\n\(recipe.steps[index])")
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                        .padding(.top, -30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

