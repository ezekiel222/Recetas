class AddColumnToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :descripcion, :text
  end
end
