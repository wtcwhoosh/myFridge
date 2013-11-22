class AddEasinessIdToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :easiness_id, :integer
  end
end
