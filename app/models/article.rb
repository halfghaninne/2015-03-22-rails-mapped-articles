class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id
  
  belongs_to :author
end
