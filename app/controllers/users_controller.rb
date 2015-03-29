class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    password_key = BCrypt::Password.create(params[:password])
    params[:password] = password_key
    newUser = User.create(params[:user])
    
    redirect_to controller: "users", action: "login"
  end
  
  def login
    @user = User.find_by_email(params[:email]) # will need to check this syntax. think it's something more like params[:user][:email]
    
    if @user
      if BCrypt::Password.new(@user.password) == params[:password] #same syntax issue here
        session[:user_id] = @user.id # possible syntax issue here
    else
      redirect_to controller: "users", action: "login"
    end
    
  end
  
  def logout
    session[:user_id] = nil # possible syntax issue here
    @user = nil
    
    redirect_to controller: "articles", action: "index"
  end
  
end