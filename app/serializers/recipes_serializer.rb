class RecipesSerializer
  include JSONAPI::Serializer
  attributes :name, :ingredients, :image, :instructions

  set_type :recipe
end
