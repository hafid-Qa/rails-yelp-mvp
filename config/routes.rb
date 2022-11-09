Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index create new show] do
    resources :reviews
  end
  # Defines the root path route ("/")
  root 'restaurants#index'
end
