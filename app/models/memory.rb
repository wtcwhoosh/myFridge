class Memory < ActiveRecord::Base
  scope :reversed, -> { order 'created_at DESC' }
  has_one :picture
  accepts_nested_attributes_for :picture
  has_many :comments
  has_many :user_memory_scores  

  belongs_to :memorable, polymorphic: true
  belongs_to :circle

  def blacked_out?
    memory = Memory.find_by_id(id)
    if memory.blackout_post? and Time.now - memory.timeposted > 86400
      true
    else
      false
    end
  end
end
