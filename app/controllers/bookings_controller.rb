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
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.console = Activity.find(params[:activity_id])
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Activity.find(params[:id])
    @activity = @booking.activity
    if @booking.start_at == @booking.end_at
      @price = @activity.price_cents
    else
      @price = @activity.price_cents * (@booking.end_at.to_date - @booking.start_at.to_date).to_i
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :price_cents)
  end
end
