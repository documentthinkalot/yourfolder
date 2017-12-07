Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :articles
  resources :posts do
    collection do
      get 'get_subcategory'
      get 'get_filetype2'
    end
  end
  resources :tops, only: :index
  root 'top#index'
end
