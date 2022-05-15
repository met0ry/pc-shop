Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  resources :graphic_cards
  resources :motherboards
  resources :power_supplies
  resources :processors
  resources :rams
  resources :ssds
end
