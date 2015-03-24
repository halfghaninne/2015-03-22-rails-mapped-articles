class CreateLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :alias
      t.text :address
    end
  end
end
