class AddEasinessToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :easiness, :integer
  end
end
