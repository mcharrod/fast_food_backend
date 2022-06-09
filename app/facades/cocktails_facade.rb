class CocktailsFacade
  def self.cocktail_by_id(drink_id)
    cocktail_data = CocktailService.find_cocktail_by_id(drink_id)
    Cocktail.new(cocktail_data)
  end
end
