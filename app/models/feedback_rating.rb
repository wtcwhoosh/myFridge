class FeedbackRating < ActiveRecord::Base
  attr_accessible :name
  has_many :feedbacks
end
