class Api::V1::SavedRecipesController < ApplicationController
    def create 
        SavedRecipe.create(save_recipe_params)
    end
    def index 
        user = User.find(:user_id)
        render json: RecipesSerializer.new(user.saved_recipes)
    end

    private 

    def save_recipe_params 
        params.permit(:user_id, :recipe_name, :recipe_id)
    end 

end