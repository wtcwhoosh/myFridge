class CircleUser < ActiveRecord::Base
  belongs_to :circle
  belongs_to :user

  validates :circle_id, uniqueness: { scope: :user_id }


end
