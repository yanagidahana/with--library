Rails.application.routes.draw do
  get 'outputs/index'
  root to: "outputs#index"
end
