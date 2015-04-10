class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published, :locations, 
                  :location_ids, :locations_attributes, :pins_attributes
                  
  belongs_to :author
  
  has_many :pins
  has_many :locations, through: :pins
  
  accepts_nested_attributes_for :pins, 
    reject_if: proc { |pin_attributes|   
                      pin_attributes["new_location_alias"].blank? || 
                      pin_attributes["new_location_address"].blank? }
  accepts_nested_attributes_for :locations
end
