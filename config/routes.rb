Rails.application.routes.draw do
  resources :laps
  resources :races
  resources :circuits
  resources :pilot_teams
  resources :championships
  resources :pilots
  resources :teams
  resources :brands
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "championships#index"
end
