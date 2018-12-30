class RemoveColumns1 < ActiveRecord::Migration[5.2]
  def change
    remove_columns :recipes, :user, :user_id
  end
end
