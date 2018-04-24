class CitiesController < ApplicationController
	def index
		@cities = City.all
	end
  def show
    @city=City.find_by_id(params[:id])
    cookies[:city_id]= @city.id
  end
  def create

  end
end
