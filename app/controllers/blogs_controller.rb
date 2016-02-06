class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all.reverse
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description, :image, :meta_title, :meta_description, :keywords)
  end
end
