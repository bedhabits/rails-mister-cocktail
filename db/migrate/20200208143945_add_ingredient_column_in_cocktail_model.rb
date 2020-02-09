class AddIngredientColumnInCocktailModel < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :ingredient, :text
  end
end
