class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  
    add_column :recipes, :setting_id, :integer

  end
end
