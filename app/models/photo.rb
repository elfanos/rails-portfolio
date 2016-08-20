class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :album
  belongs_to :interior
  belongs_to :portrait
end
