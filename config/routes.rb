Rails.application.routes.draw do
  get 'sessions/new'

  get 'static_pages/home'

  get 'static_pages/help'

  resources :users
  
  post '/signup',  to: 'users#create'
  root 'users#index'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :account_activations, only: [:edit]
end

