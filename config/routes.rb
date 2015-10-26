Rails.application.routes.draw do
  
  get 'register/create'

  get 'register/edit'

  get 'register/show'

  get 'register/delete'

  get 'check/leavepage'
  get 'check/needlogin'
  
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
