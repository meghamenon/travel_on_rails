class BlogsController < ApplicationController
  def create

    @blog = Blog.create(blog_params)
    @blog.user_id=cookies[:user_id]
    @blog.city_id=6
    @blog.date_created=Date.today
    @blog.save
  end

  def new
    @blog=Blog.new
  end

  private

  def blog_params
    params.require(:blog).permit(:description)
  end

end
