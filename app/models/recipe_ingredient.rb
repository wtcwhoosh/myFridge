class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :recipe_id, :unit, :ingredient_name

  belongs_to :recipe
  belongs_to :ingredient


  def ingredient_name
    ingredient.try(:name)
  end

  def ingredient_name=(name)

    self.ingredient = Ingredient.find_or_create_by_name(name) if name.present?

  end
end
