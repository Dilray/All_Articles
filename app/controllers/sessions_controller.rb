class SessionsController < ApplicationController

  def google_auth
  end

  def new
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid']) do |user|
      user.email = auth['info']['email']
      user.name = auth['info']['name']
      user.image = auth['info']['image']
    end

    session[:user_id] = user.id
    redirect_to root_path, notice: 'Successfully logged in!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Successfully logged out!'
  end

  def failure
    redirect_to root_path, alert: 'Authentication failed.'
  end

end