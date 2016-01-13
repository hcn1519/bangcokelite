Rails.application.routes.draw do
  
  get 'admin/hasuk_houses'

  get 'admin/users'

  root to: 'visitors#index'
  
  post 'img_upload/create'
  
  post 'rating/create'
  get 'rating/destroy'
  
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
