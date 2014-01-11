class AddProfileColumnsToUsers < ActiveRecord::Migration
  def change
    add_attachment :users, :profilePicture
  end
end
