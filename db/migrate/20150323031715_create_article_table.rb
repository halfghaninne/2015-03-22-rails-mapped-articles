class CreateArticleTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
  end 
  
  def change
    create_table :articles do |t|
      t.timestamps
      t.text :title
      t.text :body
      t.belongs_to :author
    end
  end
end
