Rails.application.routes.draw do
  
  root to: 'visitors#index'
  
  
  
  get 'map/mappage'

  get 'map/map_detail'

  get 'map/from_hasuk'
  
  get 'map/myfavorite'
  get 'map/from_favorite'
  resources :hasuk_houses do
    put :favorite, on: :member
  end
  
  devise_for :users, :controllers => { :registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
end
