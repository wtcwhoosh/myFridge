class AddPictureColumns < ActiveRecord::Migration
  def change
    add_column :moods, :picture, :string
    add_column :settings, :picture, :string
    add_column :drink_types, :picture, :string
  end
end
