# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    get "dashboard/index"
    get "dashboard/users"
    get "dashboard/products"
    get "dashboard/categories"
    get "dashboard/bills"
  end

  namespace :user do
    get 'dashboard/index'
    get 'dashboard/api_keys'
  end

  root "home#index"
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  devise_for :admin_users, path: "admin", controllers: {
    sessions: "admin_users/sessions",
    passwords: "admin_users/passwords",
    registrations: "admin_users/registrations",
  }

  devise_for :users, path: "user", controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations",
  }
end
