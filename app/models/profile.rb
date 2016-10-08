class Profile < ActiveRecord::Base
  mount_uploader :profile_picture, PictureUploader
end
