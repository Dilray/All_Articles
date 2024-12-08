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
  # get 'articles/index' => 'articles#index'
  # get 'articles/show' => 'articles#show'
  # get 'articles/new' => 'articles#new'
  # get 'articles/create' => 'articles#create'
  # get 'articles/edit' => 'articles#edit'
  # get 'articles/update' => 'articles#update'
  get 'articles/my_articles' => "articles#my_articles"
  #get 'articles/topics' => "articles#topics"
  get 'topics' => 'articles#topics'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/auth/google_oauth2', to: 'sessions#google_auth'
  # get '/google/auth', to: 'sessions#google_auth'
  delete '/logout', to: 'sessions#destroy'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


end
