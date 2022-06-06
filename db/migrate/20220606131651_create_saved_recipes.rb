class CreateSavedRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_recipes do |t|
      t.references :user, foreign_key: true
      t.string :recipe_name
      t.string :recipe_id
    end
  end
end
