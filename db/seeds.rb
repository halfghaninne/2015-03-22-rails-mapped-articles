# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

require "bcrypt"

username = ENV["username"]
password = BCrypt::Password.create(ENV["pass"])

admin = User.create!({username: username, password: password, is_admin: true})

author1 = Author.create!({name: "Maria Doe", 
                        auth_info: "Maria is a freelance journalist based in Omaha, NE. She loves cats, math, and feminism."})

author2 = Author.create!({name: "Adam Doe", 
                        auth_info: "Adam is a staff writer originally from Lincoln, NE. He's obsessed with Twitter and the Creighton Jays basketball team."})

########################################################################

location1 = Location.create!({alias: "Lied Activity Center", address: "2700 Arboretum Dr, Bellevue, NE 68005"})

puts "Created location #{location1.alias} with lat #{location1.latitude} and long #{location1.longitude}\n\n"

article1 = Article.create!({title: "Bellevue holds Earth Day event", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.\r\n\r\nAliquam posuere consectetur quam non porttitor. Donec justo ligula, imperdiet ut tempor et, dapibus non arcu. Donec tincidunt tincidunt commodo. Praesent in sagittis felis, eget eleifend ante. Sed finibus ultrices risus, nec ultricies justo consectetur non. Nam finibus velit vitae odio bibendum, laoreet aliquam orci aliquam. Maecenas porttitor orci non augue iaculis consequat. Donec eget luctus nibh. Cras pretium ligula sit amet commodo iaculis.\r\n\r\nUt sagittis felis eu nibh cursus molestie. Etiam a odio arcu. Nullam nec augue lectus. Phasellus efficitur mi vel ligula hendrerit, sed faucibus felis facilisis. Vestibulum lacinia est urna, vel convallis enim fringilla quis. Sed commodo dui sed urna ullamcorper, sit amet egestas quam imperdiet. Pellentesque tellus leo, iaculis eget leo a, maximus suscipit ante. Mauris ultricies nunc ac est pretium pulvinar quis at ex.", 
                          author_id: author1.id, 
                          published: true, 
                          main_image_url: "https://download.unsplash.com/photo-1415200358018-bb07fced3660"})

pin1 = Pin.create!({article_id: article1.id, location_id: location1.id})

########################################################################

location2 = Location.create!({alias: "Hair Market Salon", address: "413 South 11th St, Omaha, NE 68102"})
puts "Created location #{location2.alias} with lat #{location2.latitude} and long #{location2.longitude}\n\n"

location3 = Location.create!({alias: "Gorats Steakhouse", address: "4917 Center St, Omaha, NE 68106"})
puts "Created location #{location3.alias} with lat #{location3.latitude} and long #{location3.longitude}\n\n"

location4 = Location.create!({alias: "Magnolia Hotel", address: "1615 Howard St, Omaha, NE 68102"})
puts "Created location #{location4.alias} with lat #{location4.latitude} and long #{location4.longitude}\n\n"


