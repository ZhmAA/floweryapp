class AlbumsController < ApplicationController
  def index
  	@albums = Album.all
  end

  def show
  	contact_form
    @album = Album.find(params[:id])
  	@images = @album.images.reverse
    @meta_title = @album.meta_title
    @meta_description = @album.meta_description
    @keywords = @album.keywords
  end

  private
  
  def album_params
    params.require(:album).permit(:title, :description, :image, :meta_title, :meta_description, :keywords, :url)
  end
end
