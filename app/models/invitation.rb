class Invitation < ActiveRecord::Base
  belongs_to :invitable, polymorphic: true
  belongs_to :user

  validates :receiving_user_id, uniqueness: { scope: :invitable_id }
  
  def sending_user
    user = User.find_by_id(sending_user_id)
  end

end
