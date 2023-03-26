import RealmSwift

class Recipe: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var instruction: String = ""
    @objc dynamic var photoURL: String = ""
}

class RecipeDatabase {
    let realm = try! Realm()
    
    // CREATE operation
    func addRecipe(title: String, instruction: String, photoURL: String) {
        let recipe = Recipe()
        recipe.title = title
        recipe.instruction = instruction
        recipe.photoURL = photoURL
        try! realm.write {
            realm.add(recipe)
        }
    }
    
    // READ operation
    func getRecipes() -> Results<Recipe> {
        let recipes = realm.objects(Recipe.self)
        return recipes
    }
    
    // UPDATE operation
    func updateRecipeTitle(recipe: Recipe, newTitle: String) {
        try! realm.write {
            recipe.title = newTitle
        }
    }
    
    // DELETE operation
    func deleteRecipe(recipe: Recipe) {
        try! realm.write {
            realm.delete(recipe)
        }
    }
    
    // SEARCH operation
    func searchRecipe(title: String) -> Results<Recipe> {
        let recipes = realm.objects(Recipe.self).filter("title CONTAINS[c] %@", title)
        return recipes
    }
}
