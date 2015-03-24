class ChangeToForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :articles, :authors
  end
end
