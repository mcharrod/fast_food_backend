

class RecipeService
  def self.search_for_meal_by_name(meal_name)
    response = conn.get('/api/json/v1/1/search.php') do |faraday|
      faraday.params['s'] = "spaghetti"
      # faraday.params['api_key'] = 1
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end

  def self.conn
    Faraday.new(url: 'https://themealdb.com') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
