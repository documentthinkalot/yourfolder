Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :users
  resources :articles
  resources :posts do
    collection do
      get 'get_subcategory'
      get 'get_sub2category'
      get 'get_filetype2'
    end
  end
  resources :tops, only: :index
  resources :categories, only: :show
  resources :filetypes, only: :show
  root 'top#index'
end
