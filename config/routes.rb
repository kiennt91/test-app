Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/show'

  devise_for :users
  resources :users

  resources :categories do
    get 'search', on: :collection
    post 'search', on: :collection
  end

  resources :publishers do
    get 'search', on: :collection
    post 'search', on: :collection
  end
end
