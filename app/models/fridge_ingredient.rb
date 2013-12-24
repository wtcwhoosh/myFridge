class FridgeIngredient < ActiveRecord::Base
  belongs_to :user
  belongs_to :ingredient


  def ingredient_name
    ingredient.try(:name)
  end

  def ingredient_name=(name)

    self.ingredient = Ingredient.find_or_create_by_name(name) if name.present?

  end
end
