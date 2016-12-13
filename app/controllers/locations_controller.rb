class LocationsController < ApplicationController

  def index
    find_admin
    @locations = Location.all
  end

  def show
    find_location
    find_admin
    @post = @location.posts.find(params[:id])
  end

  def new
    @location = Location.new
    find_admin
  end

  def edit
    find_location
    find_admin
  end

  def create
    find_admin
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else 
      render 'new'
    end
  end

  def update
    find_admin
    find_location
    if @location.save
      redirect_to location_path(@location)
    else
      render 'edit'
    end
  end

  def destroy
    find_admin
    find_location
    @location.destroy
  end 

  private
    def find_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name)
    end

    def find_admin
      @admin = User.find_by_username('admin')
    end

end