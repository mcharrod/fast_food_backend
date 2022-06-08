class Api::V1::CocktailsController < ApplicationController
  include Pairable
  def index
    cocktail_id = pair_drink_by_area(params[:area])
    cocktail = CocktailsFacade.cocktail_by_id(cocktail_id)
    render json: CocktailsSerializer.new(cocktail)
  end
end
