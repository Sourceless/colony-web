Rails.application.routes.draw do
  devise_for :user

  resources :accounts, param: :uuid do
    get 'claim', on: :member
    get 'invite', on: :member, to: 'accounts#resend'
    post 'invite', on: :member
  end

  resources :teams
  resources :users

  # External
  get '/pricing', to: 'pages#pricing'
  get '/product', to: 'pages#product'

  # Internal
  get '/dashboard', to: 'dashboard#dashboard'
  get '/my/account', to: 'accounts#index'
  get '/my/profile', to: 'users#show_current_user'
  get '/my/team', to: 'teams#show_current_team'

  root to: 'pages#home'
end
