require 'rails_helper'

describe 'recipe poro' do
  it 'makes a hash for ingredients' do

    recipe_attributes = {idMeal: "52771",
                        strMeal: "Spicy Arrabiata Penne",
                        strIngredient1: "penne rigate",
                        strIngredient2: "olive oil",
                        strIngredient3: "garlic",
                        strIngredient4: nil,
                        strMeasure1: "1 cup",
                        strMeasure2: "2 cup",
                        strMeasure3: "3 cup",
                        strMeasure4: nil}
    recipe = Recipe.new(recipe_attributes)

    expect(recipe.ingredients).to be_a(Hash)
    expect(recipe.ingredients).to eq({"penne rigate"=>"1 cup", "olive oil"=>"2 cup", "garlic"=>"3 cup"})
    expect(recipe.ingredients.keys).to_not include(nil)
  end
end
