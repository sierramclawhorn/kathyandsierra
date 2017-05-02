class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    find_location
    @posts = @location.posts.order('date DESC')
    @post = @posts.find(params[:id])
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
      redirect_to location_path(@location)
    else 
      render 'new'
    end
  end

  def update
    find_location
    if @location.save
      redirect_to location_path(@location)
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
      params.require(:location).permit(:name)
    end

end