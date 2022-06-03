class RecipesFacade
  def self.find_recipes_by_name(recipe_name)
    recipes = RecipeService.search_for_meal_by_name(recipe_name)
    recipes[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end
end
