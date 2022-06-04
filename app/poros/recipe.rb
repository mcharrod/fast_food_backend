class Recipe
  attr_reader :id,
              :name,
              :ingredients,
              :image,
              :instructions,
              :category,
              :area
  def initialize(recipe_data)
    @id = recipe_data[:idMeal]
    @name = recipe_data[:strMeal]
    @image = recipe_data[:strMealThumb]
    @ingredients = get_ingredients(recipe_data)
    @instructions = recipe_data[:strInstructions]
    @category = recipe_data[:strCategory]
    @area = recipe_data[:strArea]
  end

  def get_ingredients(recipe_data)
    ingredient_values = []

    recipe_data.keys.select do |key|
      if key.to_s.include?('strIngredient')
        ingredient_values.push(recipe_data[key])
      end
    end

    measurement_values = []

    recipe_data.keys.select do |key|
      if key.to_s.include?('strMeasure')
        measurement_values.push(recipe_data[key])
      end
    end

    Hash[ingredient_values.zip(measurement_values)]
  end
end
