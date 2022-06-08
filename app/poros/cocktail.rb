class Cocktail
  attr_reader :id, :name, :image, :ingredients, :instructions

  def initialize(cocktail_data)
    @id = cocktail_data[:idDrink]
    @name = cocktail_data[:strDrink]
    @image = cocktail_data[:strDrinkThumb]
    @ingredients = get_ingredients(cocktail_data)
    @instructions = cocktail_data[:strInstructions]
  end

  def get_ingredients(cocktail_data)
    ingredient_values = []
    cocktail_data.keys.select do |key|
      if key.to_s.include?("strIngredient")
        ingredient_values.push(cocktail_data[key])
      end
    end
    measurement_values = []
    cocktail_data.keys.select do |key|
      if key.to_s.include?("strMeasure")
        measurement_values.push(cocktail_data[key])
      end
    end
    ingredient_values.zip(measurement_values).to_h.compact
  end
end
