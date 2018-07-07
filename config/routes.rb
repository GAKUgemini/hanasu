Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#top'
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :topics
  resources :articles
  end
