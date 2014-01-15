class DrinkType < ActiveRecord::Base
  has_many :recipes

  mount_uploader :picture, DrinkTypePictureUploader

end
