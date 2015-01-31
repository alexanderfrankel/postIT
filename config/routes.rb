Rails.application.routes.draw do
  root 'requests#index'

  devise_for :coaches

  resources :computers, only: [:index, :show, :edit, :create, :update]
end
