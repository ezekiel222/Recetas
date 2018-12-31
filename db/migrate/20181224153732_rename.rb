class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_table :usuarios, :users
  end
end
