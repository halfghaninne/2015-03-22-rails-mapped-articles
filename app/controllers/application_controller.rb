class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :validate_user_presence
  
  def validate_user_presence
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
      @admin = true if @user.is_admin
    end
  end
  
  def about
    render "/about"
  end
  
end
