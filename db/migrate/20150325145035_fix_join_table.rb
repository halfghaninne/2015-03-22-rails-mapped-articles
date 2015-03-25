class FixJoinTable < ActiveRecord::Migration
  def change
    drop_table :articles_locations
  end
end
