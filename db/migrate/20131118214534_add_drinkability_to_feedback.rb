class AddDrinkabilityToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :drinkability, :integer
  end
end
