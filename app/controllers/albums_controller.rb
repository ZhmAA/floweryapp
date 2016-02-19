class AlbumsController < ApplicationController
  def index
  	@albums = Album.all
  end

  def show
  	@album = Album.find(params[:id])
  	@images = @album.images.reverse
    @contact = Contact.new
  end

  private
  
  def album_params
    params.require(:album).permit(:title, :description, :image, :meta_title, :meta_description, :keywords)
  end
end
