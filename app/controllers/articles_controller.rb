class ArticlesController < ApplicationController
  
  before_filter :validate_user_presence
  before_filter :admin_block, only: [:new, :edit]
  
  def admin_block
    if @admin != true
      flash[:message] = "Only admins are allowed to access that page. 
                        Please sign in."
      redirect_to controller: "articles", action: "index"
    end
  end
  
  def validate_user_presence
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
      @admin = true if @user.is_admin
    end
  end
  
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
    @newPin = @article.pins.build
  end
  
  def create
    binding.pry
    newArticle = Article.create(params[:article])
    
    params[:article][:pins_attributes].each do |k,v|
      Pin.create({article_id: newArticle.id, 
                  location_id: v["location_id"].to_i})
    end
  
    flash[:message] = "Your article has been published."
    redirect_to controller: "articles", action: "index"
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    updatedArticle = Article.find(params[:id])
    updatedArticle.update_attributes(params[:article])
    redirect_to "/articles/#{params[:id]}"
  end
  
  def delete
    Article.update(params[:id], published: false)
    
    redirect_to controller: "articles", action: "index"
  end
  
  
end