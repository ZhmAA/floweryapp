class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all.reverse
    contact_form
  end

  def show
  	contact_form
    @blog = Blog.find(params[:id])
    @meta_title = @blog.meta_title
    @meta_description = @blog.meta_description
    @keywords = @blog.keywords
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description, :image, :meta_title, :meta_description, :keywords, :url)
  end
end
