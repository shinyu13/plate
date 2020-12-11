Rails.application.routes.draw do
  devise_for :users
  root 'plates#index'
  resources :plates, only: %i(new create)
end
