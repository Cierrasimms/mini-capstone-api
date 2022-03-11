class ProductsController < ApplicationController

def get_all_products
  all_products = Product.all
  render json: all_products.as_json
end

def get_first_product
  first_product = Product.first
  render json: {product1: first_product}
end

def get_second_product
  second_product = Product.second
  render json: {product2: second_product}
end

def get_third_product
  third_product = Product.third
  render json: {product3: third_product}
end

def get_fourth_product
  fourth_product = Product.fourth
  render json: {product4: fourth_product}
end

def get_products
  product = params["id"]
  product_all = Product.find_by(id: product)
  render json: product_all.as_json
end
end
