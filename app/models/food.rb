class Food < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :ingredients
  has_many :recipes, :through => :ingredients
end
