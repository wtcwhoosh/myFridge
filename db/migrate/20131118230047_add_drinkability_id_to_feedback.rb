class AddDrinkabilityIdToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :drinkability_id, :integer
  end
end
