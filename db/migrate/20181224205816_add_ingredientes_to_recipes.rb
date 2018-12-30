class AddIngredientesToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :ingredientes, :text
  end
end
