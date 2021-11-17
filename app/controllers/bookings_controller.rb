class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.pet = @pet
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
