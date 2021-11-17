class BookingController < ApplicationController
  def index
    Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(booking_params)
    @booking.pet = @booking
    if @booking.save!
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
