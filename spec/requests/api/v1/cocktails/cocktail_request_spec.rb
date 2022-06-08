require "rails_helper"

describe "cocktail request" do
  describe "get request for a paired cocktail with area param", :vcr do
    it "returns data for some cocktail poro paired up by the area passed in as a param" do
      get "/api/v1/cocktail", params: {area: "American"}

      response_body = JSON.parse(response.body, symbolize_names: true)
      binding.pry
    end
  end
end
