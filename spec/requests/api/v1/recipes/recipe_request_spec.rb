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

  it '#name_find' do

    get '/api/v1/recipes/search?q=chicken'

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)

    this_recipe = parsed[:data].first

    expect(parsed[:data].last[:type]).to eq("recipe")

    expect(this_recipe).to have_key(:type)
    expect(this_recipe).to have_key(:id)
    expect(this_recipe).to have_key(:attributes)

    expect(this_recipe[:attributes]).to have_key(:area)
    expect(this_recipe[:attributes]).to have_key(:name)
    expect(this_recipe[:attributes]).to have_key(:category)
    expect(this_recipe[:attributes]).to have_key(:ingredients)
    expect(this_recipe[:attributes]).to have_key(:instructions)
    expect(this_recipe[:attributes][:ingredients]).to be_a(Hash)
  end

  it '#id_find' do
    # get '/api/v1/recipes/find?id=53051'
    #
    # expect(response.body).to eq("bingus")
  end

  it '#random_find' do
    # get '/api/v1/recipes/random_meal'
  end

  it '#ingredient_find' do
    # get '/api/v1/'
  end

  it '#category_find' do
    # get '/api/v1/'
  end
end
