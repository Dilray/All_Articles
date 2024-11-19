class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
     def index
      @articles = Article.all
     end
  def show
  end
  def new
    @article = Article.new
  end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

  def destroy
    @article = Article.find(params[:id]) # Ищем статью по ID
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

    def set_article
      @article = Article.find(params[:id])
    end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :content)
  end
end