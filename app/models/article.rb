class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published, :locations
  belongs_to :author
  
  has_many :pins
  has_many :locations, through: :pins
  
end
