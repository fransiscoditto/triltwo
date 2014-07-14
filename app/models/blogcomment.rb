class Blogcomment < ActiveRecord::Base
  attr_accessible :blog_id, :body, :username
  belongs_to :blog
end
