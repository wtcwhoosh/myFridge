class RemoveDrinkabilityFromFeedback < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :drinkability
  end

  def down
    add_column :feedbacks, :drinkability, :integer
  end
end
