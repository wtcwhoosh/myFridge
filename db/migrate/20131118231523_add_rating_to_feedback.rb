class AddRatingToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :rating, :float
  end
end
