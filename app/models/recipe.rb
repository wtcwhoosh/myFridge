class Recipe < ActiveRecord::Base
  attr_accessible :instruction, :name, :recipe_ingredients_attributes
  attr_accessible :user_id
  attr_accessible :recipe_looper_id

  belongs_to :user
  has_many :feedbacks, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_ingredients
  belongs_to :recipe_looper
  accepts_nested_attributes_for :recipe_ingredients,:reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true



  validates :instruction, :presence => true
  validates :name, :presence => true

end