Rails.application.routes.draw do
  
  
  get 'map/mappage'

  get 'map/map_detail'

  get 'map/from_hasuk'

  resources :hasuk_houses
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
