Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :home, only: [:index]
  resources :car_types, only: [:index]
  resources :car_colors, only: [:index]
  resources :bid_types, only: [:index]
  resources :car_models, only: [:index]
  resources :auctions
  resources :user_bids
  resources :user_reviews
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
