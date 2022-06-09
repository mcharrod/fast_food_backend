require 'rails_helper'

RSpec.describe 'Recipe Facade' do 
    it 'can return recipes by name' do 
        VCR.use_cassette("recipe_by_name") do
        recipe_name = "peas"
        recipes = RecipesFacade.find_recipes_by_name(recipe_name)
        expect(recipes).to be_a(Array)
        expect(recipes.first.name.downcase).to include(recipe_name)
        end 
    end
    it 'having a bad value for search by name will return a 404' do 
        VCR.use_cassette("no_recipe_name_search") do
        recipe_name = "foobar"
        RecipesFacade.find_recipes_by_name(recipe_name)
        end 
    end
    it 'having a bad value for ingredient will return a 404' do 
        VCR.use_cassette("no_recipe_by_ingredient") do
        ingredient = "foobar"
        RecipesFacade.find_recipes_by_ingredient(ingredient)

        end 
    end
    it 'having a bad value for id will return a 404' do 
        VCR.use_cassette("no_recipe_by_id") do
        id = 548846512545
        RecipesFacade.find_recipe_by_id(id)
        end 
    end
end