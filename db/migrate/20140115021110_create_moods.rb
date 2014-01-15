class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :name
      t.string :description

      t.timestamps
    
    add_column :recipes, :mood_id, :integer
    end
  end
end
