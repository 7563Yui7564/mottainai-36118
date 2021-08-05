Rails.application.routes.draw do
  devise_for :users
  get 'creations/index'
  root to: "creations#index"
end
