class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all.reverse
  end

  def show
  	@blogs = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description, :image)
  end
end
