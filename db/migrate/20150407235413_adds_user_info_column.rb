class AddsUserInfoColumn < ActiveRecord::Migration
  def change
    add_column :authors, :auth_info, :text
  end
end
