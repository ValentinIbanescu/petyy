class PetsController < ApplicationController
   skip_before_action :authenticate_user!
  def show
    @pet = Pet.find(params[:id])
  end

  def index
    @pets = Pet.all
  end

  private

  def pet_params
    params.require(:pet).permit(:id, :category, :age)
  end
end
