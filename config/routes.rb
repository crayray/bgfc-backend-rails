Rails.application.routes.draw do
  
  resources :interests
  resources :rsvps
  resources :restaurants
  resources :events
  resources :profiles
  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
