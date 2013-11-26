class CreateFeedbackRatings < ActiveRecord::Migration
  def change
    create_table :feedback_ratings do |t|
      t.string :name

      t.timestamps
    end
  end
end
