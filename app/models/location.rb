class Location < ActiveRecord::Base
  attr_accessible :alias, :address
  
  has_and_belongs_to_many :articles
end
