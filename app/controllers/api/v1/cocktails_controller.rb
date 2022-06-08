class Api::V1::CocktailsController < ApplicationController
  def paired_cocktail
    area = params[:area]
    cocktail = CocktailsFacade.cocktail_by_meal_area(area)
    render json: CocktailsSerializer.new(cocktail)
  end
end
