class PostsController < ApplicationController

  def index
    find_location
    @posts = @location.posts
  end
  
  def show
    find_location
    @post = @location.posts.find(params[:id])
  end

  def new
    find_location
    @post = Post.new
  end

  def edit
    find_location
    @post = @location.posts.find(params[:id])
  end

  def create
    find_location
    @post = @location.posts.new(post_params)
    if @post.save 
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def update
    find_location
    @post = @location.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to location_path(@location)
    else
      render 'edit'
    end
  end

  def destroy
    find_location
    @post = @location.posts.find(params[:id]).destroy
    if @post.destroy
      redirect_to location_path(@location)
    end
  end

  private
    def find_location 
      @location = Location.find(params[:location_id])
    end

    def post_params
      params.require(:post).permit(:date, 
                                   :location,
                                   :title, 
                                   :sierraBody, 
                                   :kathyBody)
    end

end
