class Api::V1::SavedRecipesController < ApplicationController
    def create 
        SavedRecipe.create(save_recipe_params)
    end
    def index 
        user = User.find(params[:user_id])
        render json: SavedRecipesSerializer.new(user.saved_recipes)
    end

    def destroy 
        SavedRecipe.destroy(params[:id])
    end

    private 

    def save_recipe_params 
        params.permit(:user_id, :recipe_name, :recipe_id)
    end 

end