class AddColumnsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :memory_id, :integer
  end
end
