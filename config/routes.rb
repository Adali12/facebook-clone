Rails.application.routes.draw do
  
  resources :posts
  root 'sessions#new'
  resources :sessions
  resources :clones

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
