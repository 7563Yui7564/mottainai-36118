Rails.application.routes.draw do
  root to: "creations#index"
  devise_for :users
  resources :creations, only: [:index, :new, :create]
end
