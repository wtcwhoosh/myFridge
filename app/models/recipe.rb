class Recipe < ActiveRecord::Base
  attr_accessible :instruction, :name, :type_id
  attr_accessible :user_id
  belongs_to :type
  belongs_to :user
  has_many :feedbacks, :dependent => :destroy

  validates :instruction, :presence => true
  validates :name, :presence => true
  validates :type_id, :presence => true
end
