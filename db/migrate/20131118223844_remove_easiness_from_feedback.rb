class RemoveEasinessFromFeedback < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :taste
  end

  def down
    add_column :feedbacks, :taste, :integer
  end
end
