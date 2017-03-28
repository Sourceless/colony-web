Rails.application.routes.draw do
  devise_for :users
  resources :accounts
  resources :teams

  get '/pricing', to: 'pages#pricing'
  get '/product', to: 'pages#product'

  get '/dashboard', to: 'dashboard#dashboard'

  root to: 'pages#home'
end
