class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    # search
    # @activities = Activity.filter_attributes
    @activities = Activity.all
    filtre if params[:activity].present?
    choose_random_activity
  end

  def choose_random_activity
    # params[:ville] params[:category] params[:max_number_person]
    # if params[:activity].blank?
    @random_activity = Activity.all.sample

    if params[:activity] && params[:activity][:ville].present?
      @random_activity = Activity.where(ville: params[:activity][:ville]).sample
    elsif params[:activity] && params[:activity][:max_number_persons].present?
      @random_activity = Activity.where(max_number_persons: params[:activity][:max_number_persons]).sample
    elsif params[:activity] && params[:activity][:categorie].present?
      @random_activity = Activity.where(categorie: params[:activity][:categorie]).sample
    end
  end

  def show
    @review = Review.new
    @user = current_user
    @booking = Booking.where(user: current_user, activity: @activity).first
    @reviews = Review.includes(:booking).where(booking: { activity: @activity })
    @is_reviewed = @reviews.any?
    @marker =
      [{
        lat: @activity.latitude,
        lng: @activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { activity: @activity }),
        marker_html: render_to_string(partial: "marker")
      }]
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

  def index_filtre
    @activities = Activity.all
    filtre if params[:activity].present?
  end

  def random_activity
    @activities = Activity.all
    @activity = @activities.sample
    redirect_to activity_path(@activity)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :price_cents, :start_at, :max_number_person, :end_at,
                                    :workshop, :opening_days, :open_at, :close_at)
  end

  def search
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end
end

def filtre
  if params[:activity][:max_number_persons].present?
    @activities = @activities.where(max_number_persons: params[:activity][:max_number_persons])
  end
  if params[:activity][:ville].present?
    @activities = @activities.where("ville like ?", "%#{params[:activity][:ville]}%")
  end
  if params[:activity][:categorie].present?
    @activities = @activities.where("categorie like ?", "%#{params[:activity][:categorie]}%")
  end
end
