class Picture < ActiveRecord::Base
  has_many :memories, as: :memorable 

#  mount_uploader :picture, PictureUploader
end
