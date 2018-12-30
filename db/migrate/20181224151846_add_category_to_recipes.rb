class AddCategoryToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :category
  end
end
