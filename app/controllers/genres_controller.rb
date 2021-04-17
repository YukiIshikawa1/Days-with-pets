class GenresController < ApplicationController
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    @genre.user_id = current_user.id 
    if @genre.save
      redirect_to new_category_path, success: "追加しました"
    else
      render "new", denger: "投稿に失敗しました" 
    end
  end

  def index
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:animal_type)
  end
  
end
