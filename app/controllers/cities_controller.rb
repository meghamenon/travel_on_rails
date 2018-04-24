class CitiesController < ApplicationController
	def index
		@cities = City.all
	end
  def show
    @city=City.find_by_id(params[:id])
    @blogs = @city.blogs
  end

  def new
    @blog = Blog.new
  end

  def create

  end
end
