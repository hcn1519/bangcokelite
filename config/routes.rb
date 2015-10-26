Rails.application.routes.draw do
  
  get 'check/leavepage'
  get 'check/needlogin'
  
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
