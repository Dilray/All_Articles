class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
     # def index
     #  @articles = Article.all
     # end

  def index
    # @articles = Article.where(current_user: :uid)
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

  def my_articles
    @articles = current_user.articles
  end

  # def create
  #   @article = Article.new(article_params)
  #   @article.user_id = current_user.username  # Устанавливаем ID пользователя при создании статьи
  #
  #   if @article.save
  #     redirect_to @article, notice: 'Статья успешно создана.'
  #   else
  #     render :new
  #   end
  # end

  def create
    @article = current_user.articles.build(article_params)
    @article.author = current_user.full_name
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