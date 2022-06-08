class CocktailsFacade
  include :pairable

  def self.cocktail_by_meal_area(area)
    drink_id = pair_my_drink(area)
    cocktails = CocktailService.pair_cocktail_by_area(drink_id)
  end
end
