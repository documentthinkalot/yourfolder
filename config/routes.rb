Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :users do
    member do
      get 'likes'
    end
  end
  resources :articles
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'get_subcategory'
      get 'get_sub2category'
      get 'get_filetype2'
    end
  end
  resources :tops, only: :index
  resources :categories, only: :show
  resources :filetypes, only: :show
  resources :filetype2s, only: :show
  root 'top#index'
end
