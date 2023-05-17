Rails.application.routes.draw do
  #root "hello#index"
  root "main#index"

  # Add route for sign-up page
  get '/signup', to: 'users#new', as: 'new_user'
  post '/signup', to: 'users#create'

  # Sesions Routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Add routes that allow users to create and list users
  post '/users', to: 'users#create'
  post '/users/new', to: 'users#new'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

  # Add routes that allow users to create, list, update, and delete posts
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  get '/about', to: 'about#index' #hands it off to the about controller and the index action
end
