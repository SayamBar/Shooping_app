Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  # get "/products", to:"products#index", as: 'products'
  # post "/products", to:"products#create"
  # get "/products/new", to:"products#new", as:'new_product'
  # get "/products/:id", to:"products#edit",as: 'edit_product'
  # get "/products/:id", to:"products#show", as: 'product'
  # patch "/products/:id", to:"products#update"
  # put "/products/:id", to:"products#update"

  resources :products
end
