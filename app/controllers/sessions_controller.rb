class SessionsController < ApplicationController
	def new
		@user = User.new
	end 

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			flash[:notice] = "Successfully logged in."
			redirect_to login_path
		else
			flash[:error] = "Incorrect email or password."
			redirect_to login_path
		end
	end 
end
