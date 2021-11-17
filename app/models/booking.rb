class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :start_date, presence: true, date: { before: :end_date }
  validates :end_date, presence: true
  has_one :review
end
