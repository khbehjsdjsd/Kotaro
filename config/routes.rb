Rails.application.routes.draw do
  devise_for :users
  resources :countries do
    resources :likes, only: [:create, :destroy]
  end
  root 'countries#index'
end