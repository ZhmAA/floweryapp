class ImagesController < ApplicationController
  def index
  	@images = Image.all.reverse
  end

  def show
  	@image = Image.find(params[:id])
  end

  private
  
  def image_params
    params.require(:image).permit(:title, :description, :album_id, :image)
  end
end
