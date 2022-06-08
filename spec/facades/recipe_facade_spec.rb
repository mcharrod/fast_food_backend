require 'rails_helper'

RSpec.describe 'Recipe Facade' do 
    it 'can return recipes by name' do 
        VCR.use_cassette("recipe_by_name") do
        recipe_name = "peas"
        recipes = RecipesFacade.find_recipes_by_name(recipe_name)
        # binding.pry
        expect(recipes).to be_a(Array)
        expect(recipes.first.name.downcase).to include(recipe_name)
        end 

    end
end