class AddMainImageFieldtoArticles < ActiveRecord::Migration
  def change
    add_column :articles, :main_image_url, :text
  end
end
