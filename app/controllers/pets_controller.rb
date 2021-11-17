class PetsController < ApplicationController
  def show
    @pet = Pet.find(params[:id])
    # @user = Pet.user_id
  end

  def index
    @pets = Pet.all
  end

  private

  def pet_params
    params.require(:pet).permit(:id, :category, :age)
  end
end
