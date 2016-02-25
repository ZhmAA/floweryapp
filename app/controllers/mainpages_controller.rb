class MainpagesController < ApplicationController
  def index
  	@albums = Album.limit(4)
  	@blogs = Blog.limit(3).reverse
  	@contact = Contact.new
  	@meta_title        = "Flowery Title"
    @meta_description  = "Flowery Description"
    @keywords          = ""
  end

  def sitemap
    respond_to do |format|
      format.xml { render file: 'public/sitemaps/sitemap.xml' }
      format.html { redirect_to root_url }
    end
  end

  def robots
    #Write here what you want to hide and edit robots.text.erb file, + remove redirect
    redirect_to root_url
  end

end
