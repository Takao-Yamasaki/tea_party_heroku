Rails.application.routes.draw do
  root to: 'experiences#index'
  devise_for :users
  resources :experiences
  resources :hosts
  resources :bookings
end
