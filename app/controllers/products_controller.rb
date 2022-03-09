class ProductsController < ApplicationController

def get_all_products
  product = Product.all
  render json: product.as_json
end

def get_first_product
  product = Product.first
  render json: product.as_json
end

def get_second_product
  product = Product.second
  render json: product.as_json
end

def get_third_product
  product = Product.third
  render json: product.as_json
end

def get_fourth_product
  product = Product.fourth
  render json: product.as_json
end
end
