class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :categoria_id
  end
end
