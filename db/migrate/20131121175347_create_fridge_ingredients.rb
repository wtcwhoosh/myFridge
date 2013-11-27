class CreateFridgeIngredients < ActiveRecord::Migration
  def change
    create_table :fridge_ingredients do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.string :quantity

      t.timestamps
    end
  end
end
