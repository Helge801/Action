Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :random_things
  root 'random_things#index'
end
