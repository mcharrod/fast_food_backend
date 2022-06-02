Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # namespace :recipes do
        get 'recipes/search', to: 'recipes#name_find'
        get 'recipes/find', to: 'recipes#id_find'
        get 'recipes/random_meal', to: 'recipes#random_find'
        get 'recipes/ingredient', to: 'recipes#ingredient_find'
        get 'recipes/category', to: 'recipes#category_find'
        get 'recipes/area', to: 'recipes#area_find'
      # end
      resources :users, except:[:index]
    end
  end
end
