class CocktailService
  def self.find_cocktail_by_id(drink_id)
    response = conn.get("/api/json/v1/1/lookup.php?") do |faraday|
      faraday.params["i"] = drink_id # result of pairable helper
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://thecocktaildb.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
