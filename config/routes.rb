Rails.application.routes.draw do
  root 'requests#index'

  devise_for :coaches

  resources :requests, only: [:index, :show, :edit, :create, :update]
end
