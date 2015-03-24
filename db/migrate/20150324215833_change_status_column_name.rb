class ChangeStatusColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :status, :published
  end
end
