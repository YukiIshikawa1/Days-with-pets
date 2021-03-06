class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(post_comment_params)
    @comment.user_id = current_user.id
    if @comment.save
    render :index
    else
    render :index
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private

  def post_comment_params
    params.require(:comment).permit(:comment, :post_id, :user_id)
  end
end
