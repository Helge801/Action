Rails.application.routes.draw do
  resources :random_things
  root 'random_things#index'
end
