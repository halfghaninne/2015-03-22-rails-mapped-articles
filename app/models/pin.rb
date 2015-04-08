class Pin < ActiveRecord::Base
  attr_accessible :location_id, :article_id
  
  belongs_to :article
  belongs_to :location
end