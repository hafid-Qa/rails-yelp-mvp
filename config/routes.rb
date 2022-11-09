Rails.application.routes.draw do
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants
  # Defines the root path route ("/")
  root 'restaurants#index'
end
