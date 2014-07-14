class Photo < ActiveRecord::Base
  attr_accessible :caption, :name, :picture
  mount_uploader :picture, PictureUploader
  has_many :photocomments, dependent: :destroy
end
