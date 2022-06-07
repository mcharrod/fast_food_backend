class SavedRecipesSerializer
  include JSONAPI::Serializer
  attributes :user_id, :recipe_name, :recipe_id
end