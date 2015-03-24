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
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    Article.update(params[:id], params[:article])
    
    redirect_to "/articles/#{params[:id]}"
  end
  
  
end