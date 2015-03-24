class ArticlesController < ApplicationController
  
  def index
    @articles = Article.find(:all, :order => "id desc", :limit => 5)
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    newArticle = Article.create(params[:article])
    
    redirect_to controller: "articles", action: "index"
  end
  
  
  
end