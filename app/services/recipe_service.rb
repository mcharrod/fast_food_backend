class RecipeService
  def self.search_recipes_by_name(meal_name)
    response = conn.get('/api/json/v1/1/search.php') do |faraday|
      faraday.params['s'] = meal_name
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_recipe_by_id(meal_id)
    response = conn.get('/api/json/v1/1/lookup.php') do |faraday|
      faraday.params['i'] = meal_id
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_random_recipe 
    response = conn.get('/api/json/v1/1/random.php')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_recipes_by_ingredient(ingredient)
    response = conn.get('/api/json/v1/1/filter.php') do |faraday|
      faraday.params['i'] = ingredient
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_recipes_by_category(category)
    response = conn.get('/api/json/v1/1/filter.php') do |faraday|
      faraday.params['c'] = category
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_recipes_by_area(area)
    response = conn.get('/api/json/v1/1/filter.php') do |faraday|
      faraday.params['a'] = area
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://themealdb.com') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
