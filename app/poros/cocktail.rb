class Cocktail
  attr_reader :id,
              :name,
              :image

  def initialize(cocktail_data)
    @id = cocktail_data[:idDrink]
    @name = cocktail_data[:strDrink]
    @image = cocktail_data[:strDrinkThumb]
  end
end
