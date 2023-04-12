Rails.application.routes.draw do
  get "sing_up", to: "registrations#new"
  post "sing_up", to: "registrations#create"
  get "sing_in", to: "sessions#new"
  post "sing_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "logout", to: "sessions#destroy"
  root "main#index"
end
