class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate
    if !session[:user_id]
      flash[:error] = "You need to log in first"
      redirect_to root_path
    end
  end

end
