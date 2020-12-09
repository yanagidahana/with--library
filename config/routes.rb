Rails.application.routes.draw do
  devise_for :users
  root to: "outputs#index"
  resources :users, only: [:edit, :update]
end
