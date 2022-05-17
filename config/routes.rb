Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  get '/search', to: 'dashboard#search'
  
  get '/checkout', to: 'checkout#checkout'

  post '/add_to_cart_checkout', to: 'checkout#add_to_cart_checkout'
  post '/add_to_cart', to: 'checkout#add_to_cart'

  resources :graphic_cards
  resources :motherboards
  resources :power_supplies
  resources :processors
  resources :rams
  resources :ssds

  resources :orders
end
