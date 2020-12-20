Rails.application.routes.draw do
  devise_for :users
  root to: "outputs#index"
  resources :users, only: [:edit, :update]
  resources :libraries, only: [:new, :show, :create, :destroy] do
    resources :outputs, only: [:index, :create]
  end
end
