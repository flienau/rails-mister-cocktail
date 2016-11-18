class AddIngredientsAndCocktailsToDoses < ActiveRecord::Migration[5.0]
 def change
   add_reference :doses, :ingredient, foreign_key: true, index: true
   add_reference :doses, :cocktail, foreign_key: true, index: true
 end
end
