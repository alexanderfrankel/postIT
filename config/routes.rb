Rails.application.routes.draw do
  root 'requests#index'

  devise_for :coaches

  resources :jobs
  resources :requests
end
