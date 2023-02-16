Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  get "/products", to:"products#index", as: 'products'
  post "/products", to:"products#create"
  get "/products/new", to:"products#new", as:'new_product'
  get "/products/:id/edit", to:"products#edit",as: 'edit_product'
  get "/products/:id", to:"products#show", as: 'product'
  patch "/products/:id", to:"products#update"
  put "/products/:id", to:"products#update"

  get "/signup", to:"users#new"
  post "/users", to:"users#create"

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # resources :products
end
