class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :recipe_id
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
