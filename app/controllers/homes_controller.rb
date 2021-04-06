class HomesController < ApplicationController
  def top
    @posts = Post.all
  end

  def about
    @posts = Post.all
  end
end
