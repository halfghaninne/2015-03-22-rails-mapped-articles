class Location < ActiveRecord::Base
  attr_accessible :alias, :address, :latitude, :longitude
  
  has_and_belongs_to_many :articles
  
  def custom_alias
    self.alias # TODO - Whatever Alex wants
  end
  
  def get_coordinates
    geocoder_return = Geocoder.search(self.address)
    binding.pry
    self.latitude = geocoder_return[0].latitude
    self.longitude = geocoder_return[0].longitude
  end
  
end
