class RecipesFacade
  def self.find_recipes_by_name(recipe_name)
    recipes = RecipeService.search_recipes_by_name(recipe_name)

    make_some_poros(recipes)
  end

  def self.find_recipes_by_area(area)
    recipes = RecipeService.search_recipes_by_area(area)

    make_some_poros(recipes)
  end

  def self.find_recipes_by_ingredient(ingredient)
    recipes = RecipeService.search_recipes_by_ingredient(ingredient)

    make_some_poros(recipes)
  end

  def self.find_recipes_by_category(category)
    recipes = RecipeService.search_recipes_by_category(category)

    make_some_poros(recipes)
  end

  def self.find_recipe_by_id(recipe_id)
    recipe = RecipeService.search_recipe_by_id(recipe_id)[:meals].first

    Recipe.new(recipe)
  end


  def self.find_random_recipe
    recipe = RecipeService.search_random_recipe[:meals].first

    Recipe.new(recipe)
  end

  def self.make_some_poros(data)
    data[:meals].map do |recipe|
      Recipe.new(recipe)
    end
  end
end
