class AddsIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :id, :primary_key
  end
end
