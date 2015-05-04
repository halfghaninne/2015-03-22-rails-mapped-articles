class LocationsController < ApplicationController
  
  before_filter :validate_user_presence
  
  def validate_user_presence
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
      @admin = true if @user.is_admin
    end
  end
  
  def show
    @location = Location.find(params[:id]) 
    #move the following out into a location method, once functional
    @articles = @location.get_articles
  end
  
end

