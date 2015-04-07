class LocationsController < ApplicationController
  
  def index
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
    binding.pry
      
    render :partial => '/locations/map_embed'
  
  end 
  
  
  
end

