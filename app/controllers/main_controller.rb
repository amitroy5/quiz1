class MainController < ApplicationController
  def index
    @location = Location.last
  end

  def new
    @location = Location.new
  end

  def create
    Location.create(location_params)
    redirect_to root_path
  end

  private

  def location_params
    params.require(:location).permit(:city, :state)
  end

end
