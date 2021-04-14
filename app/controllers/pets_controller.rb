class PetsController < ApplicationController
  def new
    @genre = Genre.where(user_id: current_user.id)
    @category = Category.where(user_id: current_user.id)
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path(@pet.id), success: "登録しました"
    else
      render "new", denger: "登録に失敗しました" 
    end  
  end

  def index
    @pets = Pet.all
    @user = User.where(user_id: current_user.id)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])    
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.user.id = current_user.id
    if @pet.update(pet_params)
      redirect_to pet_path(@pet.id), success: "編集しました"
    else
    @pet = Pet.find(params[:id])
    render "edit"
    end
  end

  def destroy
  end
  
  private
  
  #保存するテーブル名とカラム名
  def pet_params
    params.require(:pet).permit(:pet_image,:name,:gender,:age, :genre_id, :category_id)
  end
  
end
