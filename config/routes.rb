Rails.application.routes.draw do
 
  get "/all_product", controller: "products", action: "get_all_products"

  get "/first_product", controller: "products", action: "get_first_product"

  get "/second_product", controller: "products", action: "get_second_product"

  get "/third_product", controller: "products", action: "get_third_product"

  get "/fourth_product", controller: "products", action: "get_fourth_product"


end

