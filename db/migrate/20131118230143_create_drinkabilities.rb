class CreateDrinkabilities < ActiveRecord::Migration
  def change
    create_table :drinkabilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
