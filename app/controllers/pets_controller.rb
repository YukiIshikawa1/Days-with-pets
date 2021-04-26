class PetsController < ApplicationController
  before_action :ensure_current_user, only: %i[edit update destroy]

  def new
    @pet = Pet.new
    @pets = Pet.all
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      flash[:notice] = "投稿しました!!!" 
      redirect_to user_pet_path(current_user, @pet.id)
    else
      render 'new', denger: '登録に失敗しました'
    end
  end

  def index
    @user = User.find_by(id: params[:user_id])
    @pets = @user.pets
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
      flash[:notice] = "更新しました!!!" 
      redirect_to user_pet_path(current_user, @pet.id)
    else
      @pet = Pet.find(params[:id])
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to user_pets_path(@pet.user_id, @pet.id)
  end

  private

  # 保存するテーブル名とカラム名
  def pet_params
    params.require(:pet).permit(:pet_image, :name, :gender, :age, :category, :genre)
  end

  def ensure_current_user
    @pet = Pet.find(params[:id])
    redirect_to user_pets_path unless @pet.user == current_user
  end
end
