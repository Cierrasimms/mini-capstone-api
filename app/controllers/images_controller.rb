class ImagesController < ApplicationController

def index
  all_images = Image.all
  render json: all_images
end

def create
  image = Image.new(
    
    url: params["url"]
  )
  if product.save
    render json: product
    else
      render json: {error_massages: product.errors.full_messages}, status: 422
    end
  end

  def show
    image = Image.find_by(id: params["product_id"])
    render json: image
  end
  
end
