class ActivitiesController < ApplicationController
  before_action :activity_id, only: %i[show edit update destroy]

  def index
    search
    # @markers = @activities.geocoded.map do |activity|
      # {
        # lat: activity.latitude,
        # lng: activity.longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: { activity: activity })
      # }
    #end
  end

  def show
    @review = Review.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @activity.save
    redirect_to activity_path(@activity)
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activity_path, status: :see_other
  end

  private


  def activity_id
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :price_cents, :start_at, :max_number_person, :end_at, :workshop, :opening_days, :open_at, :close_at)
  end

  def search
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @acivities = Activity.all
    end
  end
end
