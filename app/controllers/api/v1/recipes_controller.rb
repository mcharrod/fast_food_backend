class Api::V1::RecipesController < ApplicationController
  def random_find
    render json: RecipesSerializer.new(RecipesFacade.find_random_recipe)
  end
  
  def id_find
    begin 
      render json: RecipesSerializer.new(RecipesFacade.find_recipe_by_id(params[:id]))
    rescue NoMethodError 
      render json: {text: "Hahah caught you! Sneaky Sneak, can't fool us", status: 404}
    end 
  end

  def name_find
    begin 
      render json: RecipesSerializer.new(RecipesFacade.find_recipes_by_name(params[:q]))
    rescue NoMethodError
      render json: {text: "Search produced no results"},  status: 404
    end 
  end

  def ingredient_find
    begin 
      render json: RecipesSerializer.new(RecipesFacade.find_recipes_by_ingredient(params[:q]))
    rescue NoMethodError 
      render json: {text: "Search produced no results"},  status: 404
    end 
  end

  def category_find
    render json: RecipesSerializer.new(RecipesFacade.find_recipes_by_category(params[:q]))
  end

  def area_find
    render json: RecipesSerializer.new(RecipesFacade.find_recipes_by_area(params[:q]))
  end
end
