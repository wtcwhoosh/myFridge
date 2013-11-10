class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :type_id
      t.text :instruction

      t.timestamps
    end
  end
end
