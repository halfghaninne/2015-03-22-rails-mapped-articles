class CreateJoinTableArticlesLocations < ActiveRecord::Migration
  def change
    create_table :articles_locations do |t|
      t.foreign_key :articles
      t.foreign_key :locations
    end
  end
end
