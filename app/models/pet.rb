class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :age, :category, :diet, presence: true
  has_many :bookings
  has_many :reviews, through: :booking
  has_one_attached :photo
end
