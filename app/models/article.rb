class Article < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :published, :location_ids
  
  belongs_to :author
  has_and_belongs_to_many :locations
  
  # def location_ids=(array_of_ids_of_locations)
  #   array_of_ids_of_locations.each do |a|
  #     self.locations << a # Adds a row to the bridge table.
  #   end
  # end
end
