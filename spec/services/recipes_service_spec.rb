require 'rails_helper'

describe 'recipe api service' do
  it 'searches by name of meal', :vcr do
    response = RecipeService.search_recipes_by_name("Spaghetti")
    expect(response[:meals]).to be_an(Array)
    expect(response[:meals].first[:strMeal]).to be_a(String)
    expect(response[:meals].first[:strInstructions]).to be_a(String)
  end

  it 'searches by id of meal', :vcr do
    response = RecipeService.search_recipe_by_id('52772')
    meal = response[:meals].first
    expect(meal[:idMeal]).to eq('52772')
  end

  it 'searches by main ingredient', :vcr do
    response = RecipeService.search_recipes_by_ingredient('chicken')
    expect(response[:meals]).to be_an(Array)
  end

  it 'filters by category', :vcr do
    response = RecipeService.search_recipes_by_category("dessert")
    expect(response[:meals]).to be_a(Array)
    meal = response[:meals].first
    expect(meal).to have_key(:idMeal)
    expect(meal).to have_key(:strMeal)
  end

  it 'will return a random recipe', :vcr do 
    random = RecipeService.search_random_recipe
    expect(random.count).to eq(1)
    expect(random[:meals][0]).to have_key(:strMeal)
  end

  it 'will return an array of recipes by the area', :vcr do 
    area = RecipeService.search_recipes_by_area("British")
    expect(area[:meals]).to be_an(Array)
    expect(area[:meals][0].keys).to eq([:strMeal, :strMealThumb, :idMeal])
    binding.pry
  end
end
