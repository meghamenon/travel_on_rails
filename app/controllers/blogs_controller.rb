class BlogsController < ApplicationController
  before_action :require_login, only: [:show]
  def create

    @blog = Blog.create(blog_params)
    @blog.user_id=cookies[:user_id]
    @blog.city_id= cookies[:city_id]
    @blog.date_created=Date.today
    @blog.save
    redirect_to @blog
  end

  def show
    @blog = Blog.find_by_id(params[:id])
  end

  def new
    @blog=Blog.new
  end

  def destroy
    @blog = Blog.find_by_id(params[:id])
    @blog.destroy
    redirect_to user_show_path(id: @blog.user_id)
  end 

  def update
    @blog = Blog.find_by_id(params[:id])
    @blog.update
    redirect_to blog_update_path(id: @blog.user_id)
  end

  private

  def blog_params
    params.require(:blog).permit(:description)
  end

end
