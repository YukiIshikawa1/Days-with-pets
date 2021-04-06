class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new(post_params)
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def post_params
    params.require(:post).permit(:image, :title, :text, :genre_id,)
  end  
  
end
