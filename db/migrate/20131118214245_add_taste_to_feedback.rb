class AddTasteToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :taste, :integer
  end
end
