class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :reviews
  has_one_attached :photo
end
