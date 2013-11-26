class AddTasteIdToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :taste_id, :integer
  end
end
