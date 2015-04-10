class Location < ActiveRecord::Base
  attr_accessible :alias, :address, :latitude, :longitude
  
  has_many :pins
  has_many :articles, through: :pins
  
  extend ActiveModel::Callbacks
  define_model_callbacks :create
  
  before_create :get_coordinates
  
  def get_coordinates # tweak this to move it into a before filter for create
    geocoder_return = Geocoder.search(self.address)
    latitude = geocoder_return[0].latitude
    longitude = geocoder_return[0].longitude
    self.latitude = latitude
    self.longitude = longitude
    # Location.update(self.id, :latitude => latitude, :longitude => longitude)
  end
  
  def custom_alias
    self.alias # TODO - Whatever Alex wants
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
