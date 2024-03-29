Stack::Application.routes.draw do
  get "sessions/new"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  resources :questions do
    resources :responses
  end

  resources :responses

  root 'questions#index'


end

