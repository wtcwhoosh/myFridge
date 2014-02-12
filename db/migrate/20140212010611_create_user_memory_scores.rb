class CreateUserMemoryScores < ActiveRecord::Migration
  def change
    create_table :user_memory_scores do |t|
      t.integer :user_id
      t.integer :memory_id
      t.boolean :up
      t.boolean :down

      t.timestamps
    end
  end
end
