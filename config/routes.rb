Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get "sing_up", to: "registrations#new"
  post "sing_up", to: "registrations#create"
  get "sing_in", to: "sessions#new"
  post "sing_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "logout", to: "sessions#destroy"
  get "add", to: "product#new"
  post "add", to: "product#create"
  root "main#index"
end
