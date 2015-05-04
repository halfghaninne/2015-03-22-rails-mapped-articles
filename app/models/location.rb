class Location < ActiveRecord::Base
  attr_accessible :alias, :address, :latitude, :longitude
  
  has_many :pins
  has_many :articles, through: :pins
  
  before_create :get_coordinates
  
  def get_coordinates 
    puts "In method Location#get_coordinates for #{self.address}"
    geocoder_return = Geocoder.search(self.address)
    puts geocoder_return
    latitude = geocoder_return[0].latitude
    longitude = geocoder_return[0].longitude
    self.latitude = latitude
    self.longitude = longitude
  end
  
  def custom_alias
    self.alias # TODO - Whatever Alex wants
  end
  
  def get_articles
    pins = Pin.where(location_id: self.id).order("id desc")
    articles = []
    pins.each do |pin| 
      a = Article.find(pin.article_id)
      articles << a
    end
    articles
  end
  
  def self.map_article(article_id)
    @locations = Article.find(article_id).locations
    
    @geojson = Array.new

      @locations.each do |location|
        @geojson << {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: [location.longitude, location.latitude]
          },
          properties: {
            id: location.id,
            count: Pin.where(location_id: location.id).length,
            name: location.alias,
            address: location.address,
            :'marker-color' => '#00607d',
            :'marker-symbol' => 'circle',
            :'marker-size' => 'medium'
          }
        }
      end
     
    @geojsonformatted = @geojson.to_json  
  end # method
  
  def self.map_all
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
            id: location.id,
            count: Pin.where(location_id: location.id).length,
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
