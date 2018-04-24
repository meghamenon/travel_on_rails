class BlogsController < ApplicationController
  # before_action :require_login, only: [:show]
  def create
    @user = current_user.id
    @blog = City.find_by_id(params[:city_id])
            .blogs
            .new(post_params)
    @blog.user_id = @user
    @blog.save

    redirect_to
  end

  def show
    @blog = Blog.find_by_id(params[:id])
  end

  def new
    @blog = Blog.new
    @city = City.find_by_id(params[:city_id])
  end

  def destroy
    @user = User.find_by_id(params[:user_id])
    @blog = Blog.find_by_id(params[:id])
    @blog.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find_by_id(params[:user_id])
    @blog = Blog.find_by_id(params[:id])
  end

  def update
    update_params = params.require(:blog).permit(:description)
    @user = User.find_by_id(params[:user_id]).id
    @blog = Blog.find_by_id(params[:id])
    @blog.update_attributes(update_params)
    redirect_to user_path(@user)

      # if @blog.update(blog_params)
      #   #redirect_to user_path(@user)
      # else
      #   flash[:error]=blog.errors.full_messages.join(", ")
      #   redirect_to edit_user_blog_path(@user, @blog)
      #
      # end
  end

  private

  def blog_params
    params.permit(:city_id,:description)
  end

end
