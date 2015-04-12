module ApplicationHelper
  
  def link_to_add_location_fields(article, f)
    newPin = article.pins.build
    ruby_object_id = newPin.object_id
    
    x = render "shared/locations_form", f: f, newPin: newPin, 
    ruby_object_id: ruby_object_id
    
    link_to("Add New Location", "#", :class => "add_location_link", style: "color: red", data: {fields: x.gsub("\n", ""), rubyid: ruby_object_id})
  end

  
end
