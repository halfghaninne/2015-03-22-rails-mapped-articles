class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published, :location_ids, :locations
  
  belongs_to :author
  has_and_belongs_to_many :locations
  
end
