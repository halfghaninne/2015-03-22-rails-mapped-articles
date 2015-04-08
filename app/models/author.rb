class Author < ActiveRecord::Base
  attr_accessible :name, :auth_info
  
  has_many :articles
end
