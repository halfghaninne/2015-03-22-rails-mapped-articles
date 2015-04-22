require "bcrypt"

class UsersController < ApplicationController
  include BCrypt
  
  def new
    @user = User.new
  end
  
  def create
    password_key = BCrypt::Password.create(params[:user][:password]) 
    params[:user][:password] = password_key 
    newUser = User.create(params[:user])
    
    redirect_to controller: "articles", action: "index"
  end
  
  def login
  end
  
  def find
    username = params[:user][:username]
    @user = User.where( username: username )[0]
    
    if @user
      if BCrypt::Password.new(@user.password) == params[:user][:password] 
        session[:user_id] = @user.id 
        redirect_to controller: "articles", action: "index"
      else
        redirect_to controller: "users", action: "login"
      end
    else
      redirect_to controller: "users", action: "login"
    end
    
  end
  
  def logout
    session[:user_id] = nil 
    @user = nil
    @admin = false
    redirect_to controller: "articles", action: "index"
  end
  
end