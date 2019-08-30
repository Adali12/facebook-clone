Rails.application.routes.draw do
  resources :posts
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :clones
end
