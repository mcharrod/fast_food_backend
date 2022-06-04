class RecipesSerializer
  include JSONAPI::Serializer
  set_type :recipe
  attributes :name, :ingredients, :image, :instructions, :category, :area
end
