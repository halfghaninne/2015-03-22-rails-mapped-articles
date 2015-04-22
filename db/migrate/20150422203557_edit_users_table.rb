class EditUsersTable < ActiveRecord::Migration
  def change
    remove_index :users, column: [:username, :email]
    remove_column :users, :email
    add_index :users, :username, :unique => true
  end
end
