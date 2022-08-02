Rails.application.routes.draw do
  resources :payments
  resources :orders
  resources :products
  resources :users

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signin", to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
