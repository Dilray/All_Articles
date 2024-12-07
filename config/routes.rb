Rails.application.routes.draw do
  resources :articles do
    collection do
      get :my_articles
      post :search
    end
    member do
      post 'rate'
    end
  end
  
  root "articles#index"

  # Аутентификация
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/auth/google_oauth2', to: 'sessions#google_auth'
  delete '/logout', to: 'sessions#destroy'

  # Devise для пользователей
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
