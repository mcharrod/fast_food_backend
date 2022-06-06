require 'rails_helper'

RSpec.describe SavedRecipe, type: :model do
  it 'belongs to a user' do
    user = create(:user)
    recipe = create(:saved_recipe, user_id: user.id)
    expect(user.saved_recipes.count).to eq 1
    expect(recipe.user_id).to eq(user.id)
  end
end
