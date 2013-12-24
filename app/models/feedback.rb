class Feedback < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :taste
  belongs_to :easiness
  belongs_to :drinkability



  before_save :set_rating

  def set_rating
    self.rating = taste_id
  end
end
