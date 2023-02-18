class ReviewsController < ApplicationController
  before_action :set_actvity, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)
    @review.activity = @activity
    if @review.save!
      redirect_to activities_path(@activity)
    else
      redirect_to activities_path(@activity), status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to activity_path(@review.activity), status: :see_other
  end

  private

  def set_actvity
    @activity = Activity.find(params[:activity_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end