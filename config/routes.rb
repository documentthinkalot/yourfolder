Rails.application.routes.draw do
  devise_for :users
  resources :users do
    collection do
      get 'get_suboccupation'
      get 'get_subindustry'
    end
    member do
      get 'likes'
      get 'info'
    end
  end
  resources :tops, only: :index
  resources :posts do
    resources :likes
    collection do
      get 'get_subcategory'
      get 'get_sub2category'
      get 'get_sub3category'
      get 'get_sub4category'
      get 'get_sub5category'
      get 'get_sub6category'
    end
  end
  resources :comments, only: [:destroy, :create, :index]
  resources :requests
  resources :responses, only: [:destroy, :create, :index]
  resources :articles, only: :show
  resources :industries
  resources :occupations
  resources :places
  resources :filetypes, only: :show
  resources :categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :subcategories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :sub2categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :sub3categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :sub4categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :sub5categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  resources :sub6categories, only: [:show, :requests] do
    member do
      get 'requests'
    end
  end
  root 'top#index'
end
