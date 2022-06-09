class RecipesFacade
  def self.find_recipes_by_name(recipe_name)
    make_some_poros(RecipeService.search_recipes_by_name(recipe_name))
  end

  def self.find_recipes_by_area(area)
    make_some_poros(RecipeService.search_recipes_by_area(area))
  end

  def self.find_recipes_by_ingredient(ingredient)
    make_some_poros(RecipeService.search_recipes_by_ingredient(ingredient))    
  end

  def self.find_recipes_by_category(category)
    make_some_poros(RecipeService.search_recipes_by_category(category))    
  end

  def self.find_recipe_by_id(recipe_id)
    Recipe.new(RecipeService.search_recipe_by_id(recipe_id)[:meals][0])
  end

  def self.find_random_recipe
    Recipe.new(RecipeService.search_random_recipe[:meals][0])
  end

  def self.make_some_poros(data)
      data[:meals].map {|recipe| Recipe.new(recipe)}
  end
end
