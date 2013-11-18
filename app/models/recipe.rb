class Recipe < ActiveRecord::Base
  attr_accessible :instruction, :name, :type_id, :recipe_ingredients_attributes
  attr_accessible :user_id
  belongs_to :type
  belongs_to :user
  has_many :feedbacks, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients, :reject_if => lambda { |a| a[:ingredient_id].blank? }                                                                     { |a| a[:ingredient_id].blank? }




  validates :instruction, :presence => true
  validates :name, :presence => true
  validates :type_id, :presence => true
end
