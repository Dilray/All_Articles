Rails.application.routes.draw do
  #root 'pages#home'
  #devise_for :users, controllers: {
  #  sessions: 'users/sessions',
  #  registrations: 'users/registrations',
  #omniauth_callbacks: 'users/omniauth_callbacks'
  #}
  resources :articles
  root "articles#index"
  get 'articles/index' => 'articles#index'
  get 'articles/show' => 'articles#show'
  get 'articles/new' => 'articles#new'
  get 'articles/create' => 'articles#create'
  get 'articles/edit' => 'articles#edit'
  get 'articles/update' => 'articles#update'
  get 'articles/destroy' => 'articles#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/auth/google_oauth2', to: 'sessions#google_auth'
  # get '/google/auth', to: 'sessions#google_auth'
  delete '/logout', to: 'sessions#destroy'
  #  devise_for :users
end
