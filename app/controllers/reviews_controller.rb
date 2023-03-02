class ReviewsController < ApplicationController
  before_action :set_actvity, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.where(user: current_user, activity: @activity).first
    @review = Review.new(review_params)
    # @review.activity = @activity
    @review.booking = @booking
    if @review.save
      flash[:notice] = "Avis publié !"
      redirect_to activity_path(@activity)
    else
      flash[:notice] = "Aïe ton avis n'a pas marché, n'oublie pas de noter et mettre un avis assez long!"
      # redirect_to activity_path(@activity), status: :unprocessable_entity

      render 'activities/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to activity_path(@review.booking.activity), status: :see_other
  end

  private

  def set_actvity
    @activity = Activity.find(params[:activity_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
