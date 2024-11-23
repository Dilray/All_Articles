class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name])
  end

  def rate
    @article = Article.find(params[:id])
    @rating = @article.rating.find_or_initialize_by(user: current_user)
    @rating.score = params[:score]

    if @rating.save
      render json: { average_rating: @article.average_rating }
    else
      render json: { error: 'Unable to save rating' }, status: :unprocessable_entity
    end
  end
end
