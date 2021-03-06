class CreateSettings < ActiveRecord::Migration
  def change
    drop_table :settings

    create_table :settings do |t|
      t.integer :circle_id
      t.string :type
      t.boolean :invite_only
      t.boolean :show_members

      t.timestamps
    end
  end
end
