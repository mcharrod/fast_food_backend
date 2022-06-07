require 'rails_helper'

RSpec.describe'Saved Recipes Requests' do 
    it 'can create a new saved recipe' do
        user = create(:user)
        post "/api/v1/saved_recipes?user_id=#{user.id};recipe_id=55647;recipe_name=chicken"
        expect(user.saved_recipes.count).to eq(1)
        expect(user.saved_recipes.first.recipe_name).to eq("chicken")
    end

    it 'can return all saved recipes for a given user' do 
        user = create(:user)
        create_list(:saved_recipe, 10, user_id: user.id)
        get "/api/v1/saved_recipes?user_id=#{user.id}"
        expect(response).to be_successful 
        recipes = JSON.parse(response.body, symbolize_names: true)[:data]
        expect(recipes.count).to eq(10)
        expect(recipes).to be_an(Array)
    end

    it "a user can remove a recipe from their saved list" do 
        user = create(:user)
        create_list(:saved_recipe, 10, user_id: user.id)
        recipe = create(:saved_recipe, user_id: user.id)
        delete "/api/v1/saved_recipes/#{recipe.id}"
        expect(SavedRecipe.all.count).to eq(10)
        expect(SavedRecipe.ids).to_not include(recipe.id)
    end
end