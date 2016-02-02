class ImagesController < ApplicationController
  def index
  	@image = Image.all
  end

  def show
  	@images = Image.find(params[:id])
  end

  private
  
  def image_params
    params.require(:image).permit(:title, :description, :image)
  end
end
