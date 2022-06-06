require 'rails_helper'

RSpec.describe'Saved Recipes Requests' do 
    it 'can create a new saved recipe' do
        user = create(:user)
        post "/api/v1/saved_recipes?user_id=#{user.id};recipe_id=55647;recipe_name=chicken"

    end

    it 'can return all saved recipes for a given user' do 

    end
end