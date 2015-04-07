class Location < ActiveRecord::Base
  attr_accessible :alias, :address, :latitude, :longitude
  
  has_and_belongs_to_many :articles
  
  def custom_alias
    self.alias # TODO - Whatever Alex wants
  end
  
  def get_coordinates
    geocoder_return = Geocoder.search(self.address)
    latitude = geocoder_return[0].latitude
    longitude = geocoder_return[0].longitude
    Location.update(self.id, :latitude => latitude, :longitude => longitude)
  end
  
  def map_article(article_id)
    @locations = "SELECT * FROM 'articles_locations' WHERE article_id = #{article_id}"
    
    @geojson = Array.new

      @locations.each do |location|
        @geojson << {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: [location.longitude, location.latitude]
          },
          properties: {
            name: location.alias,
            address: location.address,
            :'marker-color' => '#00607d',
            :'marker-symbol' => 'circle',
            :'marker-size' => 'medium'
          }
        }
      end
      
    @geojsonformatted = @geojson.to_json
    
  end
  
  def map_all
    @locations = Location.all
    @geojson = Array.new

      @locations.each do |location|
        @geojson << {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: [location.longitude, location.latitude]
          },
          properties: {
            name: location.alias,
            address: location.address,
            :'marker-color' => '#00607d',
            :'marker-symbol' => 'circle',
            :'marker-size' => 'medium'
          }
        }
      end
      
    @geojsonformatted = @geojson.to_json
  end
  
end
