Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'get_subcategory'
      get 'get_sub2category'
      get 'get_sub3category'
      get 'get_sub4category'
      get 'get_sub5category'
      get 'get_sub6category'
    end
  end
  resources :requests
  resources :responses
  resources :users
  resources :articles
  resources :categories
  resources :comments
  resources :filetypes
  resources :industries
  resources :likes
  resources :occupations
  resources :places
  resources :posts
  resources :subcategories do
    member do
      get 'requests'
    end
  end
  resources :sub2categories do
    member do
      get 'requests'
    end
  end
  resources :sub3categories do
    member do
      get 'requests'
    end
  end
  resources :sub4categories do
    member do
      get 'requests'
    end
  end
  resources :sub5categories do
    member do
      get 'requests'
    end
  end
  resources :sub6categories do
    member do
      get 'requests'
    end
  end
  resources :tweets, only: :index
  resources :tops, only: :index
  resources :comments
  resources :users do
    member do
      get 'likes'
      get 'info'
    end
  end
  resources :articles
  resources :categories do
    member do
      get 'requests'
    end
  end
  resources :filetypes, only: :show
  resources :filetype2s, only: :show
  root 'top#index'
end
