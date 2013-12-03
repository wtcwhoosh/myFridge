class AddLooperToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :looper, :integer, :default => 1
  end
end
