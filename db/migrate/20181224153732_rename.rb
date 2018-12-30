class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :users
  end
end
