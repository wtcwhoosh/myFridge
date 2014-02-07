class AddColumnsToUsers < ActiveRecord::Migration
  def change
    	remove_column :users, :userName, :string

	add_column :users, :username, :string
  end
end
