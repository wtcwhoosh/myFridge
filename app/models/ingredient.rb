class Ingredient < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :recipes, :through => :recipe_ingredients
  has_many :recipe_ingredients
  has_many :users, :through => :fridge_ingredients

end
