class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # enum opening_days: { dimanche: 0, lundi: 1, mardi: 2, mercredi: 3, jeudi: 4, vendredi: 5, samedi: 6 }

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
