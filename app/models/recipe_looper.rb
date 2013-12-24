class RecipeLooper < ActiveRecord::Base
  has_many :recipes
  has_many :users
end
