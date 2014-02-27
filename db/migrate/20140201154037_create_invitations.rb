class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :sending_user_id
      t.integer :receiving_user_id
      t.integer :invitable_id
      t.string :invitable_type
      t.datetime :time_sent
      t.boolean :accepted

      t.timestamps
    end
  end
end
