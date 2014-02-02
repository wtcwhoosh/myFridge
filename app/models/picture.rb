class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  belongs_to :memory

  mount_uploader :picture, PictureUploader
end
