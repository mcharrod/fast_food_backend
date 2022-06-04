class Api::V1::RecipesController < ApplicationController
  def name_find
    recipes = RecipesFacade.find_recipes_by_name(params[:query])
    render json: RecipesSerializer.new(recipes)
  end

  def id_find
    recipe_id = params[:id]
    recipe = RecipesFacade.find_recipe_by_id(recipe_id)
    render json: RecipesSerializer.new(recipe)
  end

  def random_find
  end

  def ingredient_find
  end

  def category_find
  end

  def area_find
  end
end
