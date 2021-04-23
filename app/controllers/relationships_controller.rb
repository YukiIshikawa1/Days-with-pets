class RelationshipsController < ApplicationController
  # フォローする
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  # フォローを外す　
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_back(fallback_location: root_path)
  end

  # follower一覧
  def follower
    user = User.find(params[:user_id])
    @users = user.following_user
    # .follower_userメソッド ：Userモデルで定義済
  end

  # followed一覧
  def followed
    user = User.find(params[:user_id])
    @users = user.follower_user
    # .follower_userメソッド ：Userモデルで定義済
  end
end
