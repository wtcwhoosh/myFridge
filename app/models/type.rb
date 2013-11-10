class Type < ActiveRecord::Base
  attr_accessible :name

  has_many :recipes , :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
end
