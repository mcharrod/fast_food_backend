require 'rails_helper'

describe 'recipe api service' do
  it 'searches by name of meal' do
    response = RecipeService.search_recipes_by_name("Spaghetti")

    expect(response[:meals]).to be_an(Array)
    expect(response[:meals].first[:strMeal]).to be_a(String)
    expect(response[:meals].first[:strInstructions]).to be_a(String)
  end

  it 'searches by id of meal' do
    response = RecipeService.search_recipe_by_id('52772')
    meal = response[:meals].first

    expect(meal[:idMeal]).to eq('52772')
  end

  it 'searches by main ingredient' do
    response = RecipeService.search_recipes_by_ingredient('chicken')

    expect(response[:meals]).to be_an(Array)

    # response[:meals].each do |meal|
    #   expect(meal[:strMeal].upcase).to include("CHICKEN")
    # end
  end

  it 'filters by category' do
    response = RecipeService.search_recipes_by_category("dessert")

    expect(response[:meals]).to be_a(Array)

    meal = response[:meals].first

    expect(meal).to have_key(:idMeal)
    expect(meal).to have_key(:strMeal)
  end
end
