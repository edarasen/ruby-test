class ArticlesController < ApplicationController
  def index # /articles -> get
    @articles = Article.all
  end

  def show # /articles/id -> get | DISPLAY OBJECT
    @article = Article.find(id)
  end

  def new # /articles/new -> get | GETS THE NEW FORM
    @article = Article.new
  end
  
  def create # /articles -> post | CREATES NEW OBJECT
    @article = Article.new(article_params)
    #@article.name = params[:name]
    #@article.body = params[:body]

    if @article.save
      puts "saved"
      redirect_to articles_path
    else
      puts "not saved"
      render :new
    end
  end
  
  def edit # /articles/:id -> get | GETS THE EDIT FORM 
  end
  
  def update # /articles/:id -> post, patch, put | UPDATES THE OBJECT
  end
  
  def delete # /articles/:id -> delete, post | DELETES THE OBJECT 
  end

  private
  def article_params
    params.require(:article).permit(:name, :body, :author)
  end
end
