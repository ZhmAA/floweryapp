class MainpagesController < ApplicationController
  def index
  	@albums = Album.limit(4)
  	@blogs = Blog.limit(3).reverse
  	@contact = Contact.new
  end
end
