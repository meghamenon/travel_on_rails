class UsersController < ApplicationController
	before_action :require_login, only: [:show]
	def index
		@users = User.all
	end 
	def new
		@user = User.new
	end
	def show
		@user = User.find_by_id(params[:id])
		@blogs = Blog.where(["user_id = ?",@user.id]).select("*")
	end
	def create 
		@user = User.create(user_params)
		login(@user)
		redirect_to @user
	end 

	def user_params
		params.require(:user).permit(:name, :email, :password, :address, :username)
	end
end
