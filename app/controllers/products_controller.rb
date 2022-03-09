class ProductsController < ApplicationController

def get_all_products
  all_products = Product.all
  render json: all_products.as_json
end

def get_first_product
  first_product = Product.first
  render json: first_product.as_json
end

def get_second_product
  second_product = Product.second
  render json: second_product.as_json
end

def get_third_product
  third_product = Product.third
  render json: third_product.as_json
end

def get_fourth_product
  fourth_product = Product.fourth
  render json: fourth_product.as_json
end
end
