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
    @user = User.find_by_email(params[:email])
    
    if @user
      
    else
      redirect to controller: "users", action: "login"
    end
    
  end
  
end