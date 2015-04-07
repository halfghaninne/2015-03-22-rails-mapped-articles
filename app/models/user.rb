class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :is_admin

  
end
