class CreateEasinesses < ActiveRecord::Migration
  def change
    create_table :easinesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
