require "rails_helper"

describe "recipe request" do
  it "#name_find", :vcr do
    # it_behaves_like 'Adheres to JSON API spec'()

    get "/api/v1/recipes/search?q=chicken"
    
    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
    parsed.each do |recipe|
      expect(recipe).to have_key(:type)
      expect(recipe).to have_key(:id)
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:area)
      expect(recipe[:attributes]).to have_key(:name)
      expect(recipe[:attributes]).to have_key(:category)
      expect(recipe[:attributes]).to have_key(:ingredients)
      expect(recipe[:attributes]).to have_key(:instructions)
      expect(recipe[:attributes][:ingredients]).to be_a(Hash)
    end 
  end
  
  it '#id_find', :vcr do
    get '/api/v1/recipes/find?id=52893'
    expect(response).to be_successful
    recipe = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(recipe).to have_key(:type)
    expect(recipe).to have_key(:id)
    expect(recipe).to have_key(:attributes)
    expect(recipe[:attributes]).to have_key(:area)
    expect(recipe[:attributes]).to have_key(:name)
    expect(recipe[:attributes]).to have_key(:category)
    expect(recipe[:attributes]).to have_key(:ingredients)
    expect(recipe[:attributes]).to have_key(:instructions)
    expect(recipe[:attributes][:ingredients]).to be_a(Hash)
  end
  
  it '#random_find', :vcr do
    get '/api/v1/recipes/random_meal'
    expect(response).to be_successful
    recipe = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(recipe).to have_key(:type)
    expect(recipe).to have_key(:id)
    expect(recipe).to have_key(:attributes)
    expect(recipe[:attributes]).to have_key(:area)
    expect(recipe[:attributes]).to have_key(:name)
    expect(recipe[:attributes]).to have_key(:category)
    expect(recipe[:attributes]).to have_key(:ingredients)
    expect(recipe[:attributes]).to have_key(:instructions)
    expect(recipe[:attributes][:ingredients]).to be_a(Hash)
  end
  
  it '#ingredient_find', :vcr do
    get '/api/v1/recipes/ingredient?q=tomato'
    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
    parsed.each do |recipe|
      expect(recipe).to have_key(:type)
      expect(recipe).to have_key(:id)
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:area)
      expect(recipe[:attributes]).to have_key(:name)
      expect(recipe[:attributes]).to have_key(:category)
      expect(recipe[:attributes]).to have_key(:ingredients)
      expect(recipe[:attributes]).to have_key(:instructions)
      expect(recipe[:attributes][:ingredients]).to be_a(Hash)
    end 
  end
  
  it '#category_find', :vcr do
    get '/api/v1/recipes/category?q=dessert'
    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
    parsed.each do |recipe|
      expect(recipe).to have_key(:type)
      expect(recipe).to have_key(:id)
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:area)
      expect(recipe[:attributes]).to have_key(:name)
      expect(recipe[:attributes]).to have_key(:category)
      expect(recipe[:attributes]).to have_key(:ingredients)
      expect(recipe[:attributes]).to have_key(:instructions)
      expect(recipe[:attributes][:ingredients]).to be_a(Hash)  
    end
  end 
  
  it '#area_find', :vcr do
    get '/api/v1/recipes/area?q=British'
    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
    parsed.each do |recipe|
      expect(recipe).to have_key(:type)
      expect(recipe).to have_key(:id)
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:area)
      expect(recipe[:attributes]).to have_key(:name)
      expect(recipe[:attributes]).to have_key(:category)
      expect(recipe[:attributes]).to have_key(:ingredients)
      expect(recipe[:attributes]).to have_key(:instructions)
      expect(recipe[:attributes][:ingredients]).to be_a(Hash)  
    end
  end 

  it 'returns a status 404 if name search query produces no results', :vcr do 
    get '/api/v1/recipes/search?q=foobar'
    expect(response.status).to eq(404)
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:text]).to eq("Search produced no results")
  end

  it 'returns a status of 404 if ingredient search produces no results', :vcr do 
    get '/api/v1/recipes/ingredient?q=foobar'
    expect(response.status).to eq(404)
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:text]).to eq("Search produced no results")
  end
  
  it 'returns a status of 404 if id search produces no results', :vcr do 
    get '/api/v1/recipes/find?id=123'
    expect(response.status).to eq(404)
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:text]).to eq("Search produced no results")
  end
end
