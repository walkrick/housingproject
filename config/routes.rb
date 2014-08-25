Rails.application.routes.draw do


  get "signin" => "sessions#new", as: :signin
  get "signout" => "sessions#destroy", as: :signout

  root "welcome#index"

  resources :users
  resources :sessions

end
