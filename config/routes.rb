Rails.application.routes.draw do
  root to: "creations#index"
  devise_for :users
  resources :creations do
    resources :comments, only: :create
  end
end
