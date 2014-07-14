class Blog < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :blogcomments, dependent: :destroy
  
end

