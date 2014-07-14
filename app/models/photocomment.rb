class Photocomment < ActiveRecord::Base
  attr_accessible :body, :photo_id, :username
  belongs_to :photo
end
