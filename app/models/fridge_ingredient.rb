class FridgeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :user_id, :ingredient_name
  belongs_to :user
  belongs_to :ingredient
  def ingredient_name
    ingredient.try(:name)
  end

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by_name(name) if name.present?
  end
end
