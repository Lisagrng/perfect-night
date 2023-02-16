class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    search
    @activities = Activity.all
  end

  private

  def search
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @acivities = Activity.all
    end
  end
end
