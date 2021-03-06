require 'rails_helper'

RSpec.describe SavedRecipe, type: :model do
  it 'belongs to a user' do
    user = create(:user)
    recipe = create(:saved_recipe, user_id: user.id)
    expect(user.saved_recipes.count).to eq 1
    expect(recipe.user_id).to eq(user.id)
  end

  it 'user can have many' do 
    user = create(:user)
    create_list(:saved_recipe, 10, user_id: user.id)
    expect(user.saved_recipes.count).to eq(10)
  end
end
