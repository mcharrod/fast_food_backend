class RecipeService
  def self.search_for_meal_by_name(meal_name)
    response = conn.get('/api/json/v1/1/search.php') do |faraday|
      faraday.params['s'] = meal_name
      # faraday.params['api_key'] = 1
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_meal_by_id(meal_id)
    response = conn.get('/api/json/v1/1/lookup.php') do |faraday|
      faraday.params['i'] = meal_id
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_meal_by_main_ingredient(ingredient)
    response = conn.get('/api/json/v1/1/filter.php') do |faraday|
      faraday.params['i'] = ingredient
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end


  def self.conn
    Faraday.new(url: 'https://themealdb.com') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
