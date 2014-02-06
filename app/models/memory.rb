class Memory < ActiveRecord::Base
  scope :reversed, -> { order 'created_at DESC' }
  has_one :picture
  accepts_nested_attributes_for :picture
  has_many :comments


  belongs_to :memorable, polymorphic: true
  belongs_to :circle

end
