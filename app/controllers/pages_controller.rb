class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    search
    @activities = Activity.all
  end

  def index
    filtre
    @activities = Activity.all
  end

  private

  def filtre
    if params[:max_number_persons].present?
      @activities = @activities.where(max_number_persons: params[:max_number_persons])
    end
    if params[:location].present?
      @activities = @activities.where("location like ?", "%#{params[:location]}%")
    end
  end

  def search
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @acivities = Activity.all
    end
  end
end
