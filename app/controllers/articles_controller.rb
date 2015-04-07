class ArticlesController < ApplicationController
  
  def index
    @articles = Article.where(published: true).order("id desc").limit(5)
    @geojsonformatted = Location.map_all
  end
  
  def show
    @article = Article.find(params[:id])
    @geojsonformatted = Location.map_article(params[:id])
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
  
  def delete
    Article.update(params[:id], published: false)
    
    redirect_to controller: "articles", action: "index"
  end
  
  
end