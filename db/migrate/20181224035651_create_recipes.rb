class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :titulo
      t.text :cuerpo
      t.integer :categoria_id
      t.integer :user_id

      t.timestamps
    end
  end
end
