class RemoveLooperFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :looper
  end

  def down
    add_column :users, :looper, :integer
  end
end
