class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user_id: @user)
    @pets = Pet.where(user_id: @user)
  end
end
