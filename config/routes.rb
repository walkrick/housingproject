Rails.application.routes.draw do


  root "dashboard#index"


  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  get "/about" => "pages#about", as: :about


  resources :users
  resources :sessions


end
