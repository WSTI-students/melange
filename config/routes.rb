Rails.application.routes.draw do
  devise_for :users

  resources :events
  get "events/:id/join", to: "events#join", as: "join_event"

  resources :users

  root to: "static_pages#index"

  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get "/dormitory", to: "dormitory#dormitory"
  get "/users", to: "users#index"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  get "/statistics", to: "static_pages#statistics"
end
