class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5], allow_nil: false }, presence: true
  validates_length_of :content, maximum: 200
  validates_length_of :content, minimum: 10
end
