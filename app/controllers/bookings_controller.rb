class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    # @experiences = Experience.where(id: bookings.experience_id)
  end
  
  def new
    @booking = Booking.new
    redirect_to action: :create
  end

  def create
    Booking.create(user_id: current_user.id, experience_id: params[:experience_id])
    render("bookings/create")
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
    booking = Booking.find_by(user_id: current_user.id, experience_id: params[:experience_id])
    booking.destroy
    render("bookings/destroy")
  end

  private

  def booking_params
    params.require(:bookings).permit(:user_id,:experience_id)
  end

end
