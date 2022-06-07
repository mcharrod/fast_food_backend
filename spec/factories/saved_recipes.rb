FactoryBot.define do
  factory :saved_recipe do
    association :user, factory: :user
    recipe_name { Faker::Food.dish }
    recipe_id { Faker::Bank.account_number(digits: 6) }
  end
end
