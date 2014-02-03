class Circle < ActiveRecord::Base
  belongs_to :user
  has_many :circle_users, dependent: :destroy
  has_many :users, through: :circle_users 
  has_many :invitations, as: :invitable
  has_many :memories
  
  validates :user_id, presence: true
  validates :name, uniqueness: true

  searchable do
    text :name, :description
  end
end
