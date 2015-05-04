class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id]) 
    #move the following out into a location method, once functional
    @articles = @location.get_articles
  end
  
end

