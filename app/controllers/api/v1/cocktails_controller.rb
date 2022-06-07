class Api::V1::CocktailsController < ApplicationController
  def paired_cocktail
    render json: CocktailsSerializer.new(CocktailsFacade.cocktail_by_pair(params[:area]))
  end
end
