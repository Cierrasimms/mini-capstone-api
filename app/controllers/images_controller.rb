class ImagesController < ApplicationController
  def index
    all_images = Image.all
    render json: all_images
  end
  
  def show
    image = Image.find_by(id: params["image_id"])
    render json: image
  end
  
  def create
    image = Image.new(
      
      url: params["url"]
    )
    if product.save
      render json: image
      else
        render json: {error_massages: image.errors.full_messages}, status: 422
      end
    end
  
    def update
      image_id = params["id"]
      image = Image.find(image)
    
      image.url = params["url"] || image.url
    
    
      if image.save
        render json: image
        else
          render json: {error_massages: image.errors.full_messages},status: 422
      end
    end
    
    def destroy
      image_id = params["id"]
      image = Image.find_by(id: image_id)
      image.destroy
      render json: "Image has been terminated."
    end
    
  end
end