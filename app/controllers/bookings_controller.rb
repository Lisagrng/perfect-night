class BookingsController < ApplicationController

  def index
    @value = 0
    @my_bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.activity_id = params[:activity_id]
    @booking.total_price = @activity.price_cents * @booking.number_of_persons
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @activity = @booking.activity
    @price = @activity.price_cents * (@booking.number_of_persons)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :number_of_persons)
  end
end
