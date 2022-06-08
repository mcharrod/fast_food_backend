module Pairable
  def pair_drink_by_area(area)
    areas = ["American", "British", "Canadian", "Chinese", "Croatian",
      "Dutch", "Egyptian", "French", "Greek", "Indian", "Irish",
      "Italian", "Jamaican", "Japanese", "Malaysian",
      "Mexican", "Moroccan", "Polish", "Portuguese", "Russian",
      "Spanish", "Thai", "Tunisian", "Turkish", "Vietnamese"]
    case area
    when "American"
      # old fashioned, manhattan, mint julep
      ["11001", "11008", "17206"].sample
    when "British"
      # martini, pimm's cup, gin fizz
      ["11728", "17210", "11410"].sample
    when "Canadian"
      # old fashioned, gin fizz, #bloody mary
      ["11001", "11410", "11113"].sample
    when "Chinese"
      # singapore sling, pegu club
      ["12214", "17249"].sample
    when "Croatian"
      # white russian, moscow mule, black russian
      ["12528", "11009", "11102"].sample
    when "Dutch"
      # flying dutchman, gin fizz,
      ["11368", "11410", "12402"].sample
    when "Egyptian"
      # wine punch, mulled wine, port wine cocktail
      ["13058", "12988", "11963"].sample
    when "French"
      # french 75, french martini, french connection
      ["17197", "17213", "17198"].sample
    when "Greek"
      # wine punch, mulled wine, port wine cocktail
      ["13058", "12988", "11963"].sample
    when "Indian"
      # lassi - a south indian drink, mango mojito
      ["12690", "178358"].sample
    when "Irish"
      # irish coffee, irish spring, nutty irishman
      ["13971", "11528", "13861"].sample
    when "Italian"
      # negroni, autum garibaldi, bellini
      ["11003", "178337", "17195"].sample
    when "Jamaican"
      # jamaican coffee, mojito, caribbean boilermaker
      ["15825", "11000", "17065"].sample
    when "Japanese"
      # japanese fizz, kamikaze, pegu club
      ["11558", "11600", "17249"].sample
    when "Kenyan"
      pair_my_drink(areas.sample)
    when "Malaysian"
      # singapore sling, pegu club
      ["12214", "17249"].sample
    when "Mexican"
      # margarita, blue margarita, strawberry margarita
      ["11007", "11118", "12322"].sample
    when "Moroccan"
      # wine punch, mulled wine, port wine cocktail
      ["13058", "12988", "11963"].sample
    when "Polish"
      # white russian, moscow mule, black russian
      ["12528", "11009", "11102"].sample
    when "Portuguese"
      # sangria, white wine sangria, sweet sangria
      ["13020", "178326", "13024"].sample
    when "Russian"
      # white russian, moscow mule, black russian
      ["12528", "11009", "11102"].sample
    when "Spanish"
      # sangria, white wine sangria, sweet sangria
      ["13020", "178326", "13024"].sample
    when "Thai"
      # singapore sling, pegu club
      ["12214", "17249"].sample
    when "Tunisian"
      # wine punch, mulled wine, port wine cocktail
      ["13058", "12988", "11963"].sample
    when "Turkish"
      # white russian, moscow mule, black russian
      ["12528", "11009", "11102"].sample
    when "Unknown"
      pair_my_drink(areas.sample)
    when "Vietnamese"
      # singapore sling, pegu club
      ["12214", "17249"].sample
    end
  end
end
