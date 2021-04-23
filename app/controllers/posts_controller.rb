class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[top about index]
  before_action :ensure_current_user, only: %i[edit update destroy]

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
      redirect_to post_path(@post.id), success: '投稿しました'
    else
      @pet = Pet.where(user_id: current_user.id)
      render 'new', denger: '投稿に失敗しました'
    end
  end

  def index
    @posts_favorite = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(10).pluck(:post_id))
    @posts = Post.all.page(params[:page]).per(5)
    @user1 = User.find_by(params[:id])
    @user = User.find(current_user.id) if user_signed_in?
  end

  def show
    @posts_favorite = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(10).pluck(:post_id))
    @post = Post.find(params[:id])
    @pet = Pet.find(@post.pet_id)
    @user = User.find(@post.user_id)
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
  end

  def edit
    @post = Post.find(params[:id])
    @pet = Pet.where(user_id: current_user.id)
  end

  def update
    @post = Post.find(params[:id])
    @post.user_id = current_user.id
    if @post.update(post_params)
      redirect_to post_path(@post.id), success: '編集しました'
    else
      @post = Post.find(params[:id])
      render 'edit'
    end
  end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:post_image, :title, :text, :pet_id)
  end

  def ensure_current_user
    @post = Post.find(params[:id])
    redirect_to posts_path unless @post.user == current_user
  end
  
end
