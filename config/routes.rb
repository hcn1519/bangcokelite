Rails.application.routes.draw do
  
  
  get 'map/mappage'

  get 'map/map_detail'

  get 'map/from_hasuk'

  resources :hasuk_houses
  root to: 'visitors#index'
  devise_for :users, :controllers => { :registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
end
