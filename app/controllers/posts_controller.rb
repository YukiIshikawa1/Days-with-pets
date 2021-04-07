class PostsController < ApplicationController
  
  def top
    @post = Post.all
  end

  def about
    @post = Post.all
  end
  
  def new
    @post = Post.new  
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id), success: "投稿しました"
    else
      render "new", denger: "投稿に失敗しました"
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def post_params
    params.require(:post).permit(:title,:text)
  end  
  
end
