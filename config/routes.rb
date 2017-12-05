Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :articles
  resources :posts
  resources :tops, only: :index
  root 'top#index'
end
