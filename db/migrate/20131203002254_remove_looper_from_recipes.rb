class RemoveLooperFromRecipes < ActiveRecord::Migration
  def up
    remove_column :recipes, :looper
  end

  def down
    add_column :recipes, :looper, :integer
  end
end
