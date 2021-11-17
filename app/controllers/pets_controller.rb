class PetsController < ApplicationController
  def show
    @pet = Pet.find(params[:id])
    # @user = Pet.user_id
  end

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end


  private

  def pet_params
    params.require(:pet).permit(:name, :diet, :category, :age, :medical_situation)
  end
end
