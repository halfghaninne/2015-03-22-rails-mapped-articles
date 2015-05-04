class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id]) 
    #move the following out into a location method, once functional
    pins = Pin.where(location_id: @location.id)
    @articles = []
    pins.each do |pin| 
      a = Article.find(pin.article_id)
      @articles << a
    end
  end
  
end

