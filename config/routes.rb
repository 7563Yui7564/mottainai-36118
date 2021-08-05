Rails.application.routes.draw do
  get 'creations/index'
  root to: "creations#index"
end
