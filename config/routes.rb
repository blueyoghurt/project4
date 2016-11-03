Rails.application.routes.draw do
  resources :tasktrackers
  resources :templates
  root 'public#index'
  post "/" => "sessions#create"

  # AUTHENTICATION
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  # Users - custom routes for users, registration, profile, editing etc
  get "register" => "users#new"
  post "users" => "users#create"
  get "/users/profile" => "users#profile"
  get "profile" => "users#show"
  get "profile/edit" => "users#edit"
  put "profile" => "users#update"
  patch "profile" => "users#update"
  patch "users/:id" => "users#update"
  resources :users, only: [:index, :destroy] do
    patch 'admin' => "users#toggle_admin", on: :member
  end

  get "teacher/register" => "school_users#new"
  resources :school_users, except: [:new]

  get "ngo/register" => "ngo_users#new"
  resources :ngo_users, except: [:new]

  get "student/register" => "students#new"
  get "students/search" => "students#search"
  get "students/profile" => "students#profile"
  resources :students, except: [:new]

  get "cards/profile" => "cards#profile"
  get "cards/search" => "cards#search"
  resources :cards

  get "tasks/search" => "tasks#search"
  resources :tasks

  resources :levels

  get "events/search" => "events#search"
  get "events/pending" => "events#pending"
  get "events/past" => "events#past"
  get "events/student" => "events#eventAvailabletoStudent"
  get "events/student/past" => "events#pastEventtoStudent"
  resources :events

  get "ngos/profile" => "ngos#profile"
  get "ngos/search" => "ngos#search"
  resources :ngos

  get "schools/profile" => "schools#profile"
  get "schools/search" => "schools#search"
  resources :schools
  get 'main/index'

  get 'main/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
