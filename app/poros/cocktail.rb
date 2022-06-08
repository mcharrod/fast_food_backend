class Cocktail
  attr_reader :id, :name, :image, :ingredients, :instructions

  def initialize(cocktail_data)
    @id = cocktail_data[:idDrink]
    @name = cocktail_data[:strDrink]
    @image = cocktail_data[:strDrinkThumb]
    @ingredients = get_ingredients(cocktail_data)
    @instructions = cocktail_data[:strInstructions]
  end
end
