class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # enum opening_days: { dimanche: 0, lundi: 1, mardi: 2, mercredi: 3, jeudi: 4, vendredi: 5, samedi: 6 }

  CATEGORIES = ["Bar", "Restaurant", "Patinoire", "Bowling", "Piscine", "Escape Game", "Quizz", "Parc Loisirs", "Karaoké", "Club de Tir", "Laser Game", "Massage"]

  def self.display_days(day)
    case day
    when 0
      "Dimanche"
    when 1
      "Lundi"
    when 2
      "Mardi"
    when 3
      "Mercredi"
    when 4
      "Jeudi"
    when 5
      "Vendredi"
    when 6
      "Samedi"
    end
  end
end

def self.filter_by_params(params)
  activities = all
  if params[:Nombre_de_personne].present?
    activities = activities.where(max_persons: params[:Nombre_de_personne])
  end
  if params[:ville].present?
    activities = activities.where("city ILIKE ?", "%#{params[:ville]}%")
  end
  if params[:categorie].present?
    activities = activities.where("category ILIKE ?", "%#{params[:Categorie]}%")
  end

  activities
end
