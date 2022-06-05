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

    expect(parsed[:type]).to eq("recipe")

    expect(parsed).to have_key(:type)
    expect(parsed).to have_key(:id)
    expect(parsed).to have_key(:attributes)

    expect(parsed[:attributes]).to have_key(:name)
    expect(parsed[:attributes]).to have_key(:category)
    expect(parsed[:attributes]).to have_key(:ingredients)
    expect(parsed[:attributes]).to have_key(:area)

    expect(parsed[:attributes]).to have_key(:instructions)
    expect(parsed[:attributes][:ingredients]).to be_a(Hash)
  end

  it '#id_find' do
  end

  it '#random_find' do
  end

  it '#ingredient_find' do
  end

  it '#category_find' do
  end
end
