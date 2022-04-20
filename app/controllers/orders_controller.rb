class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create
    product = Product.find_by(id: params[:product_id])
    
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    
    
    calculated_subtotal = product.price * params["quantity"].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
  
    )
    
    if order.save
    render json: order
    else
      render json: {error_massages: order.errors.full_messages}, status: 422
    end

  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end

  def index
   orders = current_user.orders
    render json: orders.as_json
  end


end
