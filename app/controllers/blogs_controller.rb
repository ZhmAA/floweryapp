class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all.reverse
    @contact = Contact.new
  end

  def show
  	@blog = Blog.find(params[:id])
    @contact = Contact.new
    @meta_title = @blog.meta_title
    @meta_description = @blog.meta_description
    @keywords = @blog.keywords
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description, :image, :meta_title, :meta_description, :keywords, :url)
  end
end
