class ArticlesController < ApplicationController
  
  def index
    @articles = Article.find(:all, :order => "id desc", :limit => 5)
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
end