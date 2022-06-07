# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(name: "Frank", email: "frankhdafgfad@g.com")
user2 = User.create(name: "tom", email: "king@g.com")
user3 = User.create(name: "nate", email: "nate@g.com")
User.create(name: "bill", email: "bill@g.com")
User.create(name: "timmy", email: "timmy@g.com")
User.create(name: "sue", email: "sue@g.com")
user1.saved_recipes.create(recipe_id: 5468, recipe_name: "soup")
user1.saved_recipes.create(recipe_id: 5445, recipe_name: "burrito")
user1.saved_recipes.create(recipe_id: 5465, recipe_name: "rice")
user2.saved_recipes.create(recipe_id: 5889, recipe_name: "beans")
user2.saved_recipes.create(recipe_id: 5123, recipe_name: "cheese")
user3.saved_recipes.create(recipe_id: 8968, recipe_name: "salt")