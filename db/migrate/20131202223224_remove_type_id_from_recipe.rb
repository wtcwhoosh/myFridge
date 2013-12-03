class RemoveTypeIdFromRecipe < ActiveRecord::Migration
  def up
    remove_column :recipes, :type_id
  end

  def down
    add_column :recipes, :type_id, :integer
  end
end
