Rails.application.routes.draw do
  resources :laboratories
  resources :brands
  resources :producers
  resources :equipment_types
  resources :verifications
  resources :places
  resources :equipment
  devise_for :admins
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
