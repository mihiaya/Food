Rails.application.routes.draw do
  devise_for :users
  root 'foodboxes#index'
  resources :leads, path: ''
  resources :foodboxes
  resources :users, only: :show
end
