class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
    @experience_id = params[:id]
  end

  def create
    @booking.create(booking_params)
    redirect_to action: :index
  end

  def edit
    @booking.find(params[:id])
  end

  def update
    booking = @booking.find(params[:id])
    booking.update(booking_params)
    redirect_to action: :index
  end

  def destroy
    @booking.destroy
    redirect_to action: :index
  end

  private

  def booking_params
    params.require(:bookings).permit(:user_id,:experience_id)
  end

end
