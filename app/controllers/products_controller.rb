class ProductsController < ApplicationController

def index
  all_products = Product.all
  product = all_products
  render json: product
end

def show
  product = Product.find_by(id: params["id"])
  render json: product
end

def create
  product = Product.new(
    name: params["name"],
    price: params["price"],
    description: params["description"],
  
  )
  
  if product.save
  render json: product
  else
    render json: {error_massages: product.errors.full_messages}, status: 422
  end
end

def update
  product_id = params["id"]
  product = Product.find(product_id)

  product.name = params["name"] || product.name
  product.price = params["price"] || product.price
  product.description = params["description"] || product.description

  if product.save
    render json: product
    else
      render json: {error_massages: product.errors.full_messages},status: 422
  end
end

def destroy
  product_id = params["id"]
  product = Product.find_by(id: product_id)
  product.destroy
  render json: "Product has been terminated."
end
end
