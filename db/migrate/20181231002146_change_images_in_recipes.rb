class ChangeImagesInRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :images, :image
  end
end
