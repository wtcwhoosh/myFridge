class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :name, :password
  attr_accessible :password_confirmation
  attr_accessible :image
  mount_uploader :image, ImageUploader



  has_many :recipes, :dependent => :destroy
  has_many :ingredients, :through => :fridge_ingredients

  validates :name, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
