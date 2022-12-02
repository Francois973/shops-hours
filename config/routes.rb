Rails.application.routes.draw do
  get 'shops/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'shops#index'

  resources :shops, only: %i[index]
end
