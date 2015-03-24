class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all[0..10]
  end
  
  def show
    @article = Track.find(params[:id])
  end
  
end