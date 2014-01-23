class Circle < ActiveRecord::Base
  belongs_to :user
  has_many :circle_users, dependent: :destroy
  has_many :users, through: :circle_users 
end
