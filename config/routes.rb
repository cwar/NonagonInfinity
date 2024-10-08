Rails.application.routes.draw do
  resources :stats
  resources :setlist_items
  devise_for :users
  resources :transitions
  resources :setlists
  resources :songs
  resources :venues
  resources :tours
  resources :shows
  resources :set_types
  resources :footnote_symbols
  resources :people
  resources :bandmembers
  resources :albums
  resources :artists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "songs#index"
end
