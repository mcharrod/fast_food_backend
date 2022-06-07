class CocktailsSerializer
  include JSONAPI::Serializer
  set_type: :cocktail
  attributes :name, :image
end
