class AddRecipeLoopertoUsers < ActiveRecord::Migration
  def change
    add_column :users, :recipe_looper, :integer
  end
end
