class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published, :locations, 
                  :location_ids, :locations_attributes
                  
  belongs_to :author
  
  has_many :pins
  has_many :locations, through: :pins
  
  accepts_nested_attributes_for :locations
end
