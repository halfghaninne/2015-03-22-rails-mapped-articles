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
      
      @geojsonformatted = []
      @geojson.each do |obj|
        @geojsonformatted << obj.to_json
      end
  
      # respond_to do |format|
#         format.html
#         format.json { render json: @geojson }
#       end
  
  end 
  
  
  
end

