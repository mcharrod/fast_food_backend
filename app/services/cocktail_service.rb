class CocktailService
  def self.find_cocktail_by_id(drink_id)
    response = conn.get("/api/json/v1/1/lookup.php?") do |c|
      c.params[:i] = drink_id
    end
    JSON.parse(response.body, symbolize_names: true)[:drinks][0]
  end

  def self.conn
    Faraday.new(url: "https://thecocktaildb.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
