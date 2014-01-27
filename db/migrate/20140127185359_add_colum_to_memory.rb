class AddColumToMemory < ActiveRecord::Migration
  def change
    add_column :memories, :timeposted, :datetime
  end
end
