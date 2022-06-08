class Api::V1::CocktailsController < ApplicationController
  include Pairable
  def index
    cocktail_id = pair_by_drink(params[:area])
    cocktail = CocktailsFacade.find_cocktail_by_id(cocktail_area)
    render json: CocktailsSerializer.new(cocktail)
  end
end
