class Memory < ActiveRecord::Base
  scope :reversed, -> { order 'created_at DESC' }
  
  belongs_to :memorable, polymorphic: true
  belongs_to :circle

end
