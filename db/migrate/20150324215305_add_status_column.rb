class AddStatusColumn < ActiveRecord::Migration
  def change
    add_column :articles, :status, :boolean
  end
end
