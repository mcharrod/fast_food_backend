class Api::V1::RecipesController < ApplicationController
  def name_find
    recipes = RecipesFacade.find_recipes_by_name(params[:query])
    render json: RecipesSerializer.new(recipes)
  end

  def id_find
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
