require "rails_helper"

describe CocktailService do
  describe "class methods" do
    describe "find cocktail by id" do
      it "returns a cocktail by its id", :vcr do
        old_fashioned = CocktailService.find_cocktail_by_id("11001")

        expect(old_fashioned).to be_a Hash
        expect(old_fashioned[:idDrink]).to eq("11001")
        expect(old_fashioned[:strDrink]).to eq("Old Fashioned")
        expect(old_fashioned[:strDrinkThumb]).to eq("https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg")
        expect(old_fashioned[:strInstructions]).to eq("Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.")
      end
    end
  end
end
