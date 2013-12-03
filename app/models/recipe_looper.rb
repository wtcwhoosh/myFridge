class RecipeLooper < ActiveRecord::Base
  attr_accessible :name
  has_many :recipes
  has_many :users
end
