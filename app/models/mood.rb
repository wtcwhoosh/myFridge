class Mood < ActiveRecord::Base
  has_many :recipes

  mount_uploader :picture, MoodPictureUploader

end
