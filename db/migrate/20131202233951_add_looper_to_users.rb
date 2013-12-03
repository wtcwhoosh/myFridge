class AddLooperToUsers < ActiveRecord::Migration
  def change
    add_column :users, :looper, :integer, :default => 1
  end
end
