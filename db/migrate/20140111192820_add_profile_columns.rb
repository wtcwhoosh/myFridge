class AddProfileColumns < ActiveRecord::Migration
  def change
    add_column :users, :profilePicture, :string
  end
end
