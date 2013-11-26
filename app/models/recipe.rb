class Recipe < ActiveRecord::Base
  attr_accessible :instruction, :name, :type_id, :recipe_ingredients_attributes
  attr_accessible :user_id
  belongs_to :type
  belongs_to :user
  has_many :feedbacks, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true



  validates :instruction, :presence => true
  validates :name, :presence => true
  validates :type_id, :presence => true
end