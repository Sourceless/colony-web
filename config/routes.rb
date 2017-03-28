Rails.application.routes.draw do
  resources :teams
  resources :accounts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accounts
  resources :teams

  get '/pricing', to: 'pages#pricing'
  get '/product', to: 'pages#product'

  root to: 'pages#home'
end
