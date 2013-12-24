class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

   belongs_to :recipe_looper

  has_many :recipes, :dependent => :destroy
  has_many :fridge_ingredients
  has_many :ingredients, :through => :fridge_ingredients
  has_many :favorites,  :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
