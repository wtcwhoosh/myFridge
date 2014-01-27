class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.integer :circle_id
      t.integer :user_id
      t.integer :score
      t.string :memory
      t.integer :memorable_id
      t.string :memorable_type

      t.timestamps
    end
  end
end
