Rails.application.routes.draw do
  devise_for :users
  root to: 'experiences#index'

  get '/hosts', to: 'hosts#index'
  get '/hosts/new', to: 'hosts#new'
  post '/hosts', to: 'hosts#create'
  get '/hosts/:id/edit', to: 'hosts#edit'
  patch '/hosts/:id', to: 'hosts#update'
  delete '/hosts/:id', to: 'hosts#destroy'

  get '/experiences', to: 'experiences#index'
  get '/experiences/new', to: 'experiences#new'
  post '/experiences', to: 'experiences#create'
  get '/experiences/:id/edit', to: 'experiences#edit'
  patch '/experiences/:id', to: 'experiences#update'
  delete '/experiences/:id', to: 'experiences#destroy'
end
