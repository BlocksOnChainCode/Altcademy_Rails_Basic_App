Rails.application.routes.draw do
  root "hello#index"

  # Add routes that allow users to create and list users
  post '/users', to: 'users#create'

  # Add routes that allow users to create, list, update, and delete posts
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
