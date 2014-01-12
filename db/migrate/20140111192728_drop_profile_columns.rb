class DropProfileColumns < ActiveRecord::Migration
  def change
    remove_column :users, :profilePicture_file_name 
    remove_column :users, :profilePicture_content_type 
    remove_column :users, :profilePicture_file_size 
    remove_column :users, :profilePicture_updated_at
  end
end