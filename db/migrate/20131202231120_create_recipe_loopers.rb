class CreateRecipeLoopers < ActiveRecord::Migration
  def change
    create_table :recipe_loopers do |t|
      t.integer :name

      t.timestamps
    end
  end
end
