class AddRecipeLooperIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recipe_looper_id, :integer, :default => 1
  end
end
