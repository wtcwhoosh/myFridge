class RemoveRatingFromFeedback < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :rating
  end

  def down
    add_column :feedbacks, :rating, :integer
  end
end
