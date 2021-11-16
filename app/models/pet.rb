class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :age, :category, :diet, presence: true
  has_many :reviews, through: :booking
end
