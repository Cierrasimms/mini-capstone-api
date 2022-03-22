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


post "/users" => "users#create"


post "/sessions" => "sessions#create"
end

