Rails.application.routes.draw do
  root 'computers#index'

  devise_for :coaches

  resources :computers, only: [:index, :show, :edit, :create, :update]
end
