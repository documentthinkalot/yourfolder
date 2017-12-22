Rails.application.routes.draw do
  resources :requests
  resources :responses
  resources :users
  resources :articles
  resources :categories
  resources :comments
  resources :filetypes
  resources :filetype2s
  resources :industries
  resources :likes
  resources :occupations
  resources :places
  resources :posts
  resources :sub2categories
  resources :subcategories
  resources :tweets, only: :index
  resources :tops, only: :index
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'get_subcategory'
      get 'get_sub2category'
      get 'get_filetype2'
    end
  end
  resources :comments
  devise_for :users
  resources :users do
    member do
      get 'likes'
      get 'info'
    end
  end
  resources :articles
  resources :categories, only: :show
  resources :filetypes, only: :show
  resources :filetype2s, only: :show
  root 'top#index'
end
