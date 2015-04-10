class Pin < ActiveRecord::Base
  attr_accessible :location_id, :article_id, :new_location_alias, :new_location_address
  
  belongs_to :article
  belongs_to :location
  
  # write in destroy dependency
  
  def new_location_alias=(name)
    @new_location_alias = name
  end
  
  def new_location_alias
    @new_location_alias
  end
  
  def new_location_address=(address)
    loc_name = self.new_location_alias
    newLocation = Location.create(alias: loc_name, address: address)
    self.location_id = newLocation.id
    @new_location_address = address
  end
  
  def new_location_address
    @new_location_address
  end
end