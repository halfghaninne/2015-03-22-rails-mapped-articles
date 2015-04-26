module ApplicationHelper
  
  def link_to_add_location_fields(article, f)
    newPin = article.pins.build
    ruby_object_id = newPin.object_id
    
    x = render "shared/locations_form", f: f, newPin: newPin, 
    ruby_object_id: ruby_object_id
    
    link_to("Add another new location", "#", :class => "add_location_link", style: "color: red", data: {fields: x.gsub("\n", ""), rubyid: ruby_object_id})
  end
  
  def link_to_add_dropdown(article, f)
    newPin = article.pins.build
    ruby_object_id = newPin.object_id
    
    x = render "locations_select_for_new_article", f: f, newPin: newPin, ruby_object_id: ruby_object_id
    
    link_to("Assign more locations to this article", "#", :class => "add_dropdown_link", style: "color: red", data: {fields: x.gsub("\n", ""), rubyid: ruby_object_id})
  end

  
end
