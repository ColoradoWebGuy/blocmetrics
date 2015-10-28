Rails.application.routes.draw do

  devise_for :users

  match '/events', to: 'events#preflight', via: [:options]

  resources :registered_applications

  namespace :api, defaults: { format: :json } do
     resources :events, only: [:create]
  end

  root to: "home#index"

end
