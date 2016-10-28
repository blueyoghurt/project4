Rails.application.routes.draw do
  resources :events
  resources :ngo_users
  resources :school_users
  resources :ngos
  resources :schools
  resources :users
  get 'main/index'

  get 'main/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
