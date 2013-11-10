class Feedback < ActiveRecord::Base
  attr_accessible :comment, :rating, :recipe_id
  belongs_to :recipe
end
