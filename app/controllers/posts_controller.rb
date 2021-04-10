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
      @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to post_path(@post.id), success: "投稿しました"
    else
      render "new", denger: "投稿に失敗しました"
    end
  end

  def index
    @posts = Post.all
    @user = User.find(current_user.id)
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user.id)
  end

  def edit
    @post = Post.find(params[:id])  
  end

  def update
    @post = Post.find(params[:id])  
    @post.user_id = current_user.id
    if @post.update(post_params)
      redirect_to post_path(@post.id), success: "編集しました"
    else
    @post = Post.find(params[:id])       
    render "edit"
    end
  end

  def destroy
  end
  
  private
  def post_params
    params.require(:post).permit(:post_image,:title,:text)
  end  
  
end
