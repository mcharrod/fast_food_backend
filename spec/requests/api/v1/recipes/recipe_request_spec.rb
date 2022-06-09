require 'rails_helper'

describe 'recipe request' do
  shared_examples 'Adheres to JSON API spec' do
    it 'it adheres to JSON API spec' do
      expect(parsed).to have_key(:type)
      expect(data).to be_a(klass)
    end
    it "returns status 200" do
      expect(response).to be_successful
    end
  end
  
  it '#name_find', :vcr do
    get '/api/v1/recipes/search?q=chicken'
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
  
  xit '#random_find' do
    # get '/api/v1/recipes/random_meal'
  end
  
  xit '#ingredient_find' do
    # get '/api/v1/'
  end
  
  xit '#category_find' do
    # get '/api/v1/'
  end

  xit 'returns a status 404 if query isnt valid', :vcr do 
    get '/api/v1/recipes/search?q=foobar'
    # binding.pry
  end
end
