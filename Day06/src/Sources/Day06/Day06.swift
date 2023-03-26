import RealmSwift

@main
public struct Day06 {
    public static func main() {
        let db = RecipeDatabase()

        // CREATE operation
        db.addRecipe(title: "Pancakes", instruction: "1. Mix flour and eggs. 2. Add milk and mix again. 3. Cook in a pan.", photoURL: "https://example.com/pancakes.jpg")
        db.addRecipe(title: "Spaghetti Bolognese", instruction: "1. Cook spaghetti. 2. Brown ground beef. 3. Add tomato sauce and simmer. 4. Serve on top of spaghetti.", photoURL: "https://example.com/spaghetti.jpg")

        // READ operation
        let recipes = db.getRecipes()
        print("All recipes:")
        recipes.forEach { recipe in
            print(recipe.title)
        }

        // DELETE operation
        if let firstRecipe = recipes.first {
            db.deleteRecipe(recipe: firstRecipe)
            print("Deleted first recipe.")
        }

        // UPDATE operation
        if let firstRecipe = recipes.first {
            db.updateRecipeTitle(recipe: firstRecipe, newTitle: "Blueberry Pancakes")
            print("Updated first recipe title to Blueberry Pancakes.")
        }

        // SEARCH operation
        let searchResults = db.searchRecipe(title: "spaghetti")
        print("Search results:")
        searchResults.forEach { recipe in
            print(recipe.title)
        }
    }
}
