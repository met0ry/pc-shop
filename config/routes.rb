Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :graphic_cards
  resources :motherboards
  resources :power_supplies
  resources :processors
  resources :rams
  resources :ssds
end
