Rails.application.routes.draw do

  resources :events
  resources :registered_applications

  devise_for :users

  root to: "home#index"

end
