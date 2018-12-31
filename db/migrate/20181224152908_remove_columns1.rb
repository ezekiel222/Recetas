class RemoveColumns1 < ActiveRecord::Migration[5.2]
  def change
    remove_columns :recipes, :usuario
  end
end
