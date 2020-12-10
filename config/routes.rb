Rails.application.routes.draw do
  devise_for :users
  root to: "outputs#index"
  resources :users, only: [:edit, :update]
  resources :books, only: [:new, :create]
end
