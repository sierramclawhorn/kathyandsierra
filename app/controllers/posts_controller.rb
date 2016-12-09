class PostsController < ApplicationController
  
  def index
    find_creator
    @posts = @creator.posts
  end

  def show
    find_creator
    @post = @creator.posts.find(params[:id])
  end

  def new
    find_creator
    @post = Post.new
  end

  def edit
    find_creator
    @post = @creator.posts.find(params[:id])
  end

  def create
    find_creator
    @post = @creator.post.new(post_params)
    if @post.save 
      redirect creator_posts_path
    else
      render 'new'
    end
  end

  def update
    find_creator
    @post = @creator.post.find(params[:id])
    if @post.save
      reedirect creator_post_path
    else
      render 'edit'
    end
  end

  def destory
    find_creator
    @post = @creator.post.find(params[:id]).destroy
  end

  private
    def find_creator 
      @creator = Creator.find(params[:creator_id])
    end

    def post_params
      params.require(:post).permit(:date, 
                                   :sierraTitle, 
                                   :sierraBody, 
                                   :kathyTitle, 
                                   :kathyBody)
    end

end
