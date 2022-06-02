require 'rails_helper'

describe 'recipe api service' do
  it 'searches by name of meal' do
    response = RecipeService.search_for_meal_by_name("Spaghetti")

    expect(response[:meals]).to be_an(Array)
    expect(response[:meals].first[:strMeal]).to be_a(String)
    expect(response[:meals].first[:strInstructions].first[:strMeal]).to be_a(String)
  end

  it 'searches by id of meal' do
    response = RecipeService.search_meal_by_id('52772')
    meal = response[:meals].first

    expect(meal[:idMeal]).to eq('52772')
  end
end
