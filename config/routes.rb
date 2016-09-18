Rails.application.routes.draw do
  devise_for :users
  rout 'foods#index'
  resources :foods
end
