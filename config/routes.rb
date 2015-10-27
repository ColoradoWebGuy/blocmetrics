Rails.application.routes.draw do

  resources :registered_applications
  get 'home/index'

  devise_for :users

  root to: "home#index"

end
