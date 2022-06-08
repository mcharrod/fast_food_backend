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
      strIngredient5: null,
      strIngredient6: null,
      strIngredient7: null,
      strIngredient8: null,
      strIngredient9: null,
      strIngredient10: null,
      strIngredient11: null,
      strIngredient12: null,
      strIngredient13: null,
      strIngredient14: null,
      strIngredient15: null,
      strMeasure1: "4.5 cL",
      strMeasure2: "2 dashes",
      strMeasure3: "1 cube",
      strMeasure4: "dash",
      strMeasure5: null,
      strMeasure6: null,
      strMeasure7: null,
      strMeasure8: null,
      strMeasure9: null,
      strMeasure10: null,
      strMeasure11: null,
      strMeasure12: null,
      strMeasure13: null,
      strMeasure14: null,
      strMeasure15: null
    }

    old_fashioned = Cocktail.new(attributes)

    ingredients = {
      "Bourbon" => "4.5 cL",
      "Angostura bitters" => "2 dashes",
      "Sugar" => "1 cube",
      "Water" => "dash"
    }

    expect(old_fashioned.id).to eq("11001")
    expect(old_fashioned.name).to eq("Old Fashioned")
    expect(old_fashioned.image).to eq("https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg")
    expect(old_fashioned.instructions).to eq("Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.")
    expect(old_fashioned.ingredients).to eq(ingredients)
  end
end
