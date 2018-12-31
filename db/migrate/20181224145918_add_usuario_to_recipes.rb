class AddUsuarioToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :usuer
  end
end
