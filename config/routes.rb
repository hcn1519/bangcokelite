Rails.application.routes.draw do
  
  
  post 'map/mappage'

  post 'map/map_detail'

  get 'map/from_hasuk'

  resources :hasuk_houses
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
