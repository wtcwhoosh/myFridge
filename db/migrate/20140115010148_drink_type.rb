class DrinkType < ActiveRecord::Migration
  def change
    create_table :drink_types do |t|
      t.string :name
      t.string :description
    end
    
    add_column :recipes, :drink_type_id, :string
  
  end
end
