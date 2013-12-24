class AddDrinkTypetoRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :drinktype, :string
  end
end
