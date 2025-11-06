Rails.application.routes.draw do

  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  resources :countries
  devise_for :users
  resources :countries do
    resources :likes, only: [:create, :destroy]
  end
  root 'countries#index'
end