Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :posts
  resources :tops, only: :index
  root 'top#index'
end
