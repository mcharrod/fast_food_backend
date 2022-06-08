class CocktailsFacade
  include :pairable

  def self.cocktail_by_id(drink_id)
    cocktail_data = CocktailService.pair_cocktail_by_area(drink_id)
    Cocktail.new(cocktail_data)
  end
end
