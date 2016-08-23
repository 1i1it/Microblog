Rails.application.routes.draw do
  resources :users
  post '/signup',  to: 'users#create'
  root 'application#hello'
end
