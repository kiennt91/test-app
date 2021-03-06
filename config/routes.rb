Rails.application.routes.draw do

  root 'homes#index'

  devise_for :users

  namespace :admin do
    resources :users
    resources :categories do
      get  'search', on: :collection
      post 'search', on: :collection
    end

    resources :publishers do
      get  'search', on: :collection
      post 'search', on: :collection
    end

    resources :products do
      get  'search', on: :collection
      post 'search', on: :collection
      post 'upload', on: :collection
    end
  end

  scope module: :user do
    resources :categories, only: :show do
      resources :products, only: :show
    end
  end
end
