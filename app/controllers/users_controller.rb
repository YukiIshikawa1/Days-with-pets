class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def follower
    user = User.find(params[:id])
    @users = user.following_user
  end

  def followed
    user = User.find(params[:id])
    @users = user.follower_user
  end

  private

  def user_params
    params.require(:user).permit(:user_image, :name, :nick_name, :email)
  end
end
