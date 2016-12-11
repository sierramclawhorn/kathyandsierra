class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    find_location
  end

  def new
    @location = Location.new
  end

  def edit
    find_location
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect location_path
    else 
      render 'new'
  end

  def update
    find_location
    if @location.save
      redirect location_path
    else
      render 'edit'
    end
  end

  def destroy
    find_location
    @location.destroy
  end 

  private
    def find_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:location)
    end

end
