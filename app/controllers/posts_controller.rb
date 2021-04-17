class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:top, :about, :index]
  
  def top
    @posts = Post.all
  end

  def about
    @posts = Post.limit(5) 
  end
  
  def new
    @post = Post.new  
    @pet = Pet.where(user_id: current_user.id)
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
    @posts = Post.all.page(params[:page]).per(5)
    if user_signed_in?
    @user = User.find(current_user.id)
    end
  end

  def show
    @post = Post.find(params[:id])
    @pet = Pet.find(@post.pet_id)
    @user = User.find(@post.user_id)
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
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
    params.require(:post).permit(:post_image,:title,:text,:pet_id)
  end  
  
end
