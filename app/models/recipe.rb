class Recipe < ActiveRecord::Base
  has_many :favorites
  belongs_to :user
  has_many :feedbacks, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_ingredients
  belongs_to :recipe_looper
  belongs_to :drink_type
  belongs_to :setting
  belongs_to :mood
  accepts_nested_attributes_for :recipe_ingredients,:reject_if => lambda { |a| a[:ingredient_id].blank? }, :allow_destroy => true

  make_flaggable :like

  validates :instruction, :presence => true
  validates :name, :presence => true

  searchable do
    text :name, :instruction
  end
  
  def recipe_name
    recipe.try(:name)
  end

  def recipe_name=(name)
    self.recipe = recipe.find_or_create_by_name(name) if name.present?
  end
end
