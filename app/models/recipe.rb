class Recipe < ActiveRecord::Base
  attr_accessible :instruction, :name, :recipe_ingredients_attributes, :drinktype
  attr_accessible :user_id
  attr_accessible :recipe_looper_id
  has_many :favorites
  belongs_to :user
  has_many :feedbacks, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_ingredients
  belongs_to :recipe_looper
  accepts_nested_attributes_for :recipe_ingredients,:reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true

  make_flaggable :like

  validates :instruction, :presence => true
  validates :name, :presence => true

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%")
  end

  def recipe_name
    recipe.try(:name)
  end

  def recipe_name=(name)
    self.recipe = recipe.find_or_create_by_name(name) if name.present?
  end
end