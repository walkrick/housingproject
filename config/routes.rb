Rails.application.routes.draw do


  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  root "welcome#index"

  resources :users
  resources :sessions



end
