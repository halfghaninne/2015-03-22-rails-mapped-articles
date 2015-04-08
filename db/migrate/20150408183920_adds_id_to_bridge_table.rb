class AddsIdToBridgeTable < ActiveRecord::Migration
  def change
    rename_table :articles_locations, :pins
  end
end
