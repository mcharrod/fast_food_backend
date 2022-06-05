class RecipesFacade
  def self.find_recipes_by_name(recipe_name)
    recipes = RecipeService.search_recipes_by_name(recipe_name)
    recipes[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end

  def self.find_recipe_by_id(recipe_id)
    recipe = RecipeService.search_recipe_by_id(recipe_id)
      Recipe.new(recipe[:meals].first)
  end

  def self.find_random_recipe
    recipe = RecipeService.search_random_recipe
      Recipe.new(recipe[:meals].first)
  end

  def self.find_recipes_by_ingredient(ingredient)
    recipes = RecipeService.search_recipes_by_ingredient(ingredient)
    recipes[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end

  def self.find_recipes_by_category(category)
    recipes = RecipeService.search_recipes_by_category(category)
    recipes[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end

  def self.find_recipes_by_area(area)
    recipes = RecipeService.search_recipes_by_area(area)
    recipes[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end
end
