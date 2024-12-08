class UsersController < ActionController::Base

  def profile
    @user = User.find(params[:id])
    @articles = Article.where(author: params[:id])
  end
end