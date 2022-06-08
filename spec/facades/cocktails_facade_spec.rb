require "rails_helper"

describe CocktailsFacade do
  describe "class methods" do
    describe "#cocktail_by_id" do
      it "returns a cocktail PORO with data from the service using an id", :vcr do
        old_fashioned = CocktailsFacade.cocktail_by_id("11001")

        expect(old_fashioned).to be_a Cocktail
        expect(old_fashioned.id).to eq("11001")
        expect(old_fashioned.name).to eq("Old Fashioned")
        expect(old_fashioned.image).to eq("https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg")
        expect(old_fashioned.instructions).to eq("Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.")
        expect(old_fashioned.ingredients).to eq({
          "Bourbon" => "4.5 cL",
          "Angostura bitters" => "2 dashes",
          "Sugar" => "1 cube",
          "Water" => "dash"
        })
      end
    end
  end
end
