Rails.application.routes.draw do
  root 'computers#index'

  devise_for :coaches

  resources :computers, only: [:index, :show, :edit, :create, :update]

  get 'computers/:id/toggle_status', :to => 'computers#toggle'
end
