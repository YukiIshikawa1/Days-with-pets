class CategoriesController < ApplicationController
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id 
    if @category.save
      redirect_to new_genre_path, success: "追加しました"
    else
      render "new", denger: "投稿に失敗しました" 
    end
  end

  def index
  end
  
  private
  
  def category_params
    params.require(:category).permit(:category)
  end  
    
end
