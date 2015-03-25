class Addnewjointable < ActiveRecord::Migration
  def change
    create_table :articles_locations, :id => false do |t|
      t.integer :article_id
      t.integer :location_id
    end
    
  end
end
