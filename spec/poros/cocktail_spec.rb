require "rails_helper"

describe Cocktail do
  it "exists and has attributes" do
    attributes = {
      idDrink: "11001",
      strDrink: "Old Fashioned",
      strGlass: "Old-fashioned glass",
      strInstructions: "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.",
      strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg",
      strIngredient1: "Bourbon",
      strIngredient2: "Angostura bitters",
      strIngredient3: "Sugar",
      strIngredient4: "Water",
      strIngredient5: nil,
      strIngredient6: nil,
      strIngredient7: nil,
      strIngredient8: nil,
      strIngredient9: nil,
      strIngredient10: nil,
      strIngredient11: nil,
      strIngredient12: nil,
      strIngredient13: nil,
      strIngredient14: nil,
      strIngredient15: nil,
      strMeasure1: "4.5 cL",
      strMeasure2: "2 dashes",
      strMeasure3: "1 cube",
      strMeasure4: "dash",
      strMeasure5: nil,
      strMeasure6: nil,
      strMeasure7: nil,
      strMeasure8: nil,
      strMeasure9: nil,
      strMeasure10: nil,
      strMeasure11: nil,
      strMeasure12: nil,
      strMeasure13: nil,
      strMeasure14: nil,
      strMeasure15: nil
    }

    old_fashioned = Cocktail.new(attributes)

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
