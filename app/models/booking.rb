class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
end
