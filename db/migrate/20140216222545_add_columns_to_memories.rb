class AddColumnsToMemories < ActiveRecord::Migration
  def change
    add_column :memories, :blackout_post, :boolean
  end
end
