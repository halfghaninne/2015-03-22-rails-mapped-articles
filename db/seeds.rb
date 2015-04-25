# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "bcrypt"

username = ENV["username"]
password = BCrypt::Password.create(ENV["pass"])

admin = User.create({username: username, password: password, is_admin: true})

author = Author.create({name: "Jane Doe", auth_info: "Jane is author based in Omaha, NE. She loves cats, math, and feminism."})
