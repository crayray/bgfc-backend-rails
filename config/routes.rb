Rails.application.routes.draw do
  
  resources :rsvps
  resources :restaurants
  resources :events
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
