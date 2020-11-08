Rails.application.routes.draw do
  root to: 'experiences#index'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id' , to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/hosts', to: 'hosts#index'
  get '/hosts/new', to: 'hosts#new'
  post '/hosts', to: 'hosts#create'
  get '/hosts/:id/edit', to: 'hosts#edit'
  patch '/hosts/:id', to: 'hosts#update'
  delete '/hosts/:id', to: 'hosts#destroy'

  get '/experiences', to: 'experiences#index'
  get '/experiences/new', to: 'experiences#new'
  post '/experiences', to: 'experiences#create'
  delete '/experiences/:id', to: 'experiences#destroy'
end
