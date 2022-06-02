Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Search meal by name - /api/v1/recipe/search?q=“pizza”
  namespace :api do
    namespace :v1 do
      resources :users, except:[:index]

      namespace :recipe do
        get 'search', to: 'recipes#name_find'
        get 'find', to: 'recipes#id_find'
        get 'random_meal', to: 'recipes#random_find'
        get 'ingredient', to: 'recipes#ingredient_find'
        get 'category', to: 'recipes#category_find'
        get 'area', to: 'recipes#area_find'
      end
# Search meal by name - /api/v1/recipe/search?q=“pizza”
# Lookup full meal details by id - /api/v1/recipe/find?id=1123
# Lookup a single random meal - /api/v1/recipe/random_meal
# Filter by main ingredient - /api/v1/recipe/ingredient?q=“onion”
# Filter by Category - /api/v1/recipe/category?q=“dessert”
# Filter by Area - /api/v1/recipe/area?q=“italy”

      # get '/api/v1/recipe/search', to: 'recipe#'
    end
  end
end
