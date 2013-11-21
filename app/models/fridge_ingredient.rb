class FridgeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :user_id
  belongs_to :user
  belongs_to :ingredient

end
