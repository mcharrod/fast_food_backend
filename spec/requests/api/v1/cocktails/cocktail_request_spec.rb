require "rails_helper"

describe "cocktail request" do
  describe "get request for a paired cocktail with area param" do
    it "returns data for some cocktail poro paired up by the area passed in as a param", :vcr do
      get "/api/v1/cocktail", params: {area: "American"}

      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(response_body[:data]).to be_a Hash
    end
  end
end
