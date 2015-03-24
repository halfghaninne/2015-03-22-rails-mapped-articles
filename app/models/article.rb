class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published
  
  belongs_to :author
end
