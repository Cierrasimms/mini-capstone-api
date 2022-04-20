class CartedProductsController < ApplicationController
  before_action :authenticate_user
  
  def index
    carted_products = current_user.carted_products
     render json: carted_products.as_json
   end
  
  def create
   
     carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      order_id: "nil",
      status: "carted"

    
    )
    
    if carted_product.save
    render json: carted_product
    else
      render json: {error_massages: carted_product.errors.full_messages}, status: 422
    end

  end
end
