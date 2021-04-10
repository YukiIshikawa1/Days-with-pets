class PetsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @pets = Pet.all
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
    params.require(:pet).permit(:pet_image,:name,:gender,:age)
  end
  
end
