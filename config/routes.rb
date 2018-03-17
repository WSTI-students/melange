Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users

  root to: "static_pages#index"

  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get "/dormitory", to: "dormitory#dormitory"
end
