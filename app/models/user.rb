class User < ActiveRecord::Base
  has_many :recipes, :dependent => :destroy
  has_many :fridge_ingredients
  has_many :ingredients, :through => :fridge_ingredients
  belongs_to :recipe_looper

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
end
