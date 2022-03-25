Rails.application.routes.draw do
 
  ### Products
  
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  ### Supplier 

 get "/supplier" => "suppliers#index"

 get "/supplier/:id" => "suppliers#show"

 post "/supplier" => "suppliers#create"

 patch "/supplier/:id" => "suppliers#update"

 delete "/supplier/:id" => "suppliers#destroy"

### Image 

get "/image" => "images#index"

get "image/:id" => "images#create"

get "/image/:id" => "images#show"

patch "/image/:id" => "images#update"

delete "/image/:id" => "images#destroy"

### Users create
post "/users" => "users#create"

### Sessions create
post "/sessions" => "sessions#create"


### Orders create
post "/order" => "orders#create"

get "/order/:id" => "orders#show"

get "/order" => "orders#index"

### Carted_products create

post "cart" => "carted_products#create"

get "cart" => "carted_products#index"




end


