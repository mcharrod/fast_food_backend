require 'rails_helper'

describe 'something' do
  it 'does thing' do
    response = RecipeService.search_for_meal_by_name("Spaghetti")

    expect(response[:meals]).to be_an(Array)
    expect(response[:meals].first[:strMeal]).to be_a(String)
    expect(response[:meals].first[:strInstructions].first[:strMeal]).to be_a(String)

    # expect status to be 200
    # expect a string to be a string etc
  end
end
