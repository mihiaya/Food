Rails.application.routes.draw do
  devise_for :users
  root 'foodboxes#index'
  resources :foodboxes
end
