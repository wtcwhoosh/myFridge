class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :uid
      t.string :provider
      t.string :token
      t.string :secret
      t.timestamp :expires_at
      t.string :email
      t.string :image
      t.string :nickname
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
