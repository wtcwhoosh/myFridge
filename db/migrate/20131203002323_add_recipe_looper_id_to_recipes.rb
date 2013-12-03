class AddRecipeLooperIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :recipe_looper_id, :integer, :default => 1
  end
end
