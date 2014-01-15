class Setting < ActiveRecord::Base
  has_many :recipes

  mount_uploader :picture, SettingPictureUploader

end
