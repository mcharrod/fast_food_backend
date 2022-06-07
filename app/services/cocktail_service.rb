class CocktailService
  def self.pair_cocktail_by_area(meal_area)
    response = conn.get('/api/json/v1/1/filter.php') do |faraday|
      faraday.params['i'] = meal_area
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://thecocktaildb.com') do |f|
      f.adapter Faraday.default_adapter
    end 
  end
end