article2 = Article.create!({title: "Local businesses prepare for Berkshire Hathaway shareholder meeting", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.\r\n\r\nAliquam posuere consectetur quam non porttitor. Donec justo ligula, imperdiet ut tempor et, dapibus non arcu. Donec tincidunt tincidunt commodo. Praesent in sagittis felis, eget eleifend ante. Sed finibus ultrices risus, nec ultricies justo consectetur non. Nam finibus velit vitae odio bibendum, laoreet aliquam orci aliquam. Maecenas porttitor orci non augue iaculis consequat. Donec eget luctus nibh. Cras pretium ligula sit amet commodo iaculis.\r\n\r\nUt sagittis felis eu nibh cursus molestie. Etiam a odio arcu. Nullam nec augue lectus. Phasellus efficitur mi vel ligula hendrerit, sed faucibus felis facilisis. Vestibulum lacinia est urna, vel convallis enim fringilla quis. Sed commodo dui sed urna ullamcorper, sit amet egestas quam imperdiet. Pellentesque tellus leo, iaculis eget leo a, maximus suscipit ante. Mauris ultricies nunc ac est pretium pulvinar quis at ex.\r\n\r\nPhasellus pellentesque fringilla turpis, vitae blandit elit vulputate at. Mauris a sem lobortis, tempus velit ut, dictum ipsum. Vestibulum ut ex lacinia, tempus nunc eget, vehicula dui. In neque dui, fringilla non ornare et, blandit eu metus. Integer sit amet felis et eros auctor maximus. Etiam vitae justo mauris. Integer vel euismod sapien. Sed pellentesque justo vitae turpis tempor blandit. Suspendisse sit amet ultrices orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus felis at lorem commodo varius. Morbi sed efficitur leo. Donec nulla diam, sodales sed ante et, condimentum sollicitudin lacus.\r\n\r\nVestibulum fermentum ut nunc id sagittis. Aenean rhoncus turpis in posuere lacinia. Donec pretium augue id tortor fringilla suscipit. Maecenas cursus, leo nec varius mollis, urna arcu fermentum massa, nec luctus felis nunc nec nulla. Fusce sollicitudin cursus nunc, id iaculis nibh dapibus ac. In eget finibus mauris. Maecenas ullamcorper facilisis nulla, a congue metus consequat vitae. Nullam odio justo, sodales ut placerat et, pellentesque sit amet purus. Donec tellus purus, mollis quis vehicula pretium, commodo sed lacus. Vivamus et massa ante. Morbi dignissim condimentum velit at scelerisque.", 
                          author_id: author2.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/uploads/1412594480669535c9ef9/9d85c477"})

pin2 = Pin.create!({article_id: article2.id, location_id: location2.id})
pin3 = Pin.create!({article_id: article2.id, location_id: location3.id})
pin4 = Pin.create!({article_id: article2.id, location_id: location4.id})

########################################################################

location5 = Location.create!({alias: "TaZa Nightclub", address: "1507 Farnam St, Omaha, NE 68102"})
puts "Created location #{location5.alias} with lat #{location5.latitude} and long #{location5.longitude}\n\n"

location6 = Location.create!({alias: "Crossroads Mall", address: "7400 Dodge St, Omaha, NE 68114"})
puts "Created location #{location6.alias} with lat #{location6.latitude} and long #{location6.longitude}\n\n"

article3 = Article.create!({title: "Separate shootings send three to hospital over the weekend", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.", 
                          author_id: author2.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/46/Ov6ZY1zLTWmhPC0wFysP_IMG_2896_edt.jpg"})

pin5 = Pin.create!({article_id: article3.id, location_id: location5.id})
pin6 = Pin.create!({article_id: article3.id, location_id: location6.id})

########################################################################

location7 = Location.create!({alias: "Intersection of Pratt and 36th", address: "N 36th St & Pratt St, Omaha, Nebraska 68111"})
puts "Created location #{location7.alias} with lat #{location7.latitude} and long #{location7.longitude}\n\n"

article4 = Article.create!({title: "Woman shot while driving in north Omaha", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.", 
                          author_id: author1.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/46/Ov6ZY1zLTWmhPC0wFysP_IMG_2896_edt.jpg"})

pin7 = Pin.create!({article_id: article4.id, location_id: location7.id})

########################################################################

location8 = Location.create!({alias: "University of Nebraska Medical Center", address: "600 S 42nd St, Omaha, NE 68198"})
puts "Created location #{location8.alias} with lat #{location8.latitude} and long #{location8.longitude}\n\n"

article5 = Article.create!({title: "UNMC research may lead to pharmacy tests for flu and strep", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.\r\n\r\nAliquam posuere consectetur quam non porttitor. Donec justo ligula, imperdiet ut tempor et, dapibus non arcu. Donec tincidunt tincidunt commodo. Praesent in sagittis felis, eget eleifend ante. Sed finibus ultrices risus, nec ultricies justo consectetur non. Nam finibus velit vitae odio bibendum, laoreet aliquam orci aliquam. Maecenas porttitor orci non augue iaculis consequat. Donec eget luctus nibh. Cras pretium ligula sit amet commodo iaculis.\r\n\r\nUt sagittis felis eu nibh cursus molestie. Etiam a odio arcu. Nullam nec augue lectus. Phasellus efficitur mi vel ligula hendrerit, sed faucibus felis facilisis. Vestibulum lacinia est urna, vel convallis enim fringilla quis. Sed commodo dui sed urna ullamcorper, sit amet egestas quam imperdiet. Pellentesque tellus leo, iaculis eget leo a, maximus suscipit ante. Mauris ultricies nunc ac est pretium pulvinar quis at ex.\r\n\r\nPhasellus pellentesque fringilla turpis, vitae blandit elit vulputate at. Mauris a sem lobortis, tempus velit ut, dictum ipsum. Vestibulum ut ex lacinia, tempus nunc eget, vehicula dui. In neque dui, fringilla non ornare et, blandit eu metus. Integer sit amet felis et eros auctor maximus. Etiam vitae justo mauris. Integer vel euismod sapien. Sed pellentesque justo vitae turpis tempor blandit. Suspendisse sit amet ultrices orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus felis at lorem commodo varius. Morbi sed efficitur leo. Donec nulla diam, sodales sed ante et, condimentum sollicitudin lacus.", 
                          author_id: author1.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/45/tkLOe7nnQ7mnMsiuijBy_hm.jpg"})

pin8 = Pin.create!({article_id: article5.id, location_id: location8.id})

########################################################################

location9 = Location.create!({alias: "Omaha Henry Doorly Zoo", address: "3701 S 10th St, Omaha, NE 68107"})
puts "Created location #{location9.alias} with lat #{location9.latitude} and long #{location9.longitude}\n\n"

article6 = Article.create!({title: "Omaha Zoo recognized as one of the best in the US", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.", 
                          author_id: author2.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/photo-1415201179613-bd037ff5eb29"})

pin9 = Pin.create!({article_id: article6.id, location_id: location9.id})

########################################################################

location10 = Location.create!({alias: "Holy Cross School", address: "1502 S 48th St, Omaha, NE 68106"})
puts "Created location #{location10.alias} with lat #{location10.latitude} and long #{location10.longitude}\n\n"

article7 = Article.create!({title: "Lockout at Holy Cross School", 
                          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at leo quam. Nullam posuere quis mi a tempus. Phasellus fermentum facilisis diam at mattis. Nullam tristique nec massa nec imperdiet. Sed pulvinar nisl id arcu congue cursus. Curabitur ante magna, faucibus a massa imperdiet, aliquam aliquet nisi. Nam vestibulum, est vitae suscipit consequat, ex leo efficitur augue, a vulputate sapien tortor ut justo. Nullam interdum ex vel varius tristique. Duis sollicitudin non sem quis vestibulum. In hac habitasse platea dictumst. Aliquam faucibus urna metus, vel ullamcorper mauris gravida a.\r\n\r\nIn vehicula aliquam ipsum efficitur aliquet. Donec vitae porttitor ligula. Cras consectetur ex nec sem fermentum, non elementum quam dapibus. Duis cursus sodales sollicitudin. Nunc nulla ex, vestibulum tincidunt scelerisque in, auctor id tortor. Praesent elit erat, ornare sed quam ac, ultricies pulvinar lacus. Praesent luctus fringilla nisi, blandit sodales quam blandit ut.", 
                          author_id: author1.id,
                          published: true,
                          main_image_url: "https://download.unsplash.com/photo-1415226181422-279a51ca056e"})

pin10 = Pin.create!({article_id: article7.id, location_id: location10.id})
