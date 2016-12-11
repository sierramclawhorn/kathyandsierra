class PostsController < ApplicationController
  
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
    @post = @location.post.new(post_params)
    if @post.save 
      redirect location_posts_path
    else
      render 'new'
    end
  end

  def update
    find_location
    @post = @location.post.find(params[:id])
    if @post.save
      redirect location_post_path
    else
      render 'edit'
    end
  end

  def destory
    find_location
    @post = @location.post.find(params[:id]).destroy
  end

  private
    def find_location 
      @location = Location.find(params[:location_id])
    end

    def post_params
      params.require(:post).permit(:date, 
                                   :location,
                                   :sierraTitle, 
                                   :sierraBody, 
                                   :kathyTitle, 
                                   :kathyBody)
    end

end
