class Location < ActiveRecord::Base
  attr_accessible :alias, :address
  
  has_and_belongs_to_many :articles
  
  def custom_alias
    self.alias # TODO - Whatever Alex wants
  end
end
