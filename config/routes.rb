Rails.application.routes.draw do
  devise_for :users
  resources :random_things
  root 'random_things#index'
end
