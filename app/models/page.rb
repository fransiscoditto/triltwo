class Page < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :caption, :name, :picture
  mount_uploader :picture, PictureUploader
end
