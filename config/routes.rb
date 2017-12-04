Rails.application.routes.draw do
  resources :articles
  resources :posts
  resources :tops, only: :index
  root 'top#index'
end
